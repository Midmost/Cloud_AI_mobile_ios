

var idol : String? = "BTS"

if let val = idol {
    print("변환된 값은 \(val)")
}

func doSomething ()->Int?{

}
//https://www.hackingwithswift.com/quick-start/understanding-swift/when-to-use-guard-let-rather-than-if-let

guard let val = idol else {return}  // 이것도 완전 정해진 문법 idol이 닐이라면 빠져나온다? val이란 값이 무조건 있어야 한다면 guard let을 써줘야함
print("변환된 값은 \(val)")
