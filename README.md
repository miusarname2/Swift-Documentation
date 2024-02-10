## English:

# README: Swift Documentatiom

This file contains a basic explanation of the Swift language, covering topics such as "Hello World" in Swift, variables and constants, data types, among others.

## Hello World

```swift
print("Hello Apple Developer!"); // Note: the ; is optional, but I include it for good practice and habit
```

## Variables and Constants

```swift
var myVariable = "This is a string"

var myNewVariable: Int = 12 // Similar to TypeScript

let myFirstConstant = 100

let mySecondConst: Double = 12

let myExpConst: Float = 4
```

## String Concatenation and Formatting

```swift
var width: Int = 150
let desc: String = "The width is"
var concat: String = desc + String(width)

concat = "The width is \(width)"
```

## Arrays and Dictionaries

```swift
var programmingLanguages: [String] = ["Js", "C#", "Swift", "Kotlin", "Pascal"]

let artistSongs: [String: String] = ["Juanes": "Una noche", "Miguel": "Ahora te puedes marchar"]
```

## Control Structures

```swift
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

if (score > 10 || score == 12) {
    print(":)")
} else {
    print(":(")
}
```

## Optional Variables

```swift
var optionalString: String? = ""

if let name = optionalName {
    let greeting = "Hello, \(name)"
}

var email: String? = nil
var num_telf: String = "6708900"
var newGreeting: String = "Hi \(email ?? num_telf), email or number user"
```

## Functions

```swift
func sayHello(name: String, Language: Int) -> String {
    if (Language == 1) {
        return "Hello \(name), how are you?"
    } else if (Language == 2) {
        return "\(name)、元気かい？"
    } else {
        return "Hola, \(name), ¿Qué tal estás?"
    }
}
```

## Classes and Inheritance

```swift
class Person {
    var age = 0
    
    func baseGreeting() -> String {
        return "Hello, there.."
    }
}

class Citizen: Person {
    var city: String
    var religion: String?

    init(city: String, age: Int, gender: String) {
        self.city = city
        super.init(age: age, gender: gender)
    }
    
    override func baseGreeting() -> String {
        return "Hi, How are you?"
    }
}
```

## Enumerations and Structures

```swift
enum Rank: Int {
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace: return "ace"
        case .jack: return "jack"
        case .queen: return "queen"
        case .king: return "king"
        default: return String(self.rawValue)
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
```

## Concurrency (async await) and Actors

```swift
func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    return userID == 501 ? "John Appleseed" : "Guest"
}

actor ServerConnection {
    var server: String = "primary"
    private var activeUsers: [Int] = []
    
    func connect() async -> Int {
        let userID = await fetchUserID(from: server)
        activeUsers.append(userID)
        return userID
    }
}
```

This README provides a basic introduction to the provided Swift code, covering essential concepts and main features of the Swift language.

## Japanese:

# README: 基本的なSwiftの説明

このファイルには、Swift言語の基本的な説明が含まれており、Swiftでの「Hello World」、変数と定数、データ型などのトピックがカバーされています。

## Hello World

```swift
print("こんにちは、Apple Developer！"); // 注：; はオプションですが、良い習慣として含めています
```

## 変数と定数

```swift
var myVariable = "これは文字列です"

var myNewVariable: Int = 12 // TypeScriptに似ています

let myFirstConstant = 100

let mySecondConst: Double = 12

let myExpConst: Float = 4
```

## 文字列の連結とフォーマット

```swift
var width: Int = 150
let desc: String = "幅は"
var concat: String = desc + String(width)

concat = "幅は\(width)"
```

## 配列と辞書

```swift
var programmingLanguages: [String] = ["Js", "C#", "Swift", "Kotlin", "Pascal"]

let artistSongs: [String: String] = ["Juanes": "Una noche", "Miguel": "Ahora te puedes marchar"]
```

## 制御構造

```swift
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

if (score > 10 || score == 12) {
    print(":)")
} else {
    print(":(")
}
```

## オプショナル変数

```swift
var optionalString: String? = ""

if let name = optionalName {
    let greeting = "こんにちは、\(name)"
}

var email: String? = nil
var num_telf: String = "6708900"
var newGreeting: String = "こんにちは、\(email ?? num_telf)、メールアドレスまたは番号ユーザー"
```

## 関数

