import UIKit

////////////////for in

////방탄소년단을 만들고 한명씩 프린트
//let bts = ["진","RM","정국"]
//
//for name in bts
//{
//    print("he is \(name)")
//}
//
//
//
////방탄소년단 각 역할과 이름 매칭되게 하여 한 명씩 프린트
//var bts_duty = ["진":"비주얼", "RM":"리더", "정국":"댄서"]
//
//for (name, duty) in bts_duty
//{
//
//    print("he is \(name),and he's duty is \(duty)")
//}
////  ====>>> It's wierd...why this print randomly??      -> set, dictionary  has nothing to do with sequence, order
//
//
// /////////////// while
//var age = 0
//
//while age < 5
//{
//    print ("\(age)살입니다.")
//    age += 1
//}

//// repear while
//var n = 100
//repeat {
//    n = n * 2
//    print("\(n)")                //repeat 은 한 번은 무조건 실행한 뒤 짆애
//}
//while n < 100
//
//// switch again
//var browser1 = ""
//switch browser1 {
//    case "IE" : browser1 = "익스플로러"
//    default : print("default")
//}
//
//var age = 20;
//switch age {
//case 1...3 : print("young")
//case 4..<20: print("child")
//default : print("default")
//}
//
///////////////////////////////////////
//
//for row in 1...5 {
//    print ("2 x \(row)")   // 여기서는 루프 상수, row를 지정해줘야 함
//}
//
//for _ in 1...5 {
//    print ("hello")        // 여기서는 횟수만 중요하기 때문에 루프 상수를 생략해줌.    ==>> _ 언더바는 생략의 의미 *
//}

////////////////////////////////////////////////////////////////////////////////////////
// //while을 이용해서 나이를 먹는 함수 만들기
//var age_while = 0
//var num = 0
//
//while age_while < 5
//{
//    while num < 2
//    {
//        print("\(age_while) 살입니다.")            //1
//        num += 1                                //2
//    }
//
//    num = 0                                     //3     =>> 질문하기.   ==>> 초기화를 안 해주면 2가 된 뒤 끝나버림 다시 들어가야함
//    age_while += 1                              //4
//}

print ("=====================")

//var first = 0
//var sec = 0
//var third = 0
//
//while first < 4
//{
//    while sec < 3
//    {
//        while third < 2
//        {
//            print(first)
//            third += 1
//        }
//        third = 0
//        sec += 1
//    }
//    sec = 0
//    first += 1
//
//}



//print ("=====================")
//
//for row in 0...5 {
//    if row == 2 {
//        break
//    }
//    print("\(row) was excuted!")
//}

//for row in 0...5 {
//    if row == 2 {
//        continue
//    }
//    print (row)
//}


/////////////////////////////////////////////안돼
//for row in 0...10
//{
//    if (3 && 5 && 7 && 9) == row
//    {
//        continue
//    }
//    print(row)
//}

//
//for row in 0...10 {
//    if (row%2 == 0){
//    continue
//    }
//    print(row)
//}

//print ("=====================")

//var bts = ["진", "슈가", "제이홉", "랩몬", "지민", "뷔"]
//let member = bts[0]
//print("첫번째 멤버는 \(member)입니다")
//bts[3] = "RM"
//
//
//var bts3:Array<String> = ["진", "슈가", "제이홉", "랩몬", "지민", "뷔"]   //  =>> 이게 정식 문법 그래서 우리가 쓰는 거가 추론이라고 하는거임 이걸 생략해서
//
//var bts4:[String] = ["진", "슈가", "제이홉", "랩몬", "지민", "뷔"]
//var bts5 = Array<String>()
//
//var bts9 = Array(repeatElement(0, count: 3))
//print ("=====================")


// 아래 둘 다 같음
//var bts10 = Array(repeatElement("hi", count: 3))
//print(bts10)
//var bts11 = [String](repeatElement("hi", count: 3))
//print(bts11)



//bts11.append("heejin")
//bts11.insert("son", at: 2)
//print(bts11)

/////////////////////////



//var bts = Array<String>()
//bts = [ "진", "슈가", "제이홉", "RM", "지민"]
//
//
//for index in 0...bts.count-1
//{
//    print("\(index+1)번째 멤버는 \(bts[index])")
//}
//
//
//var set1: Set<String> = Set<String>()
//var set2: Set<String> = []
//var set3: Set<String> = [ "진", "슈가", "제이홉", "RM", "지민"] //Set에서는 형지정을 생략하면 Array로 인식된다.
//print(set3)
//var nums = [1,2,3]
//print(nums)
//for name in set3 {
//      print(name)
//}

var bts:Array<String> = [ "진", "슈가", "제이홉", "RM", "지민"]
var nums:Array<Int> = [1,2,3,4]
//bts.append(<#T##newElement: String##String#>)
//nums.append(<#T##newElement: Int##Int#>)

bts.append(contentsOf: ["나도", "bts야"])








