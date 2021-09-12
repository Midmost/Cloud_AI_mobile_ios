import UIKit


//배열안에 튜플!!!
//대체 어떤 경우에 배열안에 튜플을 쓸 일이 생기지...? ㅋㅋㅋㅋㅋㅋㅋ
//파이썬이었을 때는 벡터나 행렬계산할 때 쓰긴 했었는데
//swift의 array를 파이썬의 list로 보면 되는 걸까나~
var myArray : Array<(Int,Int)> = [(1, 1),(1, 2),(1, 3)]
var matrix3x3 : Array<(Int,Int,Int)> = [(10,21,86),(46,90,17),(14,50,20)]
var myArray2 : Array<(Int,Int)> = [(1,3),(4,2)]

//더하기를 하니까 그냥 콘캣이 되넹 튜플이라 그런가봐
print(myArray2 + myArray)

//matrix3x3의 두번째 아규먼트에서도 마지막 원소를 뽑으려면?
matrix3x3.index(after: 6) //얘는 뭐하는 애지 걍 무조건 after 숫자 다음 게 나오는건가;;
var result = matrix3x3[1].2

//result랑 다른 튜플안의 원소를 더할 수는 없을까? 튜플이니까?
result + matrix3x3[2].1
//엥;;; 되네;;;왜 되는거야;;; 튜플이라고 해도 원소 각각은 계산이 되는구나 파이썬처럼

//만약 result가 let이여도 될까??
let result2 = matrix3x3[2].0
print(result + result2)
//잘 되넴... let이 고정이라고 해서 아예 못 쓰는게 아니라 값을 대체하는것만 안되는구나
//result2 = result2 + result
//그러네 다시 넣는거만 안되는거였어.........

//다시 배열 기본형
var HeejinArray : Array<String> = []
//그럼 튜플 안에 배열 넣으려면?
//let HeejinTuple : Tuple<Int> = () 이게...이게 기본형이 아닌가봐...

//많이 쓰인다고 했던 건 추론형이긴 했어
var HeejinArray2 : [String] = []      // 앞으로 이 형태로만 쓰자!!
var HeejinTuple : (String,String) = ("a","b") //tuple은 왜 배열처럼 공란이 안되지

//이번엔 어레이 안에 딕셔너리 넣어보자
var DicInArr : [[String:String]] = [[:],[:],[:]] //딕셔너리도 공란가능하넴
//딕셔너리 안에 어레이 넣는건?
var ArrInDic : [[String]:[String]] = [["I","don't"]:["You", "Did"]]
//아니네 어레이 빼고 공란이 안 가능...

///////////////////////////
//이번엔 그냥 딕셔너리 만들어볼까
var capital = ["KR":"Seoul","KR2":"Busan"]
//key가 중복되면 안되네...


//딕셔너리 원소 추가는 이름이 이상함 updateValue임 insert일 줄 알았는데...
var newDIC = capital.updateValue("Guro", forKey: "KR")
//print(newDIC)   //왜 서울이 나오지 Guro로 바뀌어서 나올 줄 알았는데???

var capital5 = [String:String]()
capital5 = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
print(capital5["KR"])
capital5["EN"]
capital5["FR"]
capital5["KR"] = "Sejong"
capital5["JP"] = "Tokyo"
print(capital5)
capital5["JP"] = nil
print(capital5["FR"])



