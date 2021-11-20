

import SwiftUI
//웹뷰 쓰려면 불러와야함
import WebKit


//프로토콜 바꿔주고
struct WebView: UIViewRepresentable {
    
    //url 넘겨받을 수 있게
    var strURL:String
    
    
    
    // 구현용 함수 두개 불러오기
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        //인터랙션을 하려면 리퀘스트 필요
        guard let url = URL(string: strURL)
        else {return webView}
        
        let request = URLRequest(url: url)
        webView.load(request)
        
        return webView
        
    }
    



struct WebVC: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webvc") as! WebViewController
        return vc
    }

    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context:Context){
    }
}


//struct WebView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebView(strURL: "http://www.google.com")
//    }
//}
