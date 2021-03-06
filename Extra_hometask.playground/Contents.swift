import UIKit
import Darwin.C.math

// Из книг будет полезно повторить темы:
// the Basics
// Basic Operators
// Strings and Characters
// Collections
// Control Flow
// Functions
// Enumerations



// Программа по выводу настроения у пользователя в зависимости от погоды

enum TimeOfTheYear: String {
    case summer = "Лето"
    case autumn = "Осень"
    case winter = "Зима"
    case spring = "Весна"
    
    enum Weather: String, CaseIterable {
        case sun = "Солнце"
        case rain = "Дождь"
        case snow = "Снег"
        case cold = "Холод"
        case wind = "Ветер"
        
        enum Mood: String{
            case happy = "Отлично!"
            case cry = "Ужасно("
            case soso = "Так себе("
            case omg = "Это ппц, товарищи!"
        }
    }
}


func getMood (timeYear: TimeOfTheYear, weather: TimeOfTheYear.Weather) -> String  {
    var otvet: String
    switch timeYear {
    case .summer:
        switch weather {
        case .cold:
            otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.cold.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
        case .rain:
            otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.rain.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
        case .snow:
            otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.snow.rawValue) = \(TimeOfTheYear.Weather.Mood.omg.rawValue)"
        case .sun:
            otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.sun.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
        case .wind:
            otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.wind.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
        }
    case .autumn:
        switch weather {
        case .cold:
            otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.cold.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
        case .rain:
            otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.rain.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
        case .snow:
            otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.snow.rawValue) = \(TimeOfTheYear.Weather.Mood.omg.rawValue)"
        case .sun:
            otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.sun.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
        case .wind:
            otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.wind.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
        }
    case .spring:
        switch weather {
        case .cold:
            otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.cold.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
        case .rain:
            otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.rain.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
        case .snow:
            otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.snow.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
        case .sun:
            otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.sun.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
        case .wind:
            otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.wind.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
        }
    case .winter:
        switch weather {
        case .cold:
            otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.cold.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
        case .rain:
            otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.rain.rawValue) = \(TimeOfTheYear.Weather.Mood.omg.rawValue)"
        case .snow:
            otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.snow.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
        case .sun:
            otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.sun.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
        case .wind:
            otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.wind.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
        }
    }
    return otvet
}
print(getMood(timeYear: .autumn, weather: .rain))

// MARK: - Operators
// 1. Квадратное уравнение.
// Реализуйте функцию executeEquation(), которая решает квадратное уравнение.
// Каждое равенство имеет 2 точных решения.
// Вам можно вернуть эти решения как упорядоченный массив по возрастанию или кортеж.
// Квадратное уравнение -> AX^2 + BX + C = 0


func executeEquation(for a: Double, b: Double, c: Double) -> [Double] {
    var arrayAnswer: [Double] = []
    let d = pow(Double(b), 2) - (4 * a * c)
    if d > 0 {
        arrayAnswer.append((-b + sqrt(d)) / (2 * a))
        arrayAnswer.append((-b - sqrt(d)) / (2 * a))
    } else if d == 0 {
        arrayAnswer.append((-b + sqrt(d)) / (2 * a))
    }
    return arrayAnswer.sorted()
}

executeEquation(for: 1, b: -2, c: -3)



// MARK: - Loops
// 2. Реализуйте 2 фукнции Вдох и Выдох, которые выводят в консоль тектовое описание, своего действия.
// Реализуйте функцию, которая позволит человеку дышать на протяжении всего времени жизни
// Время жизни передается в качестве аргумента типа Int.

func inhale() {
    print("Вдох")
}
func exhalation() {
    print("Выдох")
}
// Предположим что человек дышит 5 раз в год

func lifeOfMan(for years: Int) {
    var i: Float = 0
    while Int(i) < years {
        inhale()
        exhalation()
        i += 0.2
    }
}
lifeOfMan(for: 2)



