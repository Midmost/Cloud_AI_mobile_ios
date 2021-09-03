//: [Previous](@previous)

import Foundation
enum HTTPCode : Int {
    case OK = 200
    case Not_Modify = 304
    case Incorrect_page = 404
    case Server_error = 500
}
print(HTTPCode.OK)





enum myEnum : Int {                 //옼ㅋㅋㅋ신기쓰
    case one = 1
        case two, three, four
}
print(myEnum.four.rawValue)         //오....?
type(of : myEnum.four)








//: [Next](@next)
