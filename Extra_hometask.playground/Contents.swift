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
func getMinMax(for array: [Int]) {
    if let min: Int = array.min(), let max: Int = array.max() {
        let answer: (min: Int, max: Int) = (min, max)
        print(answer)
    }
}
getMinMax(for: arrayTask4)

func getMinMaxOther(for array: [Int]) {
    var min: Int
    var max: Int
    min = (array.sorted(by: <))[0]
    max = (array.sorted(by: >))[0]
    let answer: (min: Int, max: Int) = (min, max)
    print(answer)
}
getMinMaxOther(for: arrayTask4)



// 5. Реализуйте функцию, которая принимает массив, а возвращает массив в обратном порядке (не пользуясь стандартными средствами).
// Реализуйте функцию, которая также принимает последовательность и возвращает массив в обратном порядке (через стандартный метод).
// Чтобы избежать дублирования кода, сделайте так, чтобы 2я функция вызывала 1ю.





// 5. Реализуйте функцию doSports, которая принимает количество отжиманий, подтягиваний и приседаний, а возвращает кортеж с переданными параметрами.
// Заполните свои спортивные достижения, а также спортивные достижения Ваших друзей.
// Найдите чемпиона по каждому из видов единобоств :)

// А еще - реализуйте функцию, которая позволит поменять результаты самого слабого и самого сильного спортсмена.


func doSports(push: Int, pull: Int, squats: Int) -> (Int, Int, Int) {
    let sport = (push: push, pull: pull, squats: squats)
    return sport
}
var mySport = doSports(push: 11, pull: 13, squats: 13)
var secondSport = doSports(push: 12, pull: 12, squats: 11)
var thirdSport = doSports(push: 13, pull: 10, squats: 15)

func chempions () {
    var maxPush: [String: Int] = [:]
    maxPush.updateValue(mySport.0, forKey: "myResult")
    maxPush.updateValue(secondSport.0, forKey: "secondResult")
    maxPush.updateValue(thirdSport.0, forKey: "thirdResult")
    
    for (i, v) in maxPush {
        if v == maxPush.values.max() {
            print("Чемпион по отжиманиям - \(i)")
        }
    }
    
    var maxPull: [String: Int] = [:]
    maxPull.updateValue(mySport.1, forKey: "myResult")
    maxPull.updateValue(secondSport.1, forKey: "secondResult")
    maxPull.updateValue(thirdSport.1, forKey: "thirdResult")
    
    for (i, v) in maxPull {
        if v == maxPull.values.max() {
            print("Чемпион по подтягиваниям - \(i)")
        }
    }
    
    var maxSquats: [String: Int] = [:]
    maxSquats.updateValue(mySport.2, forKey: "myResult")
    maxSquats.updateValue(secondSport.2, forKey: "secondResult")
    maxSquats.updateValue(thirdSport.2, forKey: "thirdResult")
    
    for (i, v) in maxSquats {
        if v == maxSquats.values.max() {
            print("Чемпион по приседаниям - \(i)")
        }
    }
}
chempions()





















// MARK: - Strings
// 6. Реализуйте функцию, которая будет проверять, является ли слово палиндромом (примеры: «комок», «ротор»).
// Если в слове содержится четное количество букв - верните сообщение об ошибке.
// !!! Обратите внимание!
// Программа должна уметь обрабатывать слово, даже если в нём использованы символы разного регистра.


// 7. Реализуйте функцию, которая принимает строку, и может посчитать и вывести в консоль количество гласных, согласных, цифр, знаков препинания
// А также общее количество символов
// Для вывода используйет интерполяцию, для реализации бизнес-логики - циклы и оператор switch case.


// MARK: - Optionals
// 8. Создайте 10 строковых констант
// Среди этих констант могут быть как цифры, так и символы/буквы.
// Найдите целочисленную сумму всех этих констант (используйте приведение типов к Int)
// В Вашем решении используйте и optional binding, и forced unwrapping.


// MARK: - Enumerations
// 9. Создайте Enum дни недели, в котором должны храниться связанные значения с названиями для каждого дня.
// Выведите в консоль названия всех дней недели.


// 10. Реализуйте решение через функции, которые могут принимать день недели в качестве входного аргумента, а также проверят и сообщат ваш рабочий график.
// А именно:
// - Нужно ли вам идти на курсы или нет
// - Рабочий день или нет
// - Выходной день или нет

// Формат вывода выберите сами: можно использовать все, что мы прошли к этому моменту.