```swift
func sayHello(name: String, Language: Int) -> String {
    if (Language == 1) {
        return "\(name)さん、こんにちは、お元気ですか？"
    } else if (Language == 2) {
        return "\(name)さん、元気かい？"
    } else {
        return "\(name)さん、こんにちは、お元気ですか？"
    }
}
```

## クラスと継承

```swift
class Person {
    var age = 0
    
    func baseGreeting() -> String {
        return "こんにちは、そちら

！"
    }
}

class Citizen: Person {
    var city: String
    var religion: String?

    init(city: String, age: Int, gender: String) {
        self.city = city
        super.init(age: age, gender: gender)
    }
    
    override func baseGreeting() -> String {
        return "こんにちは、お元気ですか？"
    }
}
```

## 列挙型と構造体

```swift
enum Rank: Int {
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace: return "エース"
        case .jack: return "ジャック"
        case .queen: return "クイーン"
        case .king: return "キング"
        default: return String(self.rawValue)
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "\(suit.simpleDescription())の\(rank.simpleDescription())"
    }
}
```

## 並行性（async await）とアクター

```swift
func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    return userID == 501 ? "John Appleseed" : "Guest"
}

actor ServerConnection {
    var server: String = "primary"
    private var activeUsers: [Int] = []
    
    func connect() async -> Int {
        let userID = await fetchUserID(from: server)
        activeUsers.append(userID)
        return userID
    }
}
```

このREADMEは、Swiftコードの基本的な紹介を提供し、Swift言語の基本的な概念と主要な機能をカバーしています。

## Chinese:

# README：基本的Swift解释

此文件包含Swift语言的基本解释，涵盖了Swift中的“Hello World”，变量和常量，数据类型等主题。

## Hello World

```swift
print("你好，Apple开发者！"); // 注意：;是可选的，但我习惯包括它
```

## 变量和常量

```swift
var myVariable = "这是一个字符串"

var myNewVariable: Int = 12 // 类似于TypeScript

let myFirstConstant = 100

let mySecondConst: Double = 12

let myExpConst: Float = 4
```

## 字符串连接和格式化

```swift
var width: Int = 150
let desc: String = "宽度是"
var concat: String = desc + String(width)

concat = "宽度是\(width)"
```

## 数组和字典

```swift
var programmingLanguages: [String] = ["Js", "C#", "Swift", "Kotlin", "Pascal"]

let artistSongs: [String: String] = ["Juanes": "Una noche", "Miguel": "Ahora te puedes marchar"]
```

## 控制结构

```swift
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

if (score > 10 || score == 12) {
    print(":)")
} else {
    print(":(")
}
```

## 可选变量

```swift
var optionalString: String? = ""

if let name = optionalName {
    let greeting = "你好，\(name)"
}

var email: String? = nil
var num_telf: String = "6708900"
var newGreeting: String = "嗨\(email ?? num_telf)，电子邮件或号码用户"
```

## 函数

```swift
func sayHello(name: String, Language: Int) -> String {
    if (Language == 1) {
        return "你好\(name)，你好吗？"
    } else if (Language == 2) {
        return "\(name)、元气吗？"
    } else {
        return "你好，\(name)，你好吗？"
    }
}
```

## 类和继承

```swift
class Person {
    var age = 0
    
    func baseGreeting() -> String {
        return "你好，那边.."
    }
}

class Citizen: Person {
    var city: String
    var religion: String?

    init(city: String, age: Int, gender: String) {
        self.city = city
        super.init(age: age, gender: gender)
    }
    
    override func baseGreeting() -> String {
        return "嗨，你好吗？"
    }
}
```

## 枚举和结构体

```swift
enum Rank: Int {
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace: return "ace"
        case .jack: return "jack"
        case .queen: return "queen"
        case .king: return "king"
        default: return String(self.rawValue)
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "\(suit.simpleDescription())的\(rank.simpleDescription())"
    }
}
```

## 并发（async await）和角色

```swift
func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    return userID == 501 ? "John Appleseed" : "Guest"
}

actor ServerConnection {
    var server: String = "primary"
    private var activeUsers: [Int] = []
    
    func connect() async -> Int {
        let userID = await fetchUserID(from: server)
        activeUsers.append(userID)
        return userID
    }
}
```

此README提供了对提供的Swift代码的基本介绍，涵盖了Swift语言的基本概念和主要特性。
