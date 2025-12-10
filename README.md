# Flutter
Flutter is a combination of two languages, it is a UI framework as well as a collection of tools. It allows us to have one code base to have a variety of apps that run on any platform. It also have the tools that help in testing, developing and building cross platform applications. The flutter framework let's us create interfaces for multiple platforms from a single interface as well as the tools for running and converting the code different platforms. 

Flutter uses dart language to create user interfaces. 

You can create a flutter project by using the `flutter create app_name` command. White spaces are not allowed in application name. 

To run the application in visual studio code, choose the main.dart file, in the run tab click on run without debugging. If you want to debug the project you can choose to start debugging.

Flutter apps by default uses material design. Material design googles flexible design system. It is a set of suggestions, rules and guidelines that help you build beautiful interfaces. Out of the box this material design offers a clean and minimal interface for your screen without us needing to add styling. But material UI is highly customizable and extendable. 

The most important folder in flutter is lib folder. This folder will have your dart code. Inside this folder we will have the main.dart file. All the code files you create should end with .dart extension. The folders with platform name will have platform specific files. Typically, you don't need to make changes in this. They are managed by flutter. Build folder contains temporary files and output files for the specific platforms. The test folder contains the code for testing the application automatically which avoid the need for testing manually. The pubspec.yaml file lets you add third-party packages into your project.

The dart code you write is not understood by the platforms such as android and iOS. The dart code is parsed from top to bottom and converted native machine code by dart and flutter tools. This code is packaged up and bundled together into highly optimized code bundle and this code bundle is executed on mobile devices on which you ship your code into. 

runApp() is the most important function in the main.dart file. Its responsibility is to show an interface to the user. This function is provided to us by flutter framework. You cannot call the functions directly inside the dart file. Instead, you must use a function. 

To import a package, we can use '' or "" along with the import statement. Inside the quotes we must specify `package:package_name/dart_file.dart` . The basic flutter project requires   
`import 'package:flutter/material.dart';`

**NOTE**: All statements require semi-colon in dart.

You don't call the main function in the dart main app manually. When the dart files get compiled the flutter framework calls this method to execute the code. 

The runApp() function need one argument which is a widget/widget tree this renders the UI on the device. Flutter user interfaces are built with widgets; we often nest/combine widgets in flutter. There are many built-in widgets in flutter. Also, you can create custom widgets.

You can search for _flutter widget catalog_ to see all the widgets available in flutter and their usage. You don't need to memorize all these widgets we only might need to use commonly used 10 or 20 widgets.

The core widget to run a flutter application is `MaterialApp()` widget. We need to pass this as argument to the runApp() function. We must specify opening and closing parenthesis when creating a widget. MaterialApp cannot show anything on the screen by default, to display something we need to pass another argument to this material app widget. 

In dart we can create functions with positional arguments and named arguments. For positional arguments in the function definition, we define arguments normally. But for named parameters we wrap the arguments in {}. When calling the function we can use `argument_name:value` to pass arguments. Example:

```javaScript
void add({num1, num2}){
    num1+num2;
}
void demo(){
    add(num2: 5, num1:3);
}
```

You can make a positional argument optional using the \[\]. We can wrap the argument in the function definition with \[\] for this. We can make arguments required using the required keyword. 

```javaScript
void add(a, [b]) { // b is optional
    print(a + b);
}
void add({required a, required b}) { // a & b are no longer optional
    print(a + b);
}
```

We can mix and match positional and named parameters as needed.

The MaterialApp() has a long list of named parameters which we can pass but most of them are for niche features. The most important one we use is the **home** which will display the Ui.

**Text()** : Is a built-in flutter widget in the flutter library. This widget allows us to display the text on the screen. The text can be passed in either single or double quotes. Since the text string is the first argument we can avoid using the named parameter. eg: `Text('Hello World!');` 

You can use **const** keyword to improve the performance of widgets in flutter. For example:

```javaScript
import 'package:flutter/material.dart';
 
void main(){
  runApp(const MaterialApp(home: Text('Hello, World!')));
}
```

const helps dart optimize the runtime performance. When you run the app the widgets that you created will be placed in the device memory. But when you use the same widget a second time in the app when you use the const keyword it will reference the memory location of the first widget. 

The **scaffold** widget helps you create a good looking screen for your app. Scaffold must be inside the **MaterialApp** widget. And make sure that all the other widgets like text and buttons are placed inside this. We should set the body argument of the scaffold to the widget or widget tree we want to display. Using the scaffold widget we will get a nice white background with some predefined styles for the text. By default every widget like the Text widget is attached to the top left of the screen. To make it align to the center of the screen we can use the `Center()` widget. The center widget required a child keyword argument which we must specify.   
**NOTE**: When building complex widget trees we can add a comma after each widget and utilize the code formatting feature of visual code to make the code more readable. 

