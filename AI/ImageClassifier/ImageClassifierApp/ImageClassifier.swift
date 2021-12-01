//
//  ImageClassifier.swift
//  ImageClassifier
//
//  Created by Mijeong 🌿 on 2021/11/07.
//

import UIKit
import Vision

class ImagePredictor {
    struct Prediction {
        let result: String
    }
    
    private static let imageClassifier = createImageClassifier()
    private var predictionHandlers = [VNRequest: ([Prediction]?) -> Void]()

    // 1. 모델 생성
    static func createImageClassifier() -> VNCoreMLModel {
        let defaultConfig = MLModelConfiguration()

        // Custom CoreML 모델 사용
        let imageClassifierWrapper = try? keras_model5(configuration: defaultConfig)

        guard let imageClassifier = imageClassifierWrapper else {
            fatalError("App failed to create an image classifier model instance.")
        }

        // Get the underlying model instance.
        let imageClassifierModel = imageClassifier.model

        // Create a Vision instance using the image classifier's model instance.
        guard let imageClassifierVisionModel = try? VNCoreMLModel(for: imageClassifierModel) else {
            fatalError("App failed to create a `VNCoreMLModel` instance.")
        }
        return imageClassifierVisionModel
    }

    
    // 2. Create Request
    private func createImageClassificationRequest() -> VNImageBasedRequest {
        // Create an image classification request with an image classifier model.
        let imageClassificationRequest = VNCoreMLRequest(model: ImagePredictor.imageClassifier,
                                                         completionHandler: visionRequestHandler)
        imageClassificationRequest.imageCropAndScaleOption = .centerCrop
        return imageClassificationRequest
    }

  
    // 3. Make Prediction
    func makePredictions(for photo: UIImage, completionHandler: @escaping ([Prediction]?) -> Void) throws {

        guard let photoImage = photo.cgImage else {
            fatalError("Photo doesn't have underlying CGImage.")
        }

        let imageClassificationRequest = createImageClassificationRequest()
        predictionHandlers[imageClassificationRequest] = completionHandler

        let handler = VNImageRequestHandler(cgImage: photoImage, orientation: .up)
        let requests: [VNRequest] = [imageClassificationRequest]

        // 예측 시작
        try handler.perform(requests)
    }

    // 4. Handler
    private func visionRequestHandler(_ request: VNRequest, error: Error?) {
        // Remove the caller's handler from the dictionary and keep a reference to it.
        guard let predictionHandler = predictionHandlers.removeValue(forKey: request) else {
            fatalError("Every request must have a prediction handler.")
        }

        // Start with a `nil` value in case there's a problem.
        var predictions: [Prediction]? = nil

        // Call the client's completion handler after the method returns.
        defer {
            // Send the predictions back to the client.
            predictionHandler(predictions)
        }

        // Check for an error first.
        if let error = error {
            print("Vision image classification error...\n\n\(error.localizedDescription)")
            return
        }

        // Check that the results aren't `nil`.
        if request.results == nil {
            print("Vision request had no results.")
            return
        }

        // Cast the request's results as an `VNClassificationObservation` array.
        guard let observations = request.results as? [VNCoreMLFeatureValueObservation] else {
            print("VNRequest produced the wrong result type: \(type(of: request.results)).")
            return
        }
        // Create a prediction array from the observations.
        predictions = observations.map { observation in
            guard let number = observation.featureValue.multiArrayValue?[0] as? Int else {
                fatalError()
            }
            return Prediction(result: returnLabelString(value: number))
        }
    }
    func returnLabelString(value: Int) -> String {
        if value == 1 {
            return "강아지 입니다🐶"
        } else {
            return "고양이 입니다🐱"
        }
    }
}
