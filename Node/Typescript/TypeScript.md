# TypeScript

Here I aim to give you just enough understanding of TypeScript so that you can understand the code we're about to write.

## Types

So as you imagine TypeScript is known for it's type system, so we should start any discussion about TypeScript talking about types.

### Primitive Types

TypeScript has three primitive types

- string : a type for any kind of text such "Hello World" or "42"
- number : a type for any number such as 42, -3 or 3.14159
- boolean : a type that can only have two values, true or false.

As an example here are a few variables of the above types defined

``` typescript
const text : string = "Hello World!";
const e : number = 2.718281828459;
const isTrue : boolean = true;
```

> Note: const is the keyword to tell TypeScript that you don't want the value of the variable to change. If you wanted a variable you could change then you'd use the keyword _let_ instead.

### Arrays

An array is a collection of elements that can be of any type. For example

``` typescript
const names : string[] = ["Alice","Bob","Charlie","David","Edward","Fred"];
```

You can make an array of any type by putting square brackets after the type.

Arrays have many methods on them, including but not limited to, push, concat, map, filter and fold.

### Objects

Objects are at their most basic collection of key value pairs.
For example

``` typescript
const person = { name:"Alice" , age:34 };
```

Objects can also be made from Classes and can be checked to conform to a particular interface if it is required. We shall talk interfaces and classes later. Additionally objects can take functions as values to their parameters.

### Functions

It might be odd to think of functions as types, but in TypeScript functions are first class objects just as they are in any functional programming language (this is why you can do functional programming with JavaScript and TypeScript). I won't get too much into this here, but this means you can pass functions as arguments to functions and you can return functions from functions also.

There are two kinds of functions in TypeScript.

#### JavaScript Style Functions

These functions are obviously functions as they are defined with the keyword _function_. They can have arguments and return types. For example

``` typescript
function countLetters(str:string):number{
    return str.length;
}
```

You have to be careful when using these types of functions with objects as they have a built in _this_ value which references the object the function is used with.

#### Arrow (anonymous) Functions

These functions can be used inline or they can be assigned to variables, they aren't so obvious but are the preferred way to define a free function in TypeScript because unlike JavaScript style functions they don't have a built in _this_ reference.

You can recognise an arrow function because it uses an __=>__ (aka an arrow). For example

``` typescript
const countLetters = (str:string):number => {
    return str.length;
}
```

Additionally you don't need to use a return in an arrow a function if you can write the body as a single statement, for example

``` typescript
const countLetters = (str:string):number => str.length;
```

In the case of both types of function you call them by using the name (in the case of arrow functions the name is the name of the variable that they have been assigned to) and () to pass arguments.


``` typescript
const numberOfLetters = countLetters("Hello World");
```

### Null and Undefined

