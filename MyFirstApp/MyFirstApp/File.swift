// 클래스 정의
class Person {
    // 속성
    var name: String
    var age: Int
    
    // 초기화 메서드
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // 메서드
    func sayHello() {
        print("안녕하세요, 저는 \(name)입니다.")
    }
}

// 객체 생성
let person = Person(name: "John", age: 30)

// 메서드 호출
person.sayHello()

