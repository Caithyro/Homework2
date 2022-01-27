//
//  ViewController.swift
//  Homework 2
//
//  Created by Дмитрий Куприенко on 28.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func taskOne() {
            
            class Phone {
                
                var number: Int //= 380123456789 if no parameters
                var model: String //= "iPhone" if no parameters
                var weight: Int  //= 23 both no parameters and two parameters
                
                
                // Three parameters init
                init(number: Int, model: String, weight: Int) {
                    self.number = number
                    self.model = model
                    self.weight = weight
                }
                
                //Two parameters init
                //                init(number: Int, model: String) {
                //                    self.number = number
                //                    self.model = model
                //                }
                
                func receiveCall(callerName: String) {
                    print("\(callerName) is calling!")
                }
                
                func getNumber() -> Int {
                    return number
                }
                
                func receiveCall1(callerName: String, callerNumber: Int) {
                    print("\(callerName) \(callerNumber) is calling!")
                }
                
                func sendMessage(targetNumber: Int) {
                    print("The message for \(targetNumber) has been sent")
                }
            }
            
            let phoneInstance = Phone(number: 380931234567, model: "13 Pro Max Super Retina", weight: 230)
            let phoneInstance1 = Phone(number: 380661234567, model: "4S", weight: 200)
            
            print("Task 1: The number is \(phoneInstance.number), the model is \(phoneInstance.model), the weight is \(phoneInstance.weight)")
            print("The number is \(phoneInstance1.number), the model is \(phoneInstance1.model), the weight is \(phoneInstance1.weight)")
            
            var list1 = [phoneInstance, phoneInstance1]
            
            for eachPhone in list1 {
                eachPhone.receiveCall(callerName: "Oleg")
                eachPhone.getNumber()
            }
            
            phoneInstance.receiveCall1(callerName: "Victor", callerNumber: 380671234567)
            phoneInstance.sendMessage(targetNumber: 380921234567)
            
        }
        taskOne()
        
        func taskTwo() {
            
            class Sailor {
                
                func sayHello() {
                    print("Hello!")
                }
                
            }
            
            class Ship {
                
                var name: String
                var sailors: Array<Any> = []
                
                init(name: String, sailors: Array<Any>) {
                    self.name = name
                    self.sailors = sailors
                }
                
            }
            
            let sailor = Sailor()
            let sailor1 = Sailor()
            let sailor2 = Sailor()
            let sailor3 = Sailor()
            let sailor4 = Sailor()
            let ship = Ship(name: "Titanic", sailors:[sailor, sailor1, sailor2, sailor3, sailor4])
            
            for eachSailor in ship.sailors {
                print("Task 2: Hello from ship - \(ship.name)!")
            }
            
        }
        taskTwo()
        
        func taskThree() {
            
            class Calculator {
                
                func add(x: Int, y: Int) -> Int {
                    return x+y
                }
                
                func subtarct(x: Int, y: Int) -> Int {
                    return x-y
                }
                
                func multiply(x: Int, y: Int) -> Int {
                    return x*y
                }
            
                func divide(x: Int, y: Int) -> Int {
                    if y != 0 {
                        return x/y
                    } else {
                        print("You can't divide by a zero")
                        return 0
                    }
                }
            }
            
            class SuperCalcualtor:Calculator {
                
                func pow(x: Int, to: Int) -> Int {
                    
                    var result0 = x
                    var startValue = x
                    var times = to
                    var current = 0
                    
                    while current != times-1 {
                        result0 *= startValue
                        current += 1
                    }
                    current = 0
                    return result0
                }
                
                func percentage(number1: Int, percent: Int) -> Int {
                    
                    var result1 = (number1*percent)/100
                    return result1
                    
                }
                
            }
            
            let prettyBadCalculator = SuperCalcualtor()
            
            print("Task 3:")
            print(prettyBadCalculator.add(x: 2, y: 3))
            print(prettyBadCalculator.divide(x: 9, y: 0))
            print(prettyBadCalculator.subtarct(x: 6, y: 9))
            print(prettyBadCalculator.multiply(x: 2, y: 8))
            print(prettyBadCalculator.pow(x: 5, to: 2))
            print(prettyBadCalculator.percentage(number1: 1637, percent: 2))
            
        }
        taskThree()
        
        func taskFour() {
            
            class Animal {
                
                var food1: String
                var location1: String
                
                init(food1: String, location1: String) {
                    self.food1 = food1
                    self.location1 = location1
                }
                
                func makeNoise() {
                    print("\(Animal.self) is sleeping")
                }
                
                func eat() {
                    print("\(Animal.self) is eating")
                }
                
                func sleeping(isSleeping: Bool) {
                    if isSleeping {
                        self.makeNoise()
                    }
                }
            }
            
            class Dog:Animal {
                
                var color1: String = "Brown"
                
                override func eat() {
                    print("\(Dog.self) eating meat")
                }
                
                override func makeNoise() {
                    print("\(Dog.self) says woof")
                }
            }
            
            class Cat:Animal {
                var color1: String = "Black"
                
                override func eat() {
                    print("\(Cat.self) eating mice")
                }
                
                override func makeNoise() {
                    print("\(Cat.self) says meow")
                }
            }
            
            class Horse:Animal {
                var color1: String = "Brown and Black"
                
                override func eat() {
                    print("\(Horse.self) eating grass")
                }
                
                override func makeNoise() {
                    print("\(Horse.self) says neigh")
                }
            }
            
            let Fluffy = Cat(food1: "mice", location1: "Kyiv")
            let Congo = Dog(food1: "meat", location1: "Odessa")
            let George = Horse(food1: "Grass", location1: "Kharkiv")
            let MrTrump = Vet()
            
            class Vet {
                
                func treatAnimal(animal:Animal) {
                    print("We are treating an animal from " + animal.location1 + " and it's food is " + animal.food1)
                }
            }
            
            func Main() {
                
                let animals:Array<Animal> = [Fluffy, Congo, George]
                
                for eachAnimal in animals {
                    MrTrump.treatAnimal(animal: eachAnimal)
                    eachAnimal.makeNoise()
                    eachAnimal.eat()
                }
            }
            
            print("Task 4:")
            Main()
            
        }
        taskFour()
        
        
        
        func taskFive() {
            
            class PorkMeat: Food {
                var name: String = "PorkMeat"
                
                func taste() {
                    print("\(name.self) is tasty")
                }
            }
            class Cucumber:Food {
                var name: String = "Cucumber"
                
                func taste() {
                    print("\(name.self) isn't tasty")
                }
            }
            struct Banana:Food {
                var name: String = "Banana"
                
                func taste() {
                    print("\(name.self) is tasty")
                }
            }
            struct Bread:Food {
                var name: String = "Bread"
                
                func taste() {
                    print("\(name.self) isn't tasty")
                }
            }
            let bread = Bread()
            let banana = Banana()
            let cucumber = Cucumber()
            let pork = PorkMeat()
            let burger = McDonaldsBurger()
            let foodArray:Array<Food> = [bread, banana, cucumber, pork, burger]
            
            for eachPiece in foodArray {
                eachPiece.taste()
            }
            
            struct McDonaldsBurger:Food {
                var name: String = "Big Tasty"
            }
            
        }
        print("Task 5:")
        taskFive()
        
        func taskSix() {
            
            let array = [-1, 2, -3, 4, 5, -6, -7, 8, 9, 0]
            
            for eachItem in array {
                print("\(eachItem) is negative: \(eachItem.isNegative())")
            }
            
            print("For posisive:")
            
            for eachItem in array {
                print("\(eachItem) is positive: \(eachItem.isPositive())")
            }
            
            let someOptionalString = "How are you?"
            
            print("String extension:", someOptionalString.addGreetings(greetings: "Hello!"))
        }
        print("Task 6:")
        taskSix()
        
        func taskSeven() {
            enum ChessFigures {
                case castle (String)
                case knight (String)
                case bishop (String)
                case pawn (String)
            }
            
            let castle = ChessFigures.castle("white")
            let knight = ChessFigures.knight("black")
            let bishop = ChessFigures.bishop("white")
            let pawn = ChessFigures.pawn("black")
            var figuresArray = [castle, knight, bishop, pawn]
            var currentFigurePosition = 0
            
            func figuresFunction(figuresArray: Array<ChessFigures>) {
                
                for eachFigure in figuresArray {
                    var currentFigure = figuresArray[currentFigurePosition]
                    switch currentFigure {
                    case .castle(let string):
                        if string == "white" {
                            print("\(string) castle")
                        }
                    case .knight(let string):
                        if string == "white" {
                            print("\(string) knight")
                            
                        }
                    case .bishop(let string):
                        if string == "black" {
                            print("\(string) bishop")
                            
                        }
                    case .pawn(let string):
                        if string == "black" {
                            print("\(string) pawn")
                        }
                    }
                    currentFigurePosition += 1
                }
            }
            figuresFunction(figuresArray: figuresArray)
        }
        print("Task 7:")
        taskSeven()
        
        func taskEight() { //Guess my age
            
            var myAge = 30
            
            switch myAge {
            case 24:
                print("You're right")
            case 50..<120:
                print("I'm not that old")
            default:
                print("Nope. Try again.")
            }
        }
        print("Task 8:")
        taskEight()
        
        func taskNine() {
            
            let target = 7
            var lookForIt = "Result: \(target)"
            switch target {
            case 12, 49, 32, 7, 90, 1234, 423:
                lookForIt += ". This number was a target"
                fallthrough
            default:
                lookForIt += ". It is a good number."
            }
            print(lookForIt)
        }
        print("Task 9:")
        taskNine()
        
        func taskTen() { // SAY MY NAME!
            
            var myAge = 52
            var myName = "Heisenberg"
            
            switch myName {
            case let ("Heisenberg") where myAge == 52:
                print("You're goddamn right")
            case let ("Tuco") where myAge == 45:
                print("I'm not that young")
            default:
                print("Try again.")
            }
        }
        print("Task 10:")
        taskTen()

        // MARK: Init task
        func taskEleven() {
            struct EmptyBerries {
                var cherry = 0, strawberry = 0
            }
            struct Berries {
                var cherry = 4, strawberry = 5
            }
            struct Fridge {
                var topShelf = EmptyBerries()
                var secondShelf = Berries()
                init() {}
                init(topShelf: EmptyBerries, secondShelf: Berries) {
                    self.topShelf = topShelf
                    self.secondShelf = secondShelf
                }
                init(thirdShelf: EmptyBerries, secondShelf: Berries) {
                    let thirdShelfCherry = thirdShelf.cherry - (secondShelf.cherry * 2)
                    let thirdShelfStrawberry = thirdShelf.strawberry - (secondShelf.strawberry * 3)
                    self.init(topShelf: EmptyBerries(cherry: thirdShelfCherry, strawberry: thirdShelfStrawberry), secondShelf: secondShelf)
                }
            }
        }
    }
}



protocol Food {
    var name: String { get set }
    func taste()
}

extension Food {
    func taste() {
        print("\(name.self) is sooo tasty")
    }
}

// MARK: Task Six extensions and a protocol

extension Int {
    func isNegative() -> Bool {
        if  self < 0 && self != 0 {
            return true
        } else {
            return false
        }
    }
    
    func isPositive() -> Bool {
        if self > 0 && self != 0 {
            return true
        } else {
            return false
        }
    }
}
extension String {
    func addGreetings(greetings: String) -> String {
        return greetings + " " + self
    }
}

// MARK: Task with protocol extension
protocol Greetings {
    func sayHello()
}

extension Greetings {
    func sayHello() {
        print("Hello!")
    }
}