```javaScript
import 'package:flutter/material.dart';
 
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello, World!'))),
    ),
  );
}
```

The code will now look like the above.  
Dart is a type safe language, which means all the values you are working with is of a certain type. **Also note that there can be more than one type for a value**. For example the MaterialApp is of type MaterialApp, Widget and Object. A simple string is of type String and Object. A number let's say 29 is of type int, num and Object. There are inbuilt, third party and custom types. Type safety ensures that only values of a particular type can be assigned to a variable. When using variables in our own functions we can specify the type of variable in the function argument before the variable name. Everything is an object in dart.

**NOTE**: If there is a ? beside the type it means that it can have a value of that type or null.

To set a background color for the app we can use the `backgroundColor `keyword argument to the scaffold widget. This needs a color widget as argument. We can create a color using the `Color() `constructor. Alternatively you can use the `Colors `object and access the predefined colors using the . operator. We can also use Color.fromARGB() function to specify the alpha, red, blue and green values to get a color. 

**Container** is a useful widget which is useful for styling components in flutter. Container provides a **decoration** argument. It requires a decoration object which we can set using the BoxDecoration constructor. We can set gradients to the container using the gradient argument. This expects a gradient object. 

Generic types are flexible types that work together with other types but is flexible with which exact type can be provided. We can create a list of all datatypes in dart. When defining a list we must explicitly specify the type using the <type>. By default the linear gradient paints color from left to right. We can change this parameter by using arguments. 

We can use **begin** and **end** arguments with LinearGradient constructor. This expects an **AlignmentGeometry** object. We can use x and y co-ordinates or use . operator to access predefined positions. Our page will now look like:

```javaScript
import 'package:flutter/material.dart';
 
void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: Container(decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
          ],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
          )
        ),
        child: const Center(child: Text('Hello, World!')))),
    ),
  );
}
```

We can also **style** argument to style the text. This expects a **TextStyle** object. We can set the color and font size by passing values to the constructor of this. 

```javaScript
import 'package:flutter/material.dart';
 
void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: Container(decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 140, 95, 204),
          ],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
          )
        ),
        child: const Center(child: Text('Hello, World!', style: TextStyle(color: Colors.white, fontSize: 28.0),)))),
    ),
  );
}
```

The complete code now looks like the above. 

Ideally the best practice is to split your widgets into multiple smaller reusable widgets which lets you manage your code easily. In the above example we can reuse the container widget and all it's children and make it a separate widget. For creating a custom widget we need to create a class.

Dart is an object oriented programming language. So everything is managed with the help of objects. Objects are data structures stored inside of the memory of the computer. Objects contain data(properties) and methods. Object helps with organizing the data and logic separately. We can access the data and methods of an object using the . operator. Classes let's you define the data and methods of an object. 

To create a custom widget you must create a class which extends from **StatelessWidget** and override the **build()** method. The build method is responsible for returning the widget, so the return type of this should be **Widget**. The build method should also have a **context** argument which is mandatory.

```javaScript
class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
  @override
  Widget build(context){
    return Container(decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 140, 95, 204),
          ],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
          )
        ),
        child: const Center(child: Text('Hello, World!', style: TextStyle(color: Colors.white, fontSize: 28.0),
        ),
        ),
        );
  }
}
```

The custom widget looks like above. You can call it using the name. For example: `GradientContainer()`. Also note that when creating custom widgets we must create a constructor which accepts the named argument **key** and pass it to the StatelessWidget. 

This can be done in 2 ways:`  
CustomWidget({key}):super(key:key);`

or   
`CustomWidget({super.key})`   
The above method is recommended because it is much more easier and cleaner.  
You can create multiple constructors with a class. We can call the specific constructor based on the functionality we need.

It is a good idea to split the custom widgets into separate files. The general naming convention is to create a dart file with small letters and words split using \_. When adding custom widgets to separate files we must import the `flutter/material.dart` package. When using the custom widget we must import it. When importing we must use the syntax: `package:project_name/filename.dart` . For example:

```javaScript
import 'package:roll_dice_app/gradient_container.dart';
```

Variables are data containers. Variables are created using the syntax: `var variableName = value;` 

The variable name should start with lowercase. We can declare variables for style elements such as alignment which can be defined at the top of the file. This make it easier to find them and modify them whenever required without navigating through the widget tree to get those values. For example we can use variables to set the alignment of the linear gradient.

```javaScript
var startAlignment = AlignmentGeometry.topLeft;
var endAlignment = AlignmentGeometry.bottomRight;
```

The variables created with var can be reassigned. 

If we assign a value when we define a variable dart will automatically infer the type of the variable. So when you are not assigning values into the variables right away avoid using var keyword. Instead use the type of the data which you want to store into the variable. For example:

