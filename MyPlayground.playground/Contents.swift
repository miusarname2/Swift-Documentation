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