// MARK: - Collections
// 3. Простая сумма массива.
// Реализуйте функцию, которая вычислит сумму всех элементов массива и вернет ее в виде целого числа.
// В качестве аргумента на вход функции передается строка, состоящая из N целых чисел, разделенных пробелом:
// "1 2 3 4 5 6 7 8 9 0"




var arrayString: String = "1 2 3 4 5 6 7 8 9 0"



func summOfArray(for i: String) -> Int {
    var array: [Int] = []
    for (_, num) in i.enumerated(){
        if var _: Int = Int(String(num)) {
            array.append(Int(String(num))!)
        }
    }
    let summ = array.reduce(0, +)
    return summ
}

print(summOfArray(for: arrayString))




// 4. Больше/Меньше
// Реализуйте 2 функции, которая вернет максимальный и минимальный элемент массива в виде кортежа.
// 1я - должна искать элементы стандартными средствами.
// 2я - сами напишите решение для поиска максимального и минимального элемента

let arrayTask4: [Int] = Array(1...15)

func getMinMax(for array: [Int]) -> (min: Int, max: Int) {
    var answer: (min: Int, max: Int) = (min: 0, max: 0)
    if let min: Int = array.min(), let max: Int = array.max() {
        answer = (min: min, max: max)
    }
    return answer
}
getMinMax(for: arrayTask4)

func getMinMaxOther(for array: [Int]) -> (min: Int, max: Int) {
    var min: Int
    var max: Int
    min = (array.sorted(by: <))[0]
    max = (array.sorted(by: >))[0]
    let answer: (min: Int, max: Int) = (min, max)
    return answer
}
getMinMaxOther(for: arrayTask4)



// 5. Реализуйте функцию, которая принимает массив, а возвращает массив в обратном порядке (не пользуясь стандартными средствами).
// Реализуйте функцию, которая также принимает последовательность и возвращает массив в обратном порядке (через стандартный метод).
// Чтобы избежать дублирования кода, сделайте так, чтобы 2я функция вызывала 1ю.

let arrayForRevers: [Int] = Array(1...15)
//func reversArray(array: [Int]) {
//    var reversArray: [Int] = []
//    for item in stride(from: array.count - 1, through: 0, by: -1) {
//        reversArray.append(array[item])
//    }
//    print(reversArray)
//}
//reversArray(array: arrayForRevers)

func reversArrayStandart(array: [Int]) -> [Int] {
    let arrayRevers: [Int] = array.reversed()
    return arrayRevers
}
reversArrayStandart(array: arrayForRevers)

func reversArray(array: ClosedRange<Int>) -> [Int] {
    var arrayForRevers: [Int] = []
    for i in array {
        arrayForRevers.append(i)
    }
    return reversArrayStandart(array: arrayForRevers)
}
reversArray(array: (1...10))



// 5. Реализуйте функцию doSports, которая принимает количество отжиманий, подтягиваний и приседаний, а возвращает кортеж с переданными параметрами.
// Заполните свои спортивные достижения, а также спортивные достижения Ваших друзей.
// Найдите чемпиона по каждому из видов единобоств :)

// А еще - реализуйте функцию, которая позволит поменять результаты самого слабого и самого сильного спортсмена.


func doSports(push: Int, pull: Int, squats: Int) -> (push: Int, pull: Int, squats: Int) {
    let sport = (push: push, pull: pull, squats: squats)
    return sport
}

var ivan = doSports(push: 11, pull: 13, squats: 13)
var artem = doSports(push: 12, pull: 12, squats: 16)
var alex = doSports(push: 15, pull: 10, squats: 15)