`Alignment startAlignment;`   
Will ensure that only values of type Alignment can be assigned into this variable.   
If we add a ? after the type we can make a variable store null. For example:

`Alignment? startAlignment;`   
ensures that the value is either of type Alignment or of type Null. **NOTE**: This should be used carefully.

**final** is another type of variable declaration. If we declare a variable as final it means that the assigned value will never change.   
eg:

`final startAlignment = Alignemt.topLeft;` 

The **const** is essentially same as final. It says that the value assigned to the variable can never be changed. The use of const is recommended to create constant variables because, it provides some additional information. It tells the dart compiler that the variable marked with const is a compiler time constant. That means it's value is locked in.   
We can use **final** in cases where the value needs to derived at runtime. For example we assign the value to the variable by computing the value returned from a function.   
eg:

```javaScript
const startAlignment = AlignmentGeometry.topLeft;
const endAlignment = AlignmentGeometry.bottomRight;
```

You should make the widgets you create reusable. It means that it should be able to accept data from other components and operate itself based upon the data. For example:

```javaScript
import 'package:flutter/material.dart';
 
class StyledText extends StatelessWidget{
  const StyledText({super.key});
  @override
  Widget build(context) {
    return Text(
          'Hello, World!',
          style: TextStyle(color: Colors.white, fontSize: 28.0),
        );
  }
}
```

Consider the above widget. It does not accept any data. It displays the text widget with the data which we have already hardcoded. We can use the constructor of our custom widget to accept data from outside of the class.

We can make the above widget reusable by adding parameters to the construction. If we want to add named arguments, we can pass it inside the {}, or if we want positional arguments we can add them before the {}. It is a good practice to add the type of argument. Even after doing this the variables will not be accessible inside our methods in the class. For this to be available we need to use class variables. i.e we define variables inside the class. To actually assign the value to the variable we can use:

`ClassName(Type argument1,{super.key}): classVariable = argument1;` 

In the case of the above example we can use like:

```javaScript
 StyledText(String text,{super.key}): outputText = text;
 String outputText;
```

This can be simplified using a shorter syntax:

`ClassName(this.argument1, {super.key});`   
This automatically look for the variable with the same name inside of the class. The **this** keyword is crucial here because it refers to the object itself it is referring to.

So we can rewrite the above example like:

```javaScript
  StyledText(this.text,{super.key});
  String text;
```

If we declare the class variable as final we can add const to the constructor. So the complete example will now look like:

```javaScript
import 'package:flutter/material.dart';
 
class StyledText extends StatelessWidget{
  const StyledText(this.text,{super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 28.0),
        );
  }
}
```

We can make the GradientContainer reusable by using:

```javaScript
import "package:flutter/material.dart";
import "package:roll_dice_app/styled_text.dart";
 
const startAlignment = AlignmentGeometry.topLeft;
const endAlignment = AlignmentGeometry.bottomRight;
 
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.gradientColors});
  final List<Color> gradientColors;
  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText("Hello World!"),
      ),
    );
  }
}
```

We can then pass the colors as a list using:

  
```javaScript
GradientContainer(gradientColors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 140, 95, 204),
        ])
```

**since we are using named argument we must use required because named parameters are optional in dart**. If we don't use required we will get an error when we use the gradientColor variable inside the build method. We can avoid this by using positional arguments which are required by default. Lists are mutable in dart, even if we declare them as final. So that is why we can't use const with inside the build method for widgets. We can also avoid this by using individual arguments for individual colors.

To add images to your flutter application we need to first uncomment the assets section inside of pubspec.yaml file. Then place all the images inside of assets folder inside of project root. A good practice is to create an images folder inside of assets folder and place all the images inside.

Then add the relative path of the images under the assets section of pubspec.yaml file like:

```javaScript
  assets:
    - assets/images/dice-1.png
    - assets/images/dice-2.png
    - assets/images/dice-3.png
    - assets/images/dice-4.png
    - assets/images/dice-5.png
    - assets/images/dice-6.png
```

To use these images inside our dart code there are multiple ways. We can use `Image.asset() `constructor which takes in the file name with path as a string. As we know the Image class has multiple constructor implementations.

We can also additional arguments for the assets function such as `width `and `height`. The code will now look like:

```javaScript
import "package:flutter/material.dart";
 
const startAlignment = AlignmentGeometry.topLeft;
const endAlignment = AlignmentGeometry.bottomRight;
 
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.gradientColors});
  final List<Color> gradientColors;
  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:  Center(
        child: Image.asset('assets/images/dice-2.png', width: 200,),
      ),
    );
  }
}
```

**Column()** widget allows you have multiple children widgets above each other. There is also a **Row()** widget which stacks widgets horizontally. We should specify the children argument which is a list.   
There are 3 types of buttons in flutter:

1\. Elevated button: It a has a background color and shadow.   
2\. Outlined button: It has no background color but a border.

