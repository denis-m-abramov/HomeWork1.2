import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSfMP0S1YlzHOLzFpuHuI8awmoBDZ1kpJ-4Q0PUtrgQMXNOoGQ/viewform)
//: ## Home Work 2

/*:
 ### Задание 1
 1.1 Объявите два свойства с типом `Float` и присвойте каждому число с дробной частью — например, 3.14 или 42.0
 
 1.2 Объявите еще одно свойство с типом `Double` и присвойте ей сумму двух переменных типа `Float`
 
 1.3 Выведите результат при помощи `print()`
 */
//The task 1.1

let property1: Float = 3.14,
    property2: Float = 42.0
//Хотелось бы избавиться от 2-х повторений типа Float

//The task 1.2

let property3 = Double(property1 + property2)

//The task 1.3

print(property3)
/*:
 ### Задание 2
 2.1 Создайте переменную `numberOne` и присвойте ей любое целочисленное значение
 
 2.2 Создайте ещё одну целочисленную переменную `numberTwo` и присвойте ей любое значение меньше `numberOne`
 
 2.3 Присвойте новой целочисленной константе `result` результат деления `numberOne` на `numberTwo`
 
 2.4 Присвойте новой целочисленной константе `remainder` остаток от деления `numberOne` на `numberTwo`
 
 2.5 Выведите на консоль сообщение: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
 
 2.6 Выведите на консоль фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». Поясню: в математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (одна целая две третьих, здесь мы используем стандартную математическую запись, а не оператор деления). Вам необходимо вывести на консоль именно такой результат от деления `numberOne` на `numberTwo` в виде натуральной дроби — например «Результат деления 7 на 3 равен 2 1/3».
 
 */
//:The task 2.1

let numberOne = 28

//:The task 2.2

let numberTwo = 21

//:The task 2.3

let result = numberOne / numberTwo

//:The task 2.4

let remainder = numberOne % numberTwo

//:The task 2.5

print ("При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)")

//:The task 2.6
print ("Результат деления \(numberOne) на \(numberTwo) равен \(result) \(remainder)/\(numberOne)")

/*:
 ### Задание 3
 3.1 Объявите константу `dayOfBirth` и присвоейте ей дату вашего рождения
 
 3.2 Объявите константу `monthOfBirth` и присвоейте ей месяц вашего рождения
 
 3.3 Объявите константу `yearOfBirth` и присвоейте ей год вашего рождения
 
 3.4 Необходимо рассчитать прожитое вами время время с момента вашего рождения по текущую дату в разных единицах измерения (в годах, месяцах, днях и секундах). За текущее время возьмите сегодняшнюю дату и 0 часов 0 минут. Високосные года учитывать не надо. Пусть среднее количество дней в месяце будет 30. Создайте необходимые для решения данной задачи свойства. Для расчета всех необходимых величин используйте только арифметические операторы. Ни каких функций использоваться не должно.
 
 3.5 Выведите результат решения на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Можете использовать свой текст. Например, если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: **39 years, 470 months, 14120 days and 1219968000 seconds have passed since my birth**
 
 3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте конструкцию if
 */
//:The task 3.1
let dayOfBirth = 28

//:The task 3.2
let monthOfBirth = 10
//:The task 3.3
let yearOfBirth = 1994
//:The task 3.4
//создаем необходимые свойства (день, месяц, год) на момент выполнения задания 6.11.2020, скобки в коде указаны для лучшего понимания структуры вычисления:
let dayOfToday = 6,
    monthOfToday = 11,
    yearOfToday = 2020

//создаем необходимые свойства:
let secondsInDays = 60 * 60 * 24, //секунд в сутках
    daysInMonths = 30,  //суток в месяце
    monthInYears = 12  //месяцев в году

//вычисляем количество дней до дня рождения от РХ:
let daysToBirthday = yearOfBirth * monthInYears *  daysInMonths + monthOfBirth * daysInMonths + dayOfBirth

//вычисляем количество дней до текущей даты от РХ:
let daysToToday = yearOfToday * monthInYears *  daysInMonths +  monthOfToday * daysInMonths + dayOfToday

//прошло дней:
let daysPassed = daysToToday - daysToBirthday

//месяцев прошло:
let monthsPassed = daysPassed / daysInMonths

//лет прошло:
let yearsPassed = monthsPassed / monthInYears

//секунд прошло:
let secondsPassed = daysPassed * secondsInDays
//:The task 3.5
print ("\(yearsPassed) years, \(monthsPassed) months, \(daysPassed) days and \(secondsPassed) seconds have passed since my birth")
//:The task 3.6

if monthOfBirth > 0  && monthOfBirth <= 3 {
    print ("Я родился в 1-м квартале")
} else if monthOfBirth > 3  && monthOfBirth <= 6 {
    print ("Я родился в 2-м квартале")
} else if monthOfBirth > 6  && monthOfBirth <= 9 {
    print ("Я родился в 3-м квартале")
} else if monthOfBirth > 9  && monthOfBirth <= 12 {
    print ("Я родился в 4-м квартале")
}


/*:
 ### Задание 4. Депозитный калькулятор

 Сколько процентов(X) составит выплата по депозиту в A рублей при ставке B% годовых если забрать его через C лет? При условии, что проценты считаются только с тела депозита.

 А,B,C - входные параметры, X - искомое
 
 P.S. Помните, переменные нужно называть, чтоб они были понятными :-)
 
 Пример вывода "Выплата по депозиту суммой <значение> (ставка <значение>%) через <значение> лет будет <значение>%"
 
 */
//:The task 4

//let rubleInitialDepositA2020: Double = 20_000_000, interestNumberRateB2020 = 4.25, numberOfYearsC2030: Double = 10
//
///*использована формула простых процентов (средства размещаются на длительный срок и сумма большая), целесообразна в случае начисления процентов в конце срока размещения депозита */
//let quantityInterestOnDepositX2030 = ((rubleInitialDepositA2020 * (interestNumberRateB2020 / 100 + 1) * numberOfYearsC2030) / rubleInitialDepositA2020) * 100
//
//print ("Выплата по депозиту суммой \(Int(rubleInitialDepositA2020)) рублей (ставка \(interestNumberRateB2020)%) через \(Int(numberOfYearsC2030)) лет будет \(quantityInterestOnDepositX2030)%")

/// Сумма депозита

let depositAmount: Double = 20_000_000

/// Процентная ставка. 4.25%

let interestRatePercent: Double = 4.25

/// Кол-во лет депозита

let yearsOfRepayment = 10

 

let profitPercent = interestRatePercent * Double(yearsOfRepayment)

 

// Опционально: посчитать сумму профита

let profitSum = depositAmount * (interestRatePercent / 100) * Double(yearsOfRepayment)

 

print("Выплата по депозиту суммой \(depositAmount) (ставка \(interestRatePercent)%) через \(yearsOfRepayment) лет будет \(profitPercent)% (сумма прибыли: \(profitSum))")
