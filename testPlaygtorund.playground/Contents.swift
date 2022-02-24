import UIKit


/*Пусть это дз будет как контрольная где вы проверите свои знания за 16 уроков и на сколько вы ленивы тоже).В этот раз нужно применить всю мощь языка и красоту кода.Нельзя выполнять выборочно задания!Нужно выполнить все по порядку. Применяйте все что когда любо учили даже если этого нет в задании.Желаю всем успеха)!
p.s. Для ленивых нужно написать в коментах на каком пункте сдался!)

Для - того кто просто иногда делает дз :)

- [ ] a).Найти информацию что такое наследование в Google, перефразировать эту информацию своими словами и вставить это в xcode в за коментрированом виде.
b).Сделать то же самое с понятием Инкапсуляция
c).И так же с понятием полиморфизм.

- [ ] 1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".
- [ ] 2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.
- [ ] 3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
- [ ] 4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".
*/

class People {
    var name: String
    var rost: Int
    var massa: Double
    var gender: String
    
    init(name: String, rost: Int, massa: Double, gender: String) {
        self.name = name
        self.rost = rost
        self.massa = massa
        self.gender = gender
    }
    func say() -> String {
        return "say"
    }
}
class Povar: People {
    override init(name: String, rost: Int, massa: Double, gender: String) {
        super.init(name: "sher", rost: 180, massa: 57.9, gender: "M")
    }
    override func say() -> String {
        super.say()
        return "\(name)  povar"
    }
}


class Manager: People {
    override init(name: String, rost: Int, massa: Double, gender: String) {
        super.init(name: "Aijan", rost: 170, massa: 51, gender: "W")
        
    }
    override func say() -> String {
        super.say()
        return " \(name)  manager "
    }
}

class Borec: People {
    override init(name: String, rost: Int, massa: Double, gender: String) {
        super.init(name: "Kamchy", rost: 178, massa: 59, gender: "M")
    }
    override func say() -> String {
        super.say()
        return "\(name)  borec"
    }
}
 
var lst =  [People]()

let povar = Povar(name: "Sher", rost: 180, massa: 57.9, gender: "M")
let manager = Manager(name: "Aijan", rost: 170, massa: 170, gender: "W")
let borec = Borec(name: "kamchy", rost: 180, massa: 59, gender: "M")


lst.append(povar)
lst.append(manager)
lst.append(borec)


for people in lst {
    print("\(people.name) | massa \(people.massa)  | rost: \(people.rost) | gender: \(people.gender) | \(people.say())")
}