TypeScript has two "nothing" types with subtlety different meanings (although you might notice that these differences haven't reached the designers of various packages so you have to watch out for this).

#### null

A null value is very literally "nothing", and represents when there is a valid nothing value. Since most types don't have a valid nothing value, you might not see null very often.

#### undefined

An undefined value is more for the times when a variable cannot take a defined value, either because it was not set with one initially, or the variable itself doesn't exist on an object or it has been assigned undefined directly. This tends to be used in cases where there is a valid case that something could not have a definition. For example you could imagine a square root function giving back an undefined value if given a negative number. Undefined is generally preferred over null.

If you have a null or undefined value you can define a default value using the || operator.

``` typescript
const maybeAValue : string | undefined = undefined;
const value = maybeAValue || "default value";
console.log(value);
```

### Any and Unknown

Sometimes there are cases where you don't know what the type of a variable is. For these cases you have the any and unknown types.

### any

The any type is the most permissive type, as it will turn off TypeScripts type checking for any variable of this type. If you see a variable of this type then most likely it was an intentional choice by the developer or it might have been used to aid in upgrading JavaScript code to TypeScript. Either way, it's an indication that you should be careful because you won't have the compiler helping you.

This is also how TypeScript interacts with JavaScript, since to TypeScript all JavaScript types are any.

#### unknown

If a type is unknown, then we literally do not know what type it is, and it could have any value. This another rare type as generally the type is known, however it does come up when handling exceptions.

### Union

Typescript also has union types, these are types that are created from other types. For example you might have a variable that can be a number or a boolean. You can express this with TypeScript like this

``` typescript
const nameOrBool : string | boolean = true;
```

You might see this used with the undefined type a lot when it's possible a function can "fail", as an example

``` typescript
const mySqrt = (x:number):number|undefined =>{
    if( x < 0 ){
        return undefined;
    }
    return Math.sqrt(x);
}
```

Additionally you might see union types used with a type alias, for example

``` typescript
type Suit = "clubs"|"diamonds"|"hearts"|"spades";
```

## Interfaces

You can use interfaces to ensure an object conforms to a particular shape. This can be useful when you have a function that uses particular properties of a class and you want TypeScript to ensure that those exist. It's also useful when you are defining a data model in your code.

Interfaces can also ensure that any class that implements it also defines some member functions (also known as methods).

Lets take a look at an interface

``` typescript
interface Animal{
    name:string;
    isAquatic:boolean;
    makeNoise():string;
}
```

You can see that this interface ensures that anything that implements it must have a name property that is a string, an isAquatic property that is a boolean and a function makeNoise.

Interfaces can have optional parameters too. These are shown by either making the type a union with undefined or using a question mark.

For example a model repressing an exam result, it could be that the exam hasn't yet been graded, so the score should be optional.

``` typescript
interface ExamResult{
    studentId:string;
    subject:string;
    score?:number;
}
```

### Using interfaces

You can define an value to conform to an interface by using the interface name in place of the type when you define it. You can also do the same thing with function arguments

``` typescript
const statement = (animal:Animal):string => `The ${animal.name} says ${animal.makeNoise()}`

const fox : Animal = { 
    name:"fox",
    isAquatic:false,
    makeNoise:()=>"what"
    };

console.log(statement(fox));
```

## Classes

Classes allow you to create objects that conform to a particular shape and define functions on them. For example

``` typescript
class Card{
    isFaceUp:boolean;
    constructor(public pip:Pip,public suit:Suit){
        this.isFaceUp = false;
    }
    turnFaceUp(){
        this.isFaceUp = true;
    }
}
```

You can create an instance of a class by using the new keyword. You access members by using a . and then the name of the variable. You can access functions this way too. As an example.

``` typescript
const card = new Card("king","spades");
console.log(card.isFaceUp);
card.turnFaceUp();
console.log(card.isFaceUp);
```

> Note: The code above shows that const is only referentially constant. Ie only the reference to the card is constant, but the card itself can change.

Classes can also be made to conform to an interface by using the implements keyword

``` typescript
class Dog implements Animal{
    name:string,
    isAquatic:boolean,
    constructor(){
        this.name = "dog"
        this.isAquatic = false;
    }
    makeNoise(){
        return "woof";
    }
}
```

You get your typical inheritance relationships too, a class can extend an existing class with the extends keyword

``` typescript
class Chihuahua extends Dog{
    constructor(){
        super()
    }
    makeNoise(){
        return "yap";
    }
}
```

## Type Inference

TypeScript can work out for itself what type a variable should be when it is initialised, so you don't have to always include a type annotation when creating new variables, so long as you initialise the variable too.

For example, this works
``` typescript
const theAnswer = 42;
```

but this won't
``` typescript
let theQuestion ;
theQuestion = "Life, the Universe and Everything";
```
as TypeScript can't look ahead to see what the variable type should be.

This works for objects and arrays too.

Try it with this array and see what type you get back

``` typescript
const array = ["Hello World",42] ;
```

## Destructuring

Destructuring allows you to access elements or properties without having to use a dot. It's very useful for functions that take in objects but you only want to use some of the properties of that object.

### Destructuring an Array

You can destructure an array by using square brackets, like this

``` typescript
const xs = [1,2,3,4,5];
const [a,b,c,d,e] = xs;
console.log(c);
```

you can also use something called a rest parameter, that gives you the rest of the elements in the array as an array

``` typescript
const xs = [1,2,3,4,5];
const [head,...tail] = xs;
console.log(head);
console.log(tail);
```

You can use this to destructure an array passed into an object like this

``` typescript
const getFirst = <T>([head,...]:T[]):T|undefined => head
```

> Note: I used a generic type in the function above. You should look at these later once you understand everything else as they are useful when you have a function that should accept any type but you want to ensure type safety. If you find it confusing just remove the __\<T\>__ and replace all the places you see a __T__ with a number or some other type you like. Oh look, you just learned how generics work.

### Destructuring an Object

You can destructure an object by using {}

``` typescript 
const favourites = {
    myFavouriteNumber:42,
    myFavouritePhase:"Hello World",
    myFavouriteBoolean:true,
};

const {myFavouriteNumber,myFavouritePhase} = favourites;
console.log(myFavouritePhase);
```

Again like array destructing you can use this in a function

``` typescript
interface Favourites{
    aNumber:number;
    aString:string;
    aBoolean:boolean;
}
const favourites = {
    aNumber:42,
    aString:"Hello World",
    aBoolean:true,
};

const describe = ({aNumber,aString}:Favourites):string => "number = ${aNumber}\nphrase = ${aString}";
```

## The TypeScript Handbook

More information can be found in the official documentation for TypeScript [here](https://www.typescriptlang.org/docs/handbook/intro.html). There are many features I haven't covered here at all.