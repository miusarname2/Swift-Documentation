// Este archivo contiene, una explicacion de swift basico,con temas como el holamundo en swift, varibles y constantes,algunos tipos de datos, entre otros

// Hola mundo
print("¡Hola Apple Developer!"); // Nota: el ; es opcional, pero yo lo pongo por buena practica y costumbre

// variables y constantes

/*
 * Hay varias formas de declarar una variable, esta es una, y es muy amigable, si estas acostumbrado a Javascript o a Python
 */

var myVariable = "This is an string";

/*
 * O si prefieres como yo tipado se puede tambien, de esta forma
 */

var myNewVariable : Int = 12; // Muy similar a TypeScript


/*
 * Contrario a lo que pensariamos, las constantes se defiene con let, de esta forma
 */

let myFirstConstant = 100;

// o

let mySecondConst : Double = 12;


/* Experiment
 * Create a constant with an explicit type of Float and a value of 4.
 */

let myExpConst : Float = 4;

/*
 * Hay una forma de "formatear" o "concatenar", la primera es esta :
 */


var width : Int = 150;
let desc : String = "The width is";
var concat : String = desc + String(width);

//print(concat);


/*Experiment
 * Try removing the conversion to String from the last line. What error do you get?
 * Rta : Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
 */


/*
 * Otra forma de concatenar, algo mas simple, es asi :
 */

concat = "The width is \(width)"; // Esto hace una conversion,un poco diferente...

/* Experiment
 * Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.
 */

let numberFloat : Int = 12;
let concats : String = "The width is \(numberFloat + 10)";


/*
 * Para tener multiples lineas en un texto, se hace con """, de esta forma:
 */

let paragraph : String = """
        Even though there's whitespace to the left,
        the actual lines aren't indented.
            Except for this line.
        Double quotes (") can appear without being escaped.

        I still have \(numberFloat + width) pieces of fruit.
        """

/* Arrays
 *
 */


var proggrammingLanguages : Array = ["Js","C#","Swift","Kotlin","Pascal"];

/*
 * Similar a en php, podemos asignar los index a los arrays
 */

let artistxSongs : [String:String] = [ "Juanes":"Una noche noche", "Miguel":"Ahora t podes marchar"];

/*
 * Si quieres tipar, y tener un array vacio, se hace la siguiente manera:
 */


let blankArr1 : Array<String> = [ ];
// o
var blankArr2 : [String] = [ ];
// o
var blankArr3 : [String : Float] = [ : ];


/*
 * Estructuras de control
 */

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

/*
 * If
 */

var score : Int = 12;

if (score > 10 || score == 12){
    print(":)");
}else{
    print(":(");
}

/*
 * Asi se pone valores opcionales:
 */

var optionalString : String? = "";	

// Pre-expo
optionalString = "Hello";
print(optionalString == nil);
// Prints "false"

optionalString = nil;

var optionalName: String? = "John Appleseed";
var greeting = "Hello!";
if let name = optionalName {
    let greeting = "Hello, \(name)";
}

/* Experiment
 * Change optionalName to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
 */

optionalName = nil;

if let name = optionalName {
    let greetingNew : String = "Hello, \(name)";
}else{
    print("Hello, there!");
}


/*
 * Otra forma para hacerlo es esta:
 */

let email : String? = nil;
let num_telf : String = "6708900";
var newGreeting : String = "Hi \(email ?? num_telf), email or number user"; // The result is "Hi 6708900, email or number user"

// Definición de un diccionario llamado interestingNumbers
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

// Variable para almacenar el número más grande encontrado
var largest = 0

// Iterar a través del diccionario, ignorando las claves y obteniendo solo los valores (listas de números)
for (_, numbers) in interestingNumbers {
    // Iterar a través de la lista de números
    for number in numbers {
        // Verificar si el número actual es mayor que el número más grande encontrado hasta ahora
        if number > largest {
            // Si es así, actualizar el número más grande
            largest = number
        }
    }
}

// Al finalizar, la variable 'largest' contendrá el número más grande de todas las listas

/*
 * Bucle While
 */

var n = 2

// Bucle while: multiplica n por 2 mientras n sea menor que 100
while n < 100 {
    n *= 2
}

