//
//  ViewController.swift
//  AZBlobTest
//
//  Created by jo on 2021/11/29.
//

import UIKit
import AZSClient

class ViewController: UIViewController {
    
    // azure portal 들어가서 리소스 그룹 만들고 리소스 만들기 - 스토리지 계정 만들기
    // 만든 다음 액세스 키 복붙
    let connectionString = "DefaultEndpointsProtocol=https;AccountName=blobstorageheejin3;AccountKey=HwT/pCtP6g0q9t0bzHNcByh7NTA62dRombI2Npsy/RsWB6Xb5xodounUS0/lyUvQkGm7AkvXvs/6rwPL003pEw==;EndpointSuffix=core.windows.net"
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageVIew2: UIImageView!
    
    var blobContainer:AZSCloudBlobContainer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView1.image = UIImage(named: "bts1")
        
        //중복된 코드 없애기 위해 전역변수로 위에 만들어놓고 각 다운로드함수와 업로드함수에서 불러준다.
        
        guard let account = try? AZSCloudStorageAccount(fromConnectionString: connectionString)else {return}
        let blobClient = account.getBlobClient()
        blobContainer = blobClient.containerReference(fromName: "nambu-images")
    }
    
    @IBAction func deleteImage(_ sender: Any) {
        guard let blobContainer = blobContainer else{return}
        let blockblob = blobContainer.blockBlobReference(fromName: "bts1.jpg") //우리가 삭제하길 원하는 블랍이미지 이름
        blockblob.delete { Error in
            if let error = Error {
                print(error.localizedDescription)
                return
            } else {
                print("success")
            }
        }
    }
    
    
    @IBAction func downloadImage(_ sender: Any) {
        guard let blobContainer = blobContainer else{return}
        
        let blockblob = blobContainer.blockBlobReference(fromName: "bts1.jpg")
        blockblob.downloadToData { error, data in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            if let data = data {
                let image = UIImage(data: data)
                //global queue이기 때문에 메인으로 가져오자
                DispatchQueue.main.async {
                    self.imageVIew2.image = image
                }
            }
        }
    }
    
    @IBAction func uploadImage(_ sender: Any) {
        
        guard let blobContainer = blobContainer else{return}
        //account로 클라이언트 만들고 클라이언트로 컨테이너 만들고 컨테이너로 블랍 만들고 데이터를 블랍에 넣어준다.

        blobContainer.createContainerIfNotExists { error, exist in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            let blockblob = blobContainer.blockBlobReference(fromName: "bts1.jpg")
            
            if let data = UIImage(named: "bts1")?.pngData(){
                blockblob.upload(from: data) { error in
                    if let error = error{
                        print(error.localizedDescription)
                    }
                }
            }
        }
    }

}

