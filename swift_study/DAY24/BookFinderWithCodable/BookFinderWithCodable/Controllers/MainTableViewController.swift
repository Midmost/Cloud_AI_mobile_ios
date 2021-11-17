import UIKit
import Alamofire
import SDWebImage

class MainTableViewController: UITableViewController {

    let apiKey = "KakaoAK 344a0a56fae21f4c2d05699bd279a3f6"
    var books:[Book]?
//    원래는 var books:[[String:Any]]? 이런 딕셔너리 타입이었었는데 지금은 새로 만든 struct 를 타입으로 쓰려고 하는거니까
    
    var page = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        search() // 함수 호출
    }
    
    
    func search(){
        let strURL = "https://dapi.kakao.com/v3/search/book"
        
        let params: Parameters = ["query":"ios", "page":1]
        let headers:HTTPHeaders = ["Authorization":apiKey]
        
        let alamo = AF.request(strURL, method: .get, parameters: params, headers: headers).validate(statusCode: 200..<300)
        alamo.responseDecodable(of: SResult.self)
        {
            response in switch(response.result){
            case .success(let sresult):
                print(sresult.documents)
                self.books = sresult.documents
                
//                let lblTitle = cell.viewWithTag(1)
//                let book = self.books[indexPath.row]
//                lblTitle.text = book.title
//                lblAuthors.text = book.authors.joined(separator: ",")
            
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    

    
    
    
//    // 응답을 받아 처리함
//    func dataTaskHandler(data: Data?, response: URLResponse?, error: Error?) {
//        // Data: 이종 플랫폼 간에 데이터 전송 시 많이 쓰이는 타입
//        guard let rdata = data else { return }
//
//        // JSON Object로 변환
//      // 예외 처리 구현 필수
//      do {
//          if let dic = try JSONSerialization.jsonObject(with: rdata, options: []) as? [String:Any] {
//            // let mata = dic["meta"] as? [String:Any]
//          books = dic["documents"] as? [[String:Any]]
//
//          // TableView 새로고침 -> 메인 스레드가 처리
//          DispatchQueue.main.async { // 메인 스레드 작업 큐에 삽입(FIFO)
//                    // 핸들러가 언제 동작할지 모르기 때문에 어떤 tableView 인지 명확히 알려줘야 함 -> self(클래스의 멤버변수에 접근)
//            self.tableView.reloadData()
//          }
//        }
//      } catch {
//          print("실패")
//      }
//    }

}