// Después del bucle, imprime el valor actual de n
print(n)
// Resultado: 128


/*
 * Bucle repeat-while
 */


var m = 2

// Bucle repeat-while: multiplica m por 2 mientras m sea menor que 100
repeat {
    m *= 2
} while m < 100

// Después del bucle, imprime el valor actual de m
print(m)
// Resultado: 128


/* Funciones
 * Utilice func para declarar una función. Llame a una función siguiendo su nombre con una lista de argumentos entre paréntesis. Utilice -> para separar los nombres y tipos de los parámetros del tipo de retorno de la función.
 */

func sayHello (name: String,Language :Int)-> String{
    if (Language == 1){
        return "Hello \(name), how are you?";
    }else if (Language == 2){
        return "\(name)、元気かい？";
    }else{
        return "Hola,\(name), Que tal estas?";
    }
}

print(sayHello(name: "Oscar", Language: 10));


/*
 * By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.
 */

func happtBirthday (_ sender : String, on receiver:String)->String
{
    return "Happy birthday \(receiver), whishes you \(sender)";
}


print(happtBirthday("Juan", on: "Felipe"));

/*
 * Puedes retornar una lista, de esta forma:
 */

func GreetingsFunction (sender : String, receiver : String)->(christmas:String,	birthday:String,newYear:String){
    var birth : String = "Happy birthday \(receiver), whishes you \(sender)";
    var christ : String = "Merry Christmas \(receiver), whises you \(sender)";
    var newY : String = "Happy new year \(receiver), whises you \(sender)";
    
    return(christ,birth,newY);
}

let SayingHi : (christmas:String,birthday:String,newYear:String) = GreetingsFunction(sender: "Oscar", receiver: "Angela");

/*
 * Esta es otra manera :
 */

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

/* POO-OOP | Programacion Orientada a Objetos
 *
 */


class Person{
    var edad = 0;
    
    func baseGreeting() -> String {
        return "Hello, there..";
    }
}

/* Experiment
 * Add a constant property with let, and add another method that takes an argument.
 */

class Persons {
    var age : Int = 0;
    var Gender : String = "Male";
   
    init(age: Int,gender : String) {
        self.age = age;
        self.Gender = gender;
    }
    
    func baseGreeting() -> String {
        return "Hello, there..";
    }
    
    func ChristmasGreeting(receiver:String) -> String {
        return "Merry Christmas \(receiver)";
    }
}

var Oscar : Persons =  Persons(age: 0, gender: "Male");
Oscar.age += 1;
print(Oscar.age);

/* Notice how self is used to distinguish the name property from the name argument to the initializer. The arguments to the initializer are passed like a function call when you create an instance of the class. Every property needs a value assigned — either in its declaration (as with numberOfSides) or in the initializer (as with name).
 * Use deinit to create a deinitializer if you need to perform some cleanup before the object is deallocated.
 *
 * Subclasses include their superclass name after their class name, separated by a colon. There’s no requirement for classes to subclass any standard root class, so you can include or omit a superclass as needed.
 *
 * Methods on a subclass that override the superclass’s implementation are marked with override — overriding a method by accident, without override, is detected by the compiler as an error. The compiler also detects methods with override that don’t actually override any method in the superclass.
 */

/* Herencia, poliformismo, getters & setters
 *
 */

class Citizen: Persons {
    var city: String;
    
    // Nueva propiedad 'religion' con bloque 'willSet'
    var religion: String? {
        willSet {
            // Aquí puedes realizar acciones antes de que el valor de 'religion' sea modificado
            print("Changing religion from \(religion ?? "nil") to \(newValue ?? "nil")");
        }
    }
    
    init(city: String, age: Int, gender: String) {
        self.city = city;
        super.init(age: age, gender: gender);
    }
    
    var nationality: String {
        get {
            return self.nationality ?? "Columbia";
        }
        set {
            self.nationality = newValue;
        }
    }

    override func baseGreeting() -> String {
        return "Hi, How are you?";
    }
}

// Ejemplo de uso
var citizen = Citizen(city: "New York", age: 25, gender: "Cat");
citizen.religion = "Christian"




