import UIKit

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




func getMood (timeYear: TimeOfTheYear, weather: TimeOfTheYear.Weather)  {
    var otvet: String
    switch timeYear {
    case .summer:
        switch weather {
        case .cold: otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.cold.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
            case .rain: otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.rain.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
            case .snow: otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.snow.rawValue) = \(TimeOfTheYear.Weather.Mood.omg.rawValue)"
            case .sun: otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.sun.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
            case .wind: otvet = "\(TimeOfTheYear.summer.rawValue) + \(TimeOfTheYear.Weather.wind.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
    }
        print(otvet)
        
    case .autumn:
        switch weather {
        case .cold: otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.cold.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
            case .rain: otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.rain.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
            case .snow: otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.snow.rawValue) = \(TimeOfTheYear.Weather.Mood.omg.rawValue)"
            case .sun: otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.sun.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
            case .wind: otvet = "\(TimeOfTheYear.autumn.rawValue) + \(TimeOfTheYear.Weather.wind.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
    }
        print(otvet)
    case .spring:
        switch weather {
        case .cold: otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.cold.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
            case .rain: otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.rain.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
            case .snow: otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.snow.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
            case .sun: otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.sun.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
            case .wind: otvet = "\(TimeOfTheYear.spring.rawValue) + \(TimeOfTheYear.Weather.wind.rawValue) = \(TimeOfTheYear.Weather.Mood.soso.rawValue)"
    }
        print(otvet)
    case .winter:
        switch weather {
        case .cold: otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.cold.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
            case .rain: otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.rain.rawValue) = \(TimeOfTheYear.Weather.Mood.omg.rawValue)"
            case .snow: otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.snow.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
            case .sun: otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.sun.rawValue) = \(TimeOfTheYear.Weather.Mood.happy.rawValue)"
            case .wind: otvet = "\(TimeOfTheYear.winter.rawValue) + \(TimeOfTheYear.Weather.wind.rawValue) = \(TimeOfTheYear.Weather.Mood.cry.rawValue)"
    }
        print(otvet)
    }
}
getMood(timeYear: .autumn, weather: .rain)

// MARK: - Operators
// 1. Квадратное уравнение.
// Реализуйте функцию executeEquation(), которая решает квадратное уравнение.
// Каждое равенство имеет 2 точных решения.
// Вам можно вернуть эти решения как упорядоченный массив по возрастанию или кортеж.
// Квадратное уравнение -> AX^2 + BX + C = 0


// MARK: - Loops
// 2. Реализуйте 2 фукнции Вдох и Выдох, которые выводят в консоль тектовое описание, своего действия.
// Реализуйте функцию, которая позволит человеку дышать на протяжении всего времени жизни
// Время жизни передается в качестве аргумента типа Int.


// MARK: - Collections
// 3. Простая сумма массива.
// Реализуйте функцию, которая вычислит сумму всех элементов массива и вернет ее в виде целого числа.
// В качестве аргумента на вход функции передается строка, состоящая из N целых чисел, разделенных пробелом:
// "1 2 3 4 5 6 7 8 9 0"


// 4. Больше/Меньше
// Реализуйте 2 функции, которая вернет максимальный и минимальный элемент массива в виде кортежа.
// 1я - должна искать элементы стандартными средствами.
// 2я - сами напишите решение для поиска максимального и минимального элемента


// 5. Реализуйте функцию, которая принимает массив, а возвращает массив в обратном порядке (не пользуясь стандартными средствами).
// Реализуйте функцию, которая также принимает последовательность и возвращает массив в обратном порядке (через стандартный метод).
// Чтобы избежать дублирования кода, сделайте так, чтобы 2я функция вызывала 1ю.


// 5. Реализуйте функцию doSports, которая принимает количество отжиманий, подтягиваний и приседаний, а возвращает кортеж с переданными параметрами.
// Заполните свои спортивные достижения, а также спортивные достижения Ваших друзей.
// Найдите чемпиона по каждому из видов единобоств :)

// А еще - реализуйте функцию, которая позволит поменять результаты самого слабого и самого сильного спортсмена.


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


