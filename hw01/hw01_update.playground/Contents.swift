//: Playground - noun: a place where people can play

import UIKit
/**************************************
 Enum for storing types of car
 **************************************/

enum CarType {
    case EconomyCar
    case FamilyCar
    case Microcar
    case SportsCar
    case Buggati
}


/**************************************
 Base Car class
 **************************************/

public class Car {
    internal var carType : CarType
    private let carVinCode : String // immutable car identifier
    internal var gasConsuption : Float // average consuption in l/100km
    public var hasConditioning : Bool?
    private var isEngineOn : Bool = false // engine start or stop info, default is stop
    
    init(carType : CarType, carVinCode : String, gasConsuption : Float) {
        self.carType = carType
        self.carVinCode = carVinCode
        self.gasConsuption = gasConsuption
    }
    
    func addNewCarType(carType : CarType) {
        //add new car type to the enum
    }
    
    func engineStart() -> Bool {
        isEngineOn = true
        return isEngineOn
    }
    
    func engineStop() -> Bool {
        isEngineOn = false
        return isEngineOn
    }
    
    func getEngineState() -> Bool {
        return isEngineOn
    }
    
    func setCarConditioning(hasConditioning : Bool) -> Bool {
        self.hasConditioning = hasConditioning
        return hasConditioning
    }
    
    func getCarConditioning() {
        if hasConditioning != nil {
            print (hasConditioning!)
        }
        else {
            print (hasConditioning ?? "Undefinied")
            
        }
    }
    
    func changeEngineState(state : Bool) {
        isEngineOn = !isEngineOn
        
    }
    
    func getConsuptionForKm(kilometers : Float) -> Float {
        if kilometers > 0 {
            return (kilometers * gasConsuption) / 100
        }
        else {
            return 0
        }
    }
}


public class CarCollection {
    // var cars : [Car] = []
    var cars : [Car] = [Car]()
    
    func hasCarWithThisVin(vin : String) -> Bool {
        for i in 0..<cars.count {
            if cars[i].carVinCode == vin {
                return true
            }
        }
        return false
    }
    
    func addNewCar(car: Car) {
        if !hasCarWithThisVin(car.carVinCode) {
            cars.append(car)
        }
        else {
            print("Car with this VIN is already in the collection")
        }
        showOff(cars)
        
    }
    
    
    func removeCar(car : Car) {
        for i in 0..<cars.count {
            if hasCarWithThisVin(car.carVinCode) {
                cars.removeAtIndex(i)
                print("Car \(car.carType) was removed")
                break
            }
        }
    }
    
    func isBuggati (cars : [Car]) -> Bool {
        for car in cars {
            if car.carType == .Buggati {
                print ("This is my favourite car.")
                return true
            }
        }
        return false
    }
    
    func showOff(cars : [Car]) -> [Car] {
        for car in cars {
            print (car.carType)
            isBuggati(cars)
        }
        return cars
    }
}

public class ElectricCar : Car {
    var hasAutoPilot : Bool
    
    init(hasAutoPilot : Bool, carVinCode : String) {
        self.hasAutoPilot = hasAutoPilot
        super.init(carType: .Buggati, carVinCode: carVinCode, gasConsuption: 2.0)
    }
    
    override func getConsuptionForKm(kilometers: Float) -> Float {
        return ((kilometers * gasConsuption) / 100) / 50
    }
}

//Inicialization of the class
var superb = Car(carType: .Buggati, carVinCode: "SVN01234", gasConsuption: 20.00)
superb

var tesla = ElectricCar(hasAutoPilot: true, carVinCode: "123")
tesla
tesla.engineStart()

superb.engineStart()
superb.engineStop()
superb.isEngineOn
superb.getEngineState()
superb.changeEngineState(superb.getEngineState())
superb.setCarConditioning(true)
superb.getCarConditioning()
superb.changeEngineState(superb.getEngineState())
superb
superb.getConsuptionForKm(15678.563)
superb.getConsuptionForKm(-2)

var myCar = CarCollection()
myCar.addNewCar(superb)
myCar.addNewCar(Car(carType: .EconomyCar, carVinCode: "SVN0123e", gasConsuption: 20.00))


myCar.showOff(myCar.cars)

myCar.removeCar(superb)


myCar.showOff(myCar.cars)