func chempions(ivan: (push: Int, pull: Int, squats: Int),
               artem: (push: Int, pull: Int, squats: Int),
               alex: (push: Int, pull: Int, squats: Int)) {
    
    var maxPush: [String: Int] = [:]
    maxPush.updateValue(ivan.0, forKey: "ivan")
    maxPush.updateValue(artem.0, forKey: "artem")
    maxPush.updateValue(alex.0, forKey: "alex")
    
    for (i, v) in maxPush {
        if v == maxPush.values.max() {
            print("Чемпион по отжиманиям - \(i)")
        }
    }
    
    var maxPull: [String: Int] = [:]
    maxPull.updateValue(ivan.1, forKey: "ivan")
    maxPull.updateValue(artem.1, forKey: "artem")
    maxPull.updateValue(alex.1, forKey: "alex")
    
    for (i, v) in maxPull {
        if v == maxPull.values.max() {
            print("Чемпион по подтягиваниям - \(i)")
        }
    }
    
    var maxSquats: [String: Int] = [:]
    maxSquats.updateValue(ivan.2, forKey: "ivan")
    maxSquats.updateValue(artem.2, forKey: "artem")
    maxSquats.updateValue(alex.2, forKey: "alex")
    
    for (i, v) in maxSquats {
        if v == maxSquats.values.max() {
            print("Чемпион по приседаниям - \(i)")
        }
    }
}
chempions(ivan: ivan, artem: artem, alex: alex)




func swapValuePush() {
    var min: Int = 0
    var max: Int = 0
    if let i: Int = [ivan.push, artem.push, alex.push].min() {
        min = i
    }
    if let i: Int = [ivan.push, artem.push, alex.push].max() {
        max = i
    }
    if ivan.push == min && artem.push == max || ivan.push == max && artem.push == min {
        swap(&ivan.push, &artem.push)
    } else if ivan.push == min && alex.push == max || ivan.push == max && alex.push == min {
        swap(&ivan.push, &alex.push)
    } else if artem.push == min && alex.push == max || artem.push == max && alex.push == min {
        swap(&artem.push, &alex.push)
    }
    print("После изменения значений количество отжиманий - \((ivan.push, artem.push, alex.push))")
}
swapValuePush()

func swapValuePull() {
    var min: Int = 0
    var max: Int = 0
    if let i: Int = [ivan.pull, artem.pull, alex.pull].min() {
        min = i
    }
    if let i: Int = [ivan.pull, artem.pull, alex.pull].max() {
        max = i
    }
    if ivan.pull == min && artem.pull == max || ivan.pull == max && artem.pull == min {
        swap(&ivan.pull, &artem.pull)
    } else if ivan.pull == min && alex.pull == max || ivan.pull == max && alex.pull == min {
        swap(&ivan.pull, &alex.pull)
    } else if artem.pull == min && alex.pull == max || artem.pull == max && alex.pull == min {
        swap(&artem.pull, &alex.pull)
    }
    print("После изменения значений количество подтягиваний - \((ivan.pull, artem.pull, alex.pull))")
}
swapValuePull()

func swapValueSquats() {
    var min: Int = 0
    var max: Int = 0
    if let i: Int = [ivan.squats, artem.squats, alex.squats].min() {
        min = i
    }
    if let i: Int = [ivan.squats, artem.squats, alex.squats].max() {
        max = i
    }
    if ivan.squats == min && artem.squats == max || ivan.squats == max && artem.squats == min {
        swap(&ivan.squats, &artem.squats)
    } else if ivan.squats == min && alex.squats == max || ivan.squats == max && alex.squats == min {
        swap(&ivan.squats, &alex.squats)
    } else if artem.squats == min && alex.squats == max || artem.squats == max && alex.squats == min {
        swap(&artem.squats, &alex.squats)
    }
    print("После изменения значений количество приседаний - \((ivan.squats, artem.squats, alex.squats))")
}
swapValuePull()


// MARK: - Strings
// 6. Реализуйте функцию, которая будет проверять, является ли слово палиндромом (примеры: «комок», «ротор»).
// Если в слове содержится четное количество букв - верните сообщение об ошибке.
// !!! Обратите внимание!
// Программа должна уметь обрабатывать слово, даже если в нём использованы символы разного регистра.