3\. Text button: Displays pressable text.   
We can add the image and the button on top of each other using the Column() widget.  
The button widgets have 2 main arguments: the **onPressed** named parameter and **child** which is the child widget. In case of **TextButton()** we pass a **Text()** widget as the child parameter.

We can use functions as values in dart. Functions are also objects in dart. We can define a function and pass the function as argument to another function which expects a function. We can use anonymous function(a function without a name) or a named function to pass it as argument. The **onPressed** argument expects a function as the argument. The function will be called once the button is pressed. 

```javaScript
          TextButton(child: const Text("Roll the dice"), onPressed: (){
            //code to be executed when button is pressed
          },)
```

The above shown is an example of anonymous function.  
alternatively we can define a function like:

```javaScript
  void rollDice() {
    //code to be executed when button is pressed
  }
```

Inside of the class and pass it like: `TextButton(onPressed: rollDice, child: const Text("Roll the dice")),`

  
By default the column widget takes the entire available height of the screen. We can adjust this behavior by specifying the `mainAxisSize`argument. The main axis of a column is the vertical axis. `mainAxisSize.max` is the default value. We can change it to `mainAxisSize.min` . 

**NOTE**: **It is recommended by flutter to keep your child argument as the last argument for a widget.**  
We can style the button using `style` argument which expects a ButtonStyleObject. We can use the `TextButton.styleFrom()` function to override the default behavior of the text button. We can set various style attributes like foregroundColor, textStyle, padding etc. The padding argument expects a `EdgeInsetsGeometry` object.   
Alternatively we can create a `SizedBox()` widget. **We can set the width and height of this widget. To create a padding we can simply create an empty widget with fixed width or height which also works.** 
**NOTE: The sized box has fixed width and height, the sized box will not expand if the content of the**

**content of the child is large. It simply cuts off the content to occupy the predefined size.**

We should not use stateless widgets which has data changes that happens internally. We should use a StatefulWidget. State is data that changes over time and impacts the rendered user interface. If the data changes the user interface should change. We should be careful when using states as we may not need state for the entire widget. We should carefully identify which all widgets need to be re rendered based on the state change and convert them to a stateful widget and use stateless widget for the rest of the widgets. For our example below we should create a dice\_roller dart file and create a stateful widget by extending the `StatefulWidget` class.  
We should not use the build method in this class instead we need to override the `createState()` method.  
This method return a `State` object which is an object provided by flutter. State is a generic value type. We should specify the class name inside of <>. Here we have the DiceRoller class and we need the state of this class. 

From this method we should return an object of this type. This is done with the help of another class which we create inside of the same file. We typically name this class like `_ClassNameState`. In our case we use _\_DiceRollerState._ **The \_ at the beginning of the class indicates that the class is private.** This private class should extend the `State` class. Since state is a generic class we should specify the class name of the class which specified for the createState earlier. We then define the build method in this class like we did for stateless widget. This build method will also return a Widget. After defining the widget inside of return we should return the constructor of this private class inside of the createState method. We then define the constructor the class and pass the super.key argument. We can make this constructor const even though the data changes. This is also not enough to change re render the widget of the screen if the data changes. 

Because changing the value of the variable will not re render the component. We can use the `setState()` method to trigger a re-render. We can use this method inside of classes which extends the `State` class. The setState methods accepts a function as argument, we typically use anonymous functions. Inside of the anonymous function we should set the values of variables whose changes needs to be reflected in the UI. The setState method tells flutter to re execute the build method, flutter execution engine will determine the places where the values need to be updated in the UI and update those places accordingly. The complete code looks like:

```javaScript
import 'package:flutter/material.dart';
 
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
```

  
```javaScript
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-4.png';
  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-2.png';
    });
    print("changing image");
  }
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
```

To generate random numbers we need to use the math module in the dart. For this we need to import it using:  
`import 'dart:math';`   
This is a built in package in dart. We can use the Random() constructor to create an instance of the class. From this we can use the `nextInt()` method to create an integer. The `nextInt()` method requires an argument which is a number which is the limit which is exclusive(less than that number) for example if we pass 10, we will get a random number which is less that 10.

We can inject values into a string using $variable\_name syntax. For example:  
`activeDiceImage = 'assets/images/dice-$diceRoll.png';` 

The function will look like:

```javaScript
  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = diceRoll;
    });
  }
```

This is still not an optimal approach because Every time when we click on the button the rollDice function will get executed and generate a new instance of Random. We can create an object of this Random class outside of the function and make it final. Inside of our method we can just call the nextInt() method on this object. like:

```javaScript
 var currentDiceRoll = 4;
  final randomizer = Random();
  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      currentDiceRoll = diceRoll;
    });
  }
```

We can also define the object outside of the class because anyways it will get executed and we only need it once. 