func palindrom(item: String) {
    if Int(item.count) % 2 == 0 {
        print("Ошибка, выберите другое слово")
    } else if item.lowercased() == String(item.lowercased().reversed()) {
        print("Это слово - палиндром")
    } else {
        print("Это слово не палиндром")
    }
}
palindrom(item: "Ротор")


// 7. Реализуйте функцию, которая принимает строку, и может посчитать и вывести в консоль количество гласных, согласных, цифр, знаков препинания
// А также общее количество символов
// Для вывода используйет интерполяцию, для реализации бизнес-логики - циклы и оператор switch case.

func countOfSimbols(rusWord: String) {
    var arrayAChar: [Character] = []
    var arrayBChar: [Character] = []
    var arrayPunct: [Character] = []
    var arrayInt: [Character] = []
    for i in rusWord.lowercased() {
        switch i {
        case "я", "и", "ю", "ы", "а", "о", "э", "е", "ё", "у":
            arrayAChar.append(i)
        case ",", ".", "!", ":", ";", "?", " ":
            arrayPunct.append(i)
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
            arrayInt.append(i)
        default:
            arrayBChar.append(i)
            
        }
    }
    print("В этом предложении \(arrayAChar.count) гласных букв, \(arrayBChar.count) согласных букв, \(arrayPunct.count) знаков препинания/пробелов  и \(arrayInt.count) цифр(ы). Всего в предложении \(rusWord.count) символов" )
}
countOfSimbols(rusWord: "Меня зовут Артур, мне 29 лет!")





// MARK: - Optionals
// 8. Создайте 10 строковых констант
// Среди этих констант могут быть как цифры, так и символы/буквы.
// Найдите целочисленную сумму всех этих констант (используйте приведение типов к Int)
// В Вашем решении используйте и optional binding, и forced unwrapping.

let one: String = "one"
let two: String = "two"
let three: String = "3"
let four: String = "4"
let five: String = "five"
let six: String = "six"
let seven: String = "7"
let eight: String = "8"
let nine: String = "nine"
let ten: String = "ten"

var summOptional: Int = 0

var arrayOptional: [String] = []
arrayOptional.append(one)
arrayOptional.append(two)
arrayOptional.append(three)
arrayOptional.append(four)
arrayOptional.append(five)
arrayOptional.append(six)
arrayOptional.append(seven)
arrayOptional.append(eight)
arrayOptional.append(nine)
arrayOptional.append(ten)

for i in arrayOptional {
    if let _: Int = Int(i) {
        summOptional += Int(i)!
    }
}
print(summOptional)



// MARK: - Enumerations
// 9. Создайте Enum дни недели, в котором должны храниться связанные значения с названиями для каждого дня.
// Выведите в консоль названия всех дней недели.

enum Week: String, CaseIterable {
    case monday = "Понедельник"
    case tuesday = "Вторник"
    case wednesday = "Среда"
    case thursday = "Четверг"
    case friday = "Пятница"
    case saturday = "Суббота"
    case sunday = "Воскресение"
}

Week.allCases.forEach { print($0.rawValue) }


// 10. Реализуйте решение через функции, которые могут принимать день недели в качестве входного аргумента, а также проверят и сообщат ваш рабочий график.
// А именно:
// - Нужно ли вам идти на курсы или нет
// - Рабочий день или нет
// - Выходной день или нет

// Формат вывода выберите сами: можно использовать все, что мы прошли к этому моменту.

func myWeek(for day: Week) -> String{
    var answer: String
    switch day {
    case .monday:
        answer = "Сегодня рабочий день а вечером курсы."
    case .tuesday:
        answer = "Сегодня рабочий день."
    case .wednesday:
        answer = "Сегодня рабоий день."
    case .thursday:
        answer = "Сегодня рабочий день а вечером курсы."
    case .friday:
        answer = "Сегодня рабоий день."
    case .saturday:
        answer = "Сегодня выходной, можно гулять!"
    case .sunday:
        answer = "Сегодня выходной, можно гулять!"
    }
    return answer
}

var today: Week = .monday
print(myWeek(for: today))
