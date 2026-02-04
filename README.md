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

We can easily style buttons using the `ButtonClassName.styleFrom()` method. For outlined button we can use `OutlinedButton.styleFrom()` . Eg: 

```javaScript
OutlinedButton(onPressed: (){},
          style:OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text('Start Quiz'))
```

You can create a icon button using the `.icon()` constructor. We can use the same properties of the button but we need to use the `label` argument instead of child argument for adding the text. To add an icon we can use the **Icon** widget which is provided by flutter. We can use the Icon widget anywhere inside of the flutter project. It needs iconData argument. We can use predefined icons from flutter using **Icons** class. eg:

```javaScript
OutlinedButton.icon(
            onPressed: () {},
 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
```

We can create a transparent background to the image by wrapping it with the `Opacity` widget. **We should specify the opacity which takes a value between 0.0 and 1.0\. Where 0.0 is completely opaque and 1.0 is completely transparent.** Eg:

```javaScript
Opacity(
            opacity: 0.6,
            child: Image.asset('assets/images/quiz-logo.png', width: 300),
          )
```

This approach is not recommended because it is less performant. 

The Image widget already has a `color `attribute which adds an **overlay** color to the image. We can use `Colors.fromARGB()` method add a color and adjust the alpha value to add transparency. eg:

```javaScript
Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
```

To create the quiz app we need to send the render screens conditionally and navigation from one scree to another screen. For this we need to create 2 custom stateful widgets. A Quiz widget and a Questions widget. The Quiz widget should return a MaterialApp widget which was in the main.dart. Then call the Quiz widget inside of the `runApp()`. The main.dart file will now look like:

```javaScript
import 'package:advanced_basics/quiz.dart';
import 'package:flutter/material.dart';
 
void main() {
  runApp(
    const Quiz(),
  );
}
```

And the Quiz.dart file will look like:

```javaScript
import 'package:flutter/material.dart';
import 'package:advanced_basics/start_screen.dart';
 
class Quiz extends StatefulWidget{
  const Quiz({super.key});
 
  @override 
  State<Quiz> createState(){
    return _QuizState();
  }
}
```

```javaScript
class _QuizState extends State<Quiz>{
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 95, 49, 173),
                Color.fromARGB(255, 93, 61, 147),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: StartScreen(),
        ),
      ),
    );
  }
}
```

To enable navigation between screens we need to know about 2 main concepts.

1\. Rendering content conditionally: We can store widgets in variables. For example we can store a widget like:

`var activeScreen = const StartScreen();  
`But when changing the activeScreen value to something like:

```javaScript
void switchScreen(){
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }
```

Will not work. Because when we first initialize the activeScreen as StartScreen, it will also assign the type to StartScreen. To avoid this problem we can use :

`Widget activeScreen = const StartScreen();  
`This will fix the issue of type mismatch.  
When we use the setState() method inside of a class which extends state, it will reexecute the build method. After this it will compare the results of this with the previous execution and apply only the necessary changes to the screen.

2\. Lifting state up: In our current scenario we have the Start Quiz button which is in the start screen. 

when clicking on the button the screen should change to QuestionsScreen. So we have 2 widgets that should work with the same data. The solution is to lift the state up. i.e, we can move the state inside of a shared parent widget like the Quiz widget we can define the state and methods to manipulate the state we can conveniently move between widgets to render content conditionally. **NOTE:** The child widget need access to both the state and the method to manipulate the state. Also when we pass methods as arguments to a widget we must not specify the parenthesis () .  
In the child widget we must specify the argument in the constructor. The type of this should be a function. Since the type of our switchScreen function is void we should also specify that. 

```javaScript
  const StartScreen(void Function() startQuiz,{super.key});
```

The Function is a special type in dart. **Note the () at the end of Function**.. If there are argument we should specify them in between the ().

We must also accept the argument to a variable inorder to use it inside of the class. For this we can use the shortcut method like:

```javaScript
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
```

This avoids defining the type inside of constructor but we must define the type when accepting it into a final variable. To call this function inside of our button's onPressed argument, we can create an anonymous function to call this method or pass the pointer directly as argument. 

```javaScript
class _QuizState extends State<Quiz>{
  Widget activeScreen = StartScreen(switchScreen);
  void switchScreen(){
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }
```

There is still a problem with the above code because the switchScreen method is passed before definition of the function. To get around this we can override the `initState()` method of the State class. This method can be used to do some extra initialization work when the state is created for the first time. 

initState() will execute once the object of the class has been created. It will never execute twice. This is useful for some general initialization work. The first line of this method should be `super.initState()`   
The class will now look like:

```javaScript
class _QuizState extends State<Quiz>{
  Widget? activeScreen;
 
  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }
  void switchScreen(){
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }
  @override
  Widget build(context){
    .......
}
```

**NOTE:** The use of ? when declaring the activeScreen object. We use ? to indicate that the object may be null.

Every Flutter Widget has a built-in **lifecycle**: A collection of methods that are **automatically executed** by Flutter (at certain points of time).

There are **three** extremely important (stateful) widget lifecycle methods you should be aware of:

* `initState()`: Executed by Flutter when the StatefulWidget's State object is **initialized**
* `build()`: Executed by Flutter when the Widget is built for the **first time** AND after `setState()` was called
* `dispose()`: Executed by Flutter right before the Widget will be **deleted** (e.g., because it was displayed conditionally)

Alternatively we can render conditionally by using the ternary expression, thus removing the need for using the initState function. Instead of storing the actual screen in the variable, we could store a string like :

`var activeScreen = 'start-screen';`   
In the switchScreens method we can set the activeScreen variable to something like: 'questions-screen'. Since we are initializing a string we don't need to use initState method. The code will look like:

```javaScript
  var activeScreen = 'start-screen';
  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
```

We can use the ternary operator like:

```javaScript
 child:  activeScreen == 'start-screen'? StartScreen(switchScreen) : QuestionsScreen(),
```

This is a bit more cleaner and requires less code.

Using the ternary operator can also make the code harder to read. Alternatively, we can use if statement inside of the build method. We can define a variable inside of the build method, like:

```javaScript
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen();
    }
```

For the widget we can pass like:   
`child: screenWidget,  
`The entire build method will look like:

```javaScript
Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen();
    }
    return MaterialApp(
          ....
          child:  screenWidget,
        ),
      ),
    );
  }
```

you may also use `if` inside of lists to conditionally add items to lists:

```javaScript
final myList = [  1,  2,  if (condition)    3];
```

In this example, the number `3` will only be added to `myList` if `condition` was met (`condition` can be `true` or `false` or a check that yields `true` or `false` \- e.g., `day == 'Sunday'`).

Please note that there are **NO curly braces** around the `if` statement body. The `if` statement body also only comprises the next line of code (i.e., you can't have multiple lines of code inside the `if` statement).

You can also specify an `else` case - an alternative value that may be inserted into the list if `condition` is not met:

```javaScript
final myList = [  1,  2,  if (condition)    3  else    4];
```

  
Using this feature is optional. Alternatively, you could, for example, also work with a ternary expression:

```javaScript
final myList = [  1,  2,  condition ? 3 : 4];
```

Especially when inserting more complex values (e.g., a widget with multiple parameters being set) into a more complex list (e.g., a list of widgets passed to a `Column()` or `Row()`), this feature can lead to more readable code.

To store the questions and answers we can create a class in a new file inside the models folder inside of lib. This is not a widget but a blueprint for the question data structure. We can create a class with question text and answer options like:

```javaScript
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
}
```

Then we can create an additional helper file to store the data by calling the constructor of this class. It will look like:

```javaScript
import 'package:advanced_basics/models/quiz_question.dart';
const questions =[
  QuizQuestion('What are the main building blocks of flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),
];
```

It is assumed that the right answer is the first option. When providing the options to the users we will shuffle the options and display it to the users so that it will not be predictable.

**NOTE**: To make sure that a component takes up maximum available screen space, we can wrap them up in Center as we learned from earlier. Alternatively, we can use `SizedBox()` to wrap everything and define the width and height as `double.infinity` , which takes up the maximum available space. Then for the column we can specify the `mainAxisAlignment `argument for the column we can set it into center by using `MainAxisAlignment.center` . By using this approach we can use mainAxisAlignment attribute to align the components.   
Now the example class will look like:

```javaScript
class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text('Question'),
          SizedBox(height:30),
          ElevatedButton(onPressed: (){}, child: Text("Answer 1", )),
          ElevatedButton(onPressed: (){}, child: Text("Answer 1", )),
          ElevatedButton(onPressed: (){}, child: Text("Answer 1", )),
          ElevatedButton(onPressed: (){}, child: Text("Answer 1", )),
        ]
      ),
    );
  }
}
```

We have 4 buttons for the 4 options. We can style them individually, but it is a good idea to create a reusable button widget. We can use the `shape` attribute of inside the button style from constructor to define the border shape of the button. We use the RoundedRectangleBorder() constructor inside which we specify the borderRadius argument which accepts a BorderRadius object.   
To add padding to the buttons we can use the padding argument similarly. This accepts a EdgeInsets object. We can use various constructors of this class to set padding in different ways, we can use the symmetric constructor to set the horizontal and vertical padding separately. The class will now look like:

```javaScript
class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });
 
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(onPressed: onTap, 
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 76, 16, 87),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
    )
    ,child: Text(answerText));
  }
}
```

We can access items from the list like accessing the elements from the array. For example if we have a list like:

```javaScript
const hobbies = ['cooking', 'reading'];
print(hobbies[0]); //will print 'cooking'
```

If we specify an index that does not exist we will get an error. 

  
Lists has a wide variety of methods that can be called on them. map() method allows us transform the values of the list to other values. It takes function as argument. The function will be executed for each list item. The function will also get the list item as an argument. The function in the map should return an item which was based on the old item of the existing list. This will not change the original item of the list. We can use the map method to list of answers. So we can use like:

```javaScript
          currentQuestion.answers.map((answer){
            return AnswerButton(answerText: answer, onTap: (){},);
          }),
```

But this will not work because this returns an iterable. The children argument of flutter widgets should be widgets not list of widgets. We need to spread this list so that individual widgets are returned from the list. This can be done by using the spread operator, i.e. `...` . In our case we can use:

```javaScript
...currentQuestion.answers.map((answer){
            return AnswerButton(answerText: answer, onTap: (){},);
          }),
```

  
To stretch the widgets correctly across the screen we can use `crossAxisAlignment` argument for the column widget to `CrossAxisAlignment.stretch` . This will fill the items with entire screen width, we can fix this by adding a padding or margin around the column. The column does not have a margin, so we need to wrap the column with a Container widget.   
**NOTE:** If we need to center the text, we should use the `textAlign` property of the `Text()` widget, we should not use it inside TextStyle. The widgets will now look like:

```javaScript
Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text, style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            SizedBox(height: 30),
            ...currentQuestion.answers.map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            }),
          ],
        ),
      )
```

List also has a `shuffle()` method which can be called on a list. But this changes the original list. So we need to copy the list before shuffling because we have stored the correct answer in the first index. To perform this we can create a function inside of the QuizQuestions class. List is also a class in dart so we can access methods in this class using . operator. We can use `List.of()` method to create a new list based on the passed list. We can create new list and shuffle the list by chaining methods together. This is possible in dart.   
`List.of(answers).shuffle();`   
is perfectly valid in dart. But the problem here is that the shuffle will not return a value. It just shuffles the data in place.

```javaScript
  List<String> getShuffledAnswers() {
    final List<String> copyOfAnswers = List.of(answers);
    copyOfAnswers.shuffle();
    return copyOfAnswers;
  }
```

This will work fine. In the above case you might wonder that we performed the shuffle on a list declared as final. 

note that final will only prevent re-assignment. We are performing this operations in memory so this will not re-assign. We can call the above method in our questions screen like:

```javaScript
...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            }),
```

The next step is to change the question once the current question is answered. We can do this managing the question index in a state. We also need a way to increment the question index. 

```javaScript
  var currentQuestionIndex = 0;
  void answerQuestion(){
    setState(() {
      currentQuestionIndex++;
    });
  }
```

And in the build method we can pass this function to the button's onpressed. like:

```javaScript
children: [
            Text(currentQuestion.text, style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion);
            }),
          ]
```

We can add google fonts to our flutter project by installing the google fonts package. The command is:  
`flutter pub add google_fonts`   
This will automatically add the dependency in pubspec.yaml file. To use the fonts we need to import the google\_fonts dart file in the file which you want to use the font.

`import 'package:google_fonts/google_fonts.dart';` 

In the style attribute of text widget we must pass the property as `GoogleFonts` . Under this there are various methods corresponding to various font families that we can use. Eg:

```javaScript
            Text(currentQuestion.text, style:  GoogleFonts.lato(
              color: const Color.fromARGB(255, 87, 152, 237),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ), textAlign: TextAlign.center,)
```

The next step is to store the answers and navigate to the results screen once we exhausted the number of questions. Also we need to store the chosen answers. This can be maintained as a state in the Quiz widget. We can define an empty list of strings to store selected answers. The list has build-in method called `.add()` which lets you add new items, this happens in memory without re-assignment. We can create a function that takes in the answer and add it into the variable which maintains the selected answers. We define this function inside of the Quiz widget and pass the function as argument to the question screen.

We can use the widget object in a class which extends the State class. By using this object we can access the variables and methods defined in the class. For example we have an `onSelectedAnswer()`function in 

```javaScript
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});
 
  final void Function(String answer) onSelectedAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}
```

To access this inside of `_QuestionsScreen` class we can use:  
` widget.onSelectedAnswer('...');`   
After this we can modify the `answerQuestion()` method to accept the selected answer. This can be done by modifying the `onTap` argument of the `AnswerButton` widget.

```javaScript
return AnswerButton(answerText: answer, onTap: (){
                answerQuestion(answer);
              });
```

The answerQuestion will be like:

```javaScript
  void answerQuestion(String answer){
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }
```

We can check if the user has answered all questions by checking the length of `selectedAnswers` list and questions list. If they are same we can set the `activeScreen` to result screen. We can do this inside of `selectedAnswer()` method. Since we have not yet implemented the result screen we can use navigate back to the start screen for now. Also we need to reset the selectedAnswers list. The method will now look like:

```javaScript
 void selectedAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }
```

**NOTE:** We should change the final from the `selectedAnswers` list so that it can be redefined to empty.

To display the results we can create a stateless result\_screen widget. We can easily pass the chosenAnswers list to the result screen widget.

The next step is to display the summary. We need a Map datatype for this. Map is a data structure which maps values to keys. It is a generic type in dart where we should specify the type of key and the type of value. We can use regular data types in dart or use the Object datatype if you are unsure about the type. Since all dart objects will have the object type.   
Dart also supports Loops. The syntax is :

```javaScript
for(helper_variable intialization; condition for loop execution; increment/decrement){
//body of the loop
}
```

We can use the for loop to iterate over the chosen answers and create a summary.  
We use the `{}` to create a map. In between these we assign the values as key value pairs. We use the `:` symbol to assign data in a map. The `getSummaryData` function will look like:

```javaScript
  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];
    for(var i=0; i<chosenAnswers.length; i++){
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        }
      );
    }
    return summary;
  }
```

  
The Row widget is the horizontal equivalent to the column widget. It's main axis is horizontal axis and cross axis is vertical axis. By default it occupies entire available width. We can easily convert an iterable to a list by calling the `.toList()` method. To display the question index we cannot use   
`data['question_index']+1`   
Because here the question\_index is stored as object. So adding 1 to this will result in an error so we need to explicitly cast it to integer so that we can get the correct index. To display this on a widget like text widget we again need to cast it to string. We can use :

```javaScript
          Text(((data['question_index'] as int)+ 1).toString())
```

We are converting the question\_index to integer and then adding 1 and converting to string.  
We use the **as** keyword for typecasting in dart. The syntax is:  
`variable as type`   
We normally don't need to use typecasting but when we are working with maps which store different types of data we use type casting. 

We can use column widget inside of row widget. The entire Questions Summary widget looks like:

```javaScript
 Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data){
        return Row(children: [
          Text(((data['question_index'] as int)+ 1).toString()),
          Column(children: [
            Text(data['question'] as String),
            SizedBox(height: 5,),
            Text(data['user_answer'] as String),
            Text(data['correct_answer'] as String),
          ],)
        ],);
      }).toList(),
    );
  }
```

The Expanded widget is used to take up maximum amount of available width. If we don't use expanded the Column widget will take infinite amount of width and go beyond screen boundaries. **Expanded allows its child to take the available space along the flex widgets main axis.** The maximum width of a row widget is the maximum screen width. The maximum height of the column widget is the height of the screen. So if we use expanded to wrap a column it cannot take more than the available space provided by the parent widget. 

To find the number of correct answers we can use the built-in `where()` method on the summaryData. It is a method provided by dart to filter the list, it does not change the original list. It creates a new list and returns it. It also requires a function as argument which will be executed for each item in the list. We will get the item of list as argument for this function. If the function returns true that item will be added to the new list. If it is false it will be dropped from the new list. Example:

```javaScript
    final int numCorrectQuestions = summaryData.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;
```

To set a fixed height to a widget we can use the SizedBox. But this might content off. We can avoid this problem by using a `SingleChildScrollView`. It makes the child scrollable. eg:

```javaScript
SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
            return Row(children: [
              Text(((data['question_index'] as int)+ 1).toString()),
              Expanded(
                child: Column(children: [
                  Text(data['question'] as String),
                  SizedBox(height: 5,),
                  Text(data['user_answer'] as String),
                  Text(data['correct_answer'] as String),
                ],),
              )
            ],);
          }).toList(),
        ),
      )
```

* If we add an \_ before the class name, it makes the class private. It means that that class will be accessible only from the file where we defined the class.
* We can use the underscores to make properties and methods private by adding underscores before their name. We can make the class public and the properties and methods private.
* Getters are specific methods which lets you access the data. It will not take in any arguments. We can define getters by adding the `get` keyword before the method name.  
eg:  
```javaScript  
 List<Map<String, Object>> get summaryData {  
    final List<Map<String, Object>> summary = [];  
    ....  
    }  
```  
When we define like this we don't need to call the summaryData like a method. We can use it like a variable like:  
`final summary = summaryData;`  
We can use it like property but internally it behaves like a method.  
**NOTE:** We should not add parenthesis to getter methods.

* Arrow functions are functions which takes in an input parameter and immediately return the output. For example we had:  
```javaScript  
summaryData.where((data) {  
      return data['user_answer'] == data['correct_answer'];  
    }).length;  
```  
We can change this into:  
```javaScript  
summaryData.where((data) => data['user_answer'] == data['correct_answer']).length;  
```  
The above shown is the arrow function. Using it is optional, but it makes the code concise and readable.

When downloading project zip files you should first run   
`flutter pub get`  
Then you need to run   
`flutter create .`  
inside of the project folder, so that all the relevant folders are created for the platforms for the project.

In the project when we run it works fine until it reaches result screen. In the result screen it will show:  
`Type String is not subtype of int.`   
When you restart the quiz and try again you will get :  
`RangeError (length) : invalid value not in inclusive range.` 

  
You will get these error messages on screen when you are in development mode. In production if any error occurs it will simply crash. We can analyze these error messages and find the problem. In the debug console of visual studio code we will get more details of the error message including the file name and line number. To launch the debug mode open the `main.dart` file in vscode and on the top right you will se an option to run debug. This will launch the application in debug mode. The error message will be like:

```javaScript
═══════ Exception caught by widgets library ═══════════════════════════════════
type 'String' is not a subtype of type 'int' in type cast
The relevant error-causing widget was:
 SummaryItem SummaryItem:file:///C:/Users/pgsan/OneDrive/Documents/Flutter/flutter_projects/debugging/lib/questions_summary/questions_summary.dart:18:22
════════════════════════════════════════════════════════════════════════════════ 
```

```javaScript
════════ Exception caught by widgets library ═══════════════════════════════════
type 'String' is not a subtype of type 'int' in type cast
The relevant error-causing widget was:
 SummaryItem SummaryItem:file:///C:/Users/pgsan/OneDrive/Documents/Flutter/flutter_projects/debugging/lib/questions_summary/questions_summary.dart:18:22
```

The error indicates that the value we are using thinking that it is a integer is actually a string. We can see that the error originated from ` return SummaryItem(data);  
`of `question_summary.dart` file. This is a constructor of `SummaryItem`. So we can assume that the error is originating from this widget. And we can see that we mistakenly used the `question `index of the map instead of `question_index `so that it is throwing this error.

```javaScript
QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question'] as int,
          )
```

This error happened because we specified the value type as Object, due to this the dart will not flag this error when writing the code. It will raise an error only at the runtime when the value is accessed and casted to an unsupported type. 

```javaScript
════════ Exception caught by widgets library ═══════════════════════════════════
The following RangeError was thrown building QuestionsScreen(dirty, state: _QuestionsScreenState#892e3):
RangeError (length): Invalid value: Not in inclusive range 0..5: 6
The relevant error-causing widget was:
 QuestionsScreen QuestionsScreen:file:///C:/Users/pgsan/OneDrive/Documents/Flutter/flutter_projects/debugging/lib/quiz.dart:48:22
```

We don't typically run our application in debug mode because it might slow the application down significantly. We only use this mode to trace out errors in the code. When running the application in debug mode we can use break points. 

We can use the debug mode to see the values stored inside of variables when the program is running. We can right click on properties or variables and click on watch option to see the changes in the values in real time in the watch window. Apart from the watch window there are windows for local variables which tracks the values of the local variables. Call stack shows the methods called behind the scenes. If there is an error in the app, when running in debug mode the execution will be paused on the line where the error occurred even if there is no breakpoint. 

The error we are encountering here is because we never reset the selected answers list when clicking on the restart button. This causes 

```javaScript
if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'results-screen';
      });
    }
```

This condition to fail and the navigation to the results screen does not happen. So to fix this issue we should rest the selectedAnswers list to empty when clicking on restart quiz button.

**To check the performance of the application we can use the profile mode. We can do this by running the main.dart file in profile mode.**   
**We can open the flutter dev tools in visual studio code command palette. Search for flutter dev tools and you will see the option to open the dev tools in web browser.**   
In the dev tools there is flutter inspector. Inside this we can see the currently rendered widget tree. We can select each individual widget and learn more about them. For widgets like Row and Column we can use the inspector to adjust the alignment of main axis and cross axis in real time. You can also select the widget from the emulator screen and view the widget in the inspector.

We can also use guidelines to see the alignment of items. You can click on the image icon in the flutter inspector to see the images that are using too much memory. 

We typically use models folder to handle the data models required for the application. Flutter has the `DateTime` type which lets us store date information. It is a built in type and we don't need to import anything.  
We can generate unique id using the uuid package. To use this we need to install uuid. The command is :  
`flutter pub add uuid`   
After this we can import the uuid.dart file from the uuid package. We then need to instantiate an object of the Uuid class globally in your dart file.   
Dart support Initializer lists with constructors which lets you define attributes of objects which are not received through constructor arguments. We can use this to generate a unique id for a new object.   
To create a unique id we call the `v4()` method of the uuid object. For example:

```javaScript
import 'package:uuid/uuid.dart';
 
const uuid = Uuid();
 
class Expense {
  Expense({required this.title, required this.amount, required this.date})
    : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
```

To store category information we can use a string attribute inside of our class but this is error prone because this attribute can have any valid string value, if there is a typo in the category we passed to the constructor we might lose valid information when we use the data. To avoid this problem we can create a list of allowed values to chose from. We use the **enum** keyword lets us create a custom type to solve our above problem. It supports a combination of predefined allowed values. We define the allowed values between `{}` . **NOTE:** We should not use quotes for allowed values, also there should not be any semi-colon after the closing brace.   
Eg:  
`enum Category{food, travel, leisure, work}  
` After adding the enum type the class will now look like:

```javaScript
import 'package:uuid/uuid.dart';
 
const uuid = Uuid();
enum Category{food, travel, leisure, work}
 
class Expense {
  Expense({required this.title, required this.amount, required this.date, required this.category})
    : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
```

If you have a list of widgets you want to display and you don't exactly know how many items (unknown length) will be there using a `Column` widget is not recommended. Because all the widgets defined under the column widget will be created once the column widget is active. If there are 1000 items in the list it will be created behind the scenes when the column widget is active on the screen. Only a small number of items are needed at a time because the screen cannot display the entire list at a time. It will cause performance issues. To handle these situation flutter gives us the `ListView` widget.

`ListView` can be created like normal widgets and we can pass the children argument. This will create a scrollable list. This also create all the child widgets at runtime which defeats the purpose.   
**We should use the** `**ListView.builder()**` **constructor function. This instructs the flutter to create a scrollable list but only create them when they are about to become visible on screen.** 

This function takes in an item builder parameter to which we should pass a function. The function should take in 2 parameters and should return a widget. **The parameters are context object and the index value which is automatically provided by flutter, so we simply pass it.**  
We should also pass the `itemCount` parameter to the listview builder constructor. This is required to get the number of items that should be displayed in the list. The itemBuilder function will be called as many times as the defined itemCount. The example will look like:

```javaScript
Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Text(expenses[index].title),
    );
  }
```

This approach significantly improves the performance of the application by creating items only when needed.

**NOTE:** If you have nested list widgets you will surely run into problems because flutter may not know how to size them correctly. To avoid this we should wrap the inner list widget in the Expaneded widget. eg:

```javaScript
return Scaffold(
      body: Column(children: [Text('Chart'),
      Expanded(child: ExpenseList(expenses: _registeredExpenses)),
      ]),
    );
```

**You should keep the build method of each flutter widget lean as possible. If you split complex widgets to multiple sub widgets.** 
If you have many widgets, you can create a widgets folder inside which we can create sub folders for respective widgets.

**Card** is built in widget in flutter which adds a container, a subtle elevation and a shadow. It makes the content look stylish and elegant. It also automatically add a small top and bottom margin. The card widget takes in a `child` parameter. eg:

```javaScript
 Widget build(BuildContext context) {
    return Card(child: Text(expense.amount.toString()),);
  }
```

**NOTE:** Card has a margin parameter but not a padding parameter. To add a padding inside of a card we should wrap the child with a `Padding()` widget. Flutter provides a `symmetry()` functions with the `EdgeInsets` constructor which allows to have symmetric padding or margin horizontally and vertically.

We can use `.toStringAsFixed()` methods to convert numbers with decimal places (double) to string with fixed number of decimal places. For example if we have a value like 12.3433 it will be diplayed like: 12.34 if we pass 2 to this method.   
If we need to display $ sign inside of a string We should use the extended string interpolation syntax which is : `${}` . Also we must escape the $ symbol with \\.  
For example:  
` Text('\$${expense.amount.toStringAsFixed(2)}'),` 

The **Spacer** widget can be used in any column or row to tell flutter to create all the space it can get between other widgets. This can be used to push the remaining widgets to left and right for a row widget. eg:

```javaScript
Row(children: [Text('\$${expense.amount.toStringAsFixed(2)}'),
             const Spacer(),
             Row(children: [
              Icon(Icons.alarm,),
              SizedBox(width: 8,),
              Text(expense.date.toString())
             ],)
            ],
            )
```

When we convert the `DateTime` object to a string it will display the entire timestamp this is not desired in UIs where we want to display just the date. Also we can add icons to the expense model so that we can distinctly identify them easily. For this we can create a constant inside the model class. We can create a map with the enum values of category as key and the value would icons from the built-in class. We can format the date from the class expense class itself by using a getter. **In flutter getters are computed properties i.e, properties that are dynamically derived based on the class properties.**   
Formatting date by just using dart is quite cumbersome, so we can use a third party flutter package called intl. To install it:

`flutter pub add intl`   
And we can import it like   
`import 'package:intl/intl.dart';`   
In this package we have the `DateFormat` class, to this class we have the `yMd()` constructor which creates a formatter for year, month and date.

There are multiple constructors available in this class which we can use. We can initialize the formatter object outside of the model class as a final object. Then inside of the getter we can use this object's format method and pass the date property to it. The model class will now look like:

```javaScript
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
 
final formatter = DateFormat.yMd();
const uuid = Uuid();
 
enum Category { food, travel, leisure, work }
 
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};
 
class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
 
  String get formattedDate {
    return formatter.format(date);
  }
}
```

The `Scaffold` widget also has the `appBar` parameter which we can use to set app bar for our application. App bar takes in a `PrefferedSizeWidget` . We can use the `AppBar()` widget for this. For appbar we need to specify the actions which takes in a list of widgets. This is typically used to display buttons in top app bar. `IconButton` is used to show an icon on the button. The `AppBar()` widget automatically allocates space for the the appbar to align nicely on the screen. The appbar also support title which sets a title for the app bar. This takes in a Text widget. The code will now look like:  

```javaScript
return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          Text('Chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses)),
        ],
      ),
    );
```

To make the icon button of the app bar functional we can create a function which opens a modal overlay. Inside the function we need to call `showModalDialogBottomSheet()` . This is provided by flutter. We should pass `context` and `builder` arguments for `showModalBottomSheet` widget. The context argument is automatically available even though we are outside of the build method. This is because we have a global context object available inside of a class which extends the State class. **context object can be thought of as a collection of metadata managed by flutter that belongs to a specific widget (every widget has it's own context object). It also has information of the position of widget in the overall widget tree.** 
**Whenever you see a builder argument in flutter we must pass a function.**   
The builder function will automatically get the context object which we must accept it through the function argument. This object will be available throughout the modal. 

This function is responsible for rendering the widget once the modal is opened. The code will look like:

```javaScript
  void _addExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx)=> Text('Modal Bottom Sheet'));
  }
```

This will display a tiny text at the bottom of the screen. Once you press the backdrop it will close the model.

The `TextField()` widget provides a way to get text input from the user. We can pass `maxLength` argument to this widget to restrict the maximum number of characters allowed to this input. We can also specify the `keyboardType` argument to specify the type of keyboard layout such as number input, email input, phone input etc. The default type is Text which allows any characters by providing the standard qwerty keyboard. The `decoration` parameter is used to provide a label for the text field. It requires an `InputDecoration` object. We can create it with a `InputDecoration` constructor to which we pass the `label` argument. This argument is the text we display as the label for the text field, we use the Text widget to create the label text. The example of a TextField widget will look like:

```javaScript
const TextField(
          maxLength: 50,
          decoration: InputDecoration(
            label: Text('title'),
          ),
        )
```

We can save the entered value entered to the textfield by passing the `onChanged` parameter. This parameters expects a function. We can either define an anonymous function which accepts a string or create a function and point it. The function will look like:

```javaScript
 var _enteredTitle = '';
 
  void _saveTitleText(String inputValue) {
    _enteredTitle = inputValue;
  }
```

We pass the argument as:

```javaScript
TextField(
            onChanged: _saveTitleText,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('title')),
          )
```

We may need to use state as we are not displaying the text anywhere else in the app for now. 

The above shown is one way of storing the user input. It can be cumbersome to store and manage all the inputs like that. Alternatively, we can create a final property inside of the class which is an object of `TextEditingController` class. This is a class provided by flutter. This object optimizes the collection of user input, we can pass this object to the text field to do all the heavy lifting of storing and entering the values and so on.   
**NOTE:** When you create a TextEditingController object you should tell flutter to close it, otherwise it will remain in memory even if the widget is not active on the screen. We should override the **dispose()** method which is a life cycle method which destroys the created object in the state when it is no longer required by the UI, this is automatically called by flutter. **Only widgets which extends State class can implement the dispose method.** The code will look like:

```javaScript
  final _titleController = TextEditingController();
 
  @override
  void dispose(){
    _titleController.dispose();
    super.dispose();
  }
```

After adding this you don't need an `onChanged` parameter to accept input. You need to pass the controller argument which points to the text editing controller object that you created. So the code will be like:

```javaScript
TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('title')),
          )
```

To access the text from the controller object we can simply refer to the text property of the text controller object that you have created. It will be like:  
`print(_titleController.text);` 

We can set the prefix text to a `TextField` by defining `prefixText` argument to the `InputDecoration` constructor. This will show the prefix once the particular text field is on focus. Eg:

```javaScript
TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('amount'),
              prefixText: '\$',
            ),
          )
```

To close the modal manually upon pressing on a button we can use the `pop` method of the `Navigator` class. This method requires the context object which we automatically get. We can call this function on button press to close the current context(i.e, modal) when the button is pressed. The example code will look like:

```javaScript
             TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('cancel'),
              )
```

**If we wrap TextField inside of a Row there will be conflict on the space allocation so we should wrap the TextField widget inside of the Expanded widget. This way we can split the space of a row 2 or more TextFields.**

There is no default DatePicker widget in flutter, but we can easily create one. We use a text widget to display the date and a button on which we press to open the date picker. This will be done through a function which will be called on the button press. Inside this function we can call the showDatePicker() method. This takes in the `context`,` initialDate`,` firstDate` and `lastDate` as argument. All of these requires datetime objects as arguments **except for context**. The code will look like:

```javaScript
  void _presentDatePicker(){
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    showDatePicker(context: context, initialDate:now, firstDate: firstDate, lastDate: now);
  }
```

The `showDatePicker` method returns a `DateTime` object which is of type `Future`. It is used to store values that comes in future. It acts as a wrapper to store a value you not yet have but which you will have in the future. On the future object we can call the **.then()** method which takes in a function. This function will get the value automatically when the future object has a value. Commonly we use anonymous functions.   
Another way is to mark the function as async and specify the await keyword infront the the method which returns a future object.  
syntax:

```javaScript
return_type func_name(arguments....) async{
    final value = await method_which_returns_future_obj();
    //code to be executed after the value is obtained
}
```

Internally when a function call is marked as await flutter tells to wait for the function to return the value as the value might not be available right away. The remaining lines of the function code will be executed only once the value is obtained from the method marked with await.

We can use update the modal screen when the date is picked by using setState. The method will now look like:

```javaScript
DateTime? _selectedDate;
  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );
    setState(() {
      _selectedDate = pickedDate;
    });
  }
```

We are putting a `?` after the DateTime to indicate that the value can be null. In the widgets UI we can use:

```javaScript
                   Text(
                      _selectedDate == null
                          ? 'No date selected'
                          : formatter.format(_selectedDate!),
                    )
```

We can create a drop down button using the `DropdownButton` widget in flutter. It has 3 arguments `value`, `items` and and the `onChanged` . The onChanged argument expects a method with an argument of `dynamic` type. The items argument requires a List of `DropdownMenuItem<Object>` . We already have a list of categories as an enum, to convert a list of one type of another we can use the map method on the enum object. Inside the map method We can create an object of `DropdownMenuItem` . We can access the name attribute of the category inside of the map to pass it as an argument to the `DropdownMenuItem` constructor. Finally we need to call the `.toList()` method on the map method to make it is a list instead of an iterable. The `value` argument is used to set the selected value internally upon selection of the option. We can set the selected value variable to this.  
**To actually store the selected value we need to use a variable as the DropdownButton does not have a controller.** 

We can create a new variable for storing the category in the class and assign it a default category initially. We then need to use the `setState` method to set the selected category to the variable and store the value into a variable.   
**NOTE:** The `DropdownMenuItem` requires a value argument also.   
The code will look like:

```javaScript
  Category _selectedCategory = Category.leisure;
```

```javaScript
DropdownButton(
  value: _selectedCategory,
  items: Category.values
      .map(
        (value) => DropdownMenuItem(
          value: value,
          child: Text(value.name.toUpperCase()),
        ),
      )
      .toList(),
  onChanged: (value) {
    if (value == null) {
      return;
    }
    setState(() {
      _selectedCategory = value;
    });
  },
)
```

We must validate the input from the user before submitting the data. For this we can create a helper function to validate the input of each respective field.   
We can convert the string of the amount field to a number using `double.tryParse()` method. **This takes in a string value and try to transform it into a number, if it is not able to convert the string into a number it will return null.** 
We use **&&** and **||** operators to check multiple conditions in dart, which is similar to other programming languages.

We can show error messages as a pop up using the `showDialog()` method. It requires a `context `value and a `builder` function as argument. The builder function should take in a `context` object as input and return a widget as output. The widget that you return should be the built-in `Dialog` widget. The `AlertDialog()` is a built in widget which returns a dialog optimized for alerts. This widget needs a `title` argument which is typically a text widget which specifies the title of the error message. We also need to pass the `content `argument, which defines the description of the error message. The `actions` parameter takes in a list of actions that can be performed on the dialog. The whole function will look like:

  
```javaScript
void _submitExpenseData(){
    final enteredAmount = double.tryParse(_amountController.text);
    final amountIsInvalid = enteredAmount == null || enteredAmount <= 0; 
    if(_titleController.text.trim().isEmpty || amountIsInvalid || _selectedDate == null){
      //show error message
      showDialog(context: context, builder: (ctx)=>AlertDialog(title: const Text('invali input'),
      content: const Text('please make sure a valid title, amount, date and category was entered'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(ctx);
        }, child: const Text('Ok'))
      ],
      ));
      return;
    }
 
  }
```

We also need to make sure that this function is called when we the submit button is pressed.

```javaScript
ElevatedButton(
  onPressed: _submitExpenseData,
  child: const Text('save expense'),
)
```

To make the modal full screen we pass the `isScrollControlled` parameter to true `showModalBottomSheet()` method so that the modal takes the full available height. Additionally we can adjust the padding of the widget so that the UI components of the modal are not hidden. 

To make sure that the list items are swipe-able we can wrap out list item with `Dismissable()` widget. It requires a child which is the list item, it also needs a key. Keys are provided in flutter to make widgets uniquely identifiable. Such a key can be created for the Dismissable widget using the `ValueKey()` constructor function. For most of the widgets we may not need to use the key, but here it is crucial because we need to make sure that the correct data is deleted. Here we can pass the particular expense object. The implementation will look like:

```javaScript
Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenses[index]),
        child: ExpenseItem(expense: expenses[index]),
      ),
    );
  }
```

This make the list item swipe-able and upon swiping it will remove from the screen, but the associated with it will not be removed. To actually remove the data we can use the `onDismissed` parameter on the `Dismissable` widget which allows you to call a function when the widget has been swiped away. We need to remove the item from Expense list when we swipe the list item. We can create a custom function which removes the expense from the `_registeredExpense` list. We can simply call the `.remove()` method on this list object which removes the list item which is passed as the argument. We also need to make sure that the widget is updated after data is removed so we should wrap this inside of setState(). The implementation will be like:  

```javaScript
 void _removeExpense(Expense expense){
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }
```

We cannot directly point this function to `onDismissed` argument. It requires a function which takes in a `DismissDirection`object. This allows to handle multiple functionalities based on how the user swiped. We can create an anonymous function which automatically takes in the direction as a parameter. And then we can call this function and pass the expense object. The whole implementation will now look like:

```javaScript
Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenses[index]),
        onDismissed: (direction){
          removeExpense(expenses[index]);
        },
        child: ExpenseItem(expense: expenses[index]),
      ),
    );
  }
```

To show a message once an item is removed from the expense list we can use the `ScaffoldMessenger` widget. We should pass the context object to the of() constructor method and chaining the `showSnackBar()` method. The showSnackBar() method needs a `SnackBar` object. We can easily create it using the constructor of `SnackBar`. This constructor requires a content which is a widget. In most cases this will be a Text widget to display plain text. We can also set a `duration` parameter to specify the time that the snackbar needs to be visible on screen. This parameter requires a `Duration` object. The duration can be in `days`, `hours`, `milliseconds`, `microseconds`, `minutes `or `seconds`. We can pass the appropriate parameter to create of a duration object. We can also add a `action` parameter to the snackbar. This needs a `SnackBarAction` object which we should create using it's constructor. **It needs a** `**label**` **which should be a plain string, not a Text widget**.

We should also pass the `onPressed` parameter to define the function when the action button is pressed.   
To insert the item into the exact same position in a list we use the `.insert()` method. The index method requires an index position and the element that needs to be inserted into the position. The updated remove function will look like:

```javaScript
void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Expense deleted.'),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }
```

To manually clear snakbars to make sure that they won't overlap we can use the `.clearSnackBars()` method. It will look like:  
` ScaffoldMessenger.of(context).clearSnackBars();`   
This will remove the snackbar without considering the duration. 

We can use the `theme` parameter of the `MaterialApp` to control the color, text and style each individual widget of an application. The theme parameter needs a `ThemeData` object which can be created using the constructor of the respective class. It provides a lot of options which most of it should not be used because they might be removed in the future. If you are using the `ThemeData` constructor you should use all the parameters because the default styling will be removed. It might not be necessary in many cases because the default styling may be fine.   
Alternatively we can use `.copyWidth()` method on the `ThemeData` constructor and pass the useMaterial3 parameter as true. This allows you to override particular style attributes individually. 

eg:

```javaScript
MaterialApp(
    theme: ThemeData().copyWith(
    scaffoldBackgroundColor: Color.fromARGB(255, 220, 189, 252)),
)
```

  
We can use the `colorScheme` parameter to set a group of common colors which will be applied to the widgets. It is the easiest approach. We define a single color scheme and flutter then infers different shades of colors for different widgets.   
We can create a global variable to define the color scheme so that it is much more manageable.

**NOTE**: For global variables it is a common convention to use k as the starting letter of the variable name.

The ColorScheme constructor provides a lot of options to set various attributes of the color scheme, We should set all the attributes. Alternatively we can use the` .fromSeed()` constructor function which accepts a `seedColor` parameter.

We can set a color scheme like:  
`var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181),);`   
and use it inside of the theme like.

```javaScript
MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
      ),
      home: Expenses(),
    ) 
```

We can add additional customization for individual components like the `appBarTheme` by passing the respective parameter. We can set the color scheme of these using the color scheme variable we defined. 

```javaScript
 MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
      ),
      home: Expenses(),
    )
```

We can set themes for cards using the `cardTheme` parameter. It expects a `CardThemeData` object. We can use `copyWith()` constructor to easily create a card theme like we did for `appBarTheme`. We can set a color and a default margin for all cards inside of this. Like:

```javaScript
cardTheme: const CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.all(16),
        )
```

To style the elevated buttons we can similarly use the `elevatedButtonStyle` parameter and this expects a `ElevatedButtonThemeData` object. **For this there is no** `**copyWith()**` **constructor defined**. Instead we use the `style` parameter inside of the constructor which expects a `ButtonStyle` object. This lets you define the style from the ground up when we want a fully customized button. Alternatively we can use `ElevatedButton.styleFrom()` constructor which lets you override the selected styles. It will look like:

```javaScript
elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer
          )
        )
```

We can also set a theme to the text globally using the `textTheme` parameter. This expects a `TextTheme` object. To set a text theme we can instantiate the `ThemeData`object and on its `textTheme` attribute we can call the `copyWith()` method. To this method we can specify the different text sizes. The available text sizes can be referred through the official flutter documentation. We can either use the TextStyle constructor to create a text style from scratch or use `ThemeData().textTheme.textSize.copyWith()` to override some selective properties. the `textSize` referred here should be referred on official documentation. Eg:

```javaScript
 textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.normal,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 14,
          ),
        )
```

Since we have already defined a `foregroundColor` for the appbar the color we defined above will not be affected, but the size will be changed.

We can also use our custom themes in the widgets of our app. For example we can set the text style of a widget from by specifying the `style` parameter. The value of this parameter should be passed as a theme object we can use the `.of()` method of the Theme class to access the themes of the app by passing the context object. We can access the `textTheme` property of this object to get the theme style set by us and the default styles. We can access the various properties from this by using the . operator. For example:  
`Text(expense.title, style: Theme.of(context).textTheme.titleLarge),`   
We can access styling from the theme for any type of custom widgets.

We can set a background color when we swipe the card. We can use the `background` parameter of the `Dismissible` widget and set it to a container. Inside of the container we have the` color` attribute which can be set to a value extracted from the theme we have defined. Like we used the color from the theme before we can access the `Theme` object's `colorScheme` attribute and in this object we have various pre-defined colors generated from the color seed that we defined. One such color is error. The example will look like:

```javaScript
Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(horizontal: 16),
        ),
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          removeExpense(expenses[index]);
        },
        child: ExpenseItem(expense: expenses[index]),
      )
```

We can also get the margin from the theme we defined. We cab access the `margin` attribute of the `cardTheme` which we will get from the Theme object. We will get the value as double so we need to use the `EdgeInsetsGeometry` constructor to convert it into a valid margin. Since we have defined the margin inside the card theme as symmetric we need to divide the value by 2 to get the desired result which is the same as that of the card theme we have. The code will look like:

```javaScript
Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal/2,
            vertical: Theme.of(context).cardTheme.margin!.vertical/2,
          ),
        ),
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          removeExpense(expenses[index]);
        },
        child: ExpenseItem(expense: expenses[index]),
      )
```

We are not limited to using the values from the theme. We can also extend or override them in our widget. For the colors we can call the `.withAlpha()` to adjust the opacity. The `withOpacity()` method is now deprecated. For example:  
`color: Theme.of(context).colorScheme.error.withAlpha((0.65*255).toInt()),`   
We need to pass an integer value to the colors. We can multiply by the desired percentage we want with 255 to obtain the desired color. Similarly there are also methods like `withBlue()`, `withGreen()` , `withRed()` and `withValues()` which let's you override all the values of the color.  
We can also use `copyWith()` to override specific attributes of a theme.

We can enable dark mode support for our application. When we switch the android system to dark theme with our current setup our app's theme remains unchanged. We can provide dark theme fallback to make sure that our app aligns with the system color theme. We can create a dark color scheme variable with a color scheme suitable for dark mode. We can define the seed to this color scheme and inside of the `MaterialApp` widget we can specify the `darkTheme` parameter. We can create dark object with the `dark()` constructor of `ThemeData` class. Since we are overriding only some of the features we can use `copyWith()` constructor to define the exact color themes for our widgets. note that we are not passing any parameters to the `dark()` constructor function. 

We can use the default theme mode of an application. We can opt for light theme or dark theme or let the system setting decide the theme to choose. We can specify this by setting the `themeMode` parameter inside of the `MaterialApp` widget. We can access the constant values by tapping into the `ThemeMode` class. It has parameters `light`, `dark` and `system`.   
We need to define the same theme parameters we set for the light mode inside of the dark mode if we are accessing theme parameters for our widgets. 

By default if you generate a color scheme from a color seed like this:

```javaScript
var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 5, 9, 125),
);
```

It will be optimized only for light mode so even if you switch to a dark theme the colors will be brighter. We need to explicitly tell flutter to generate colors optimized for dark mode. We can do this by adding the brightness parameter to the ColorScheme constructor function. The code will look like:

```javaScript
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 9, 125),
);
```

The entire code will now look like:

```javaScript
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
 
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
 
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 9, 125),
);
```

```javaScript
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardThemeData().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        )
      ),
     
```

```javaScript
theme: ThemeData().copyWith(
  colorScheme: kColorScheme,
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: kColorScheme.onPrimaryContainer,
    foregroundColor: kColorScheme.primaryContainer,
  ),
  cardTheme: const CardThemeData().copyWith(
    color: kColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kColorScheme.primaryContainer,
    ),
  ),
  textTheme: ThemeData().textTheme.copyWith(
    titleLarge: TextStyle(
      fontWeight: FontWeight.normal,
      color: kColorScheme.onSecondaryContainer,
      fontSize: 14,
    ),
  ),
),
home: Expenses(),
),
);
}
```

The final step is to add the Charts functionality to our expense tracker app for this we can create an `ExpenseBucket` class inside of our model file, since we have multiple categories where we need to manage our expenses. We need to sum them up which belong to the respective category and display it inside of the chart. This class has 2 attributes which are category and a list of expenses. We can also create a getter to get the total expenses belonging to a category. We can sum up the expenses corresponding to a bucket(since we will have 1 bucket for each category). We can use a for loop for this. We can use:

```javaScript
for(final item in items){
    //loop body
}
```

To go over the items in the loop and and access individual item we can use this variant of the for loop. We can use final here because in every iteration a new item will be created. The example will look like:

```javaScript
for(final expense in expenses){
      sum += expense.amount;
    }
```

The complete class will look like:

```javaScript
class ExpenseBucket {
  const ExpenseBucket({required this.category, required this.expenses});
  final Category category;
  final List<Expense> expenses;
 
  double get totalExpenses{
    double sum = 0;
    for(final expense in expenses){
      sum += expense.amount;
    }
    return sum;
  }
}
```

We can use this type of for loop inside of our build method instead of map to go over a list of widgets or items. When using it like that we should never use curly braces.

We can create alternative constructor functions for our classes. The syntax is:  
`ClassName.functionName(arguments): argument = initializerList;`   
We can set initial values to an object from the constructor definition by using the initializer list syntax we used earlier. In our case we want to filter out the expenses based on the category set the expenses of the ExpenseBucket class. The code will look like:

```javaScript
  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
    : expenses = allExpenses
          .where((expense) => expense.category == category)
          .toList();
```

We can use `MediaQuery` class to get system properties. We can use it to check if we are under darkmode or under light mode. We can use it like: `MediaQuery.of(context).platformBrightness`. This will return` Brightness.light` or `Brightness.dark` .

Responsiveness makes sure that the application takes up available space efficiently irrespective of the screen size. Responsiveness ensures that the layout of the application adjusts according to the available space. 

We can make sure that the app's orientation does not change even if the device orientation changes by locking the orientation of the app. To do this we need to import the `services.dart` file from the `flutter` package. Then inside of the main method we can use the `setPrefferedOrientation` method of the `SystemChrome` class. This takes in a list of allowed orientations. This ensures that the application only adjusts to the specified orientation in the list. We can use the `DeviceOrientation` enum to access the different orientations. We can set it to `DeviceOrientation.portraitUp` . This will return a Future so we need to chain a `.then()` method. We should place our entire `runApp() `method to the anonymous function inside of the then. We should pass a function as argument for the anonymous function inside of then even though we are not using it. We should also make sure that we call `WidgetsFlutterBindings.ensureInitialized()` .The entire code will look like:  

```javaScript
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]).then((fn){
     runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardThemeData().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        )
      ),
      
```

```javaScript
theme: ThemeData().copyWith(
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer,
      ),
      cardTheme: const CardThemeData().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.normal,
          color: kColorScheme.onSecondaryContainer,
          fontSize: 14,
        ),
      ),
    ),
    home: Expenses(),
  );
});
```

`WidgetsFlutterBindings.ensureInitialized() `ensures that the device orientation is locked before the app starts. Locking the device orientation may be essential for some applications so in those cases we can use the code like above. But in our case we need the app to be responsive, so the above code changes are not necessary.

To check how much width we have available we can use the `MediaQuery` class available in flutter. It has a `of()` constructor which takes in the `context` as input. Once the media query object is wired up with the context we can access the various attributes of this object. We can access the size property which gives us access to the size object which holds more information about the available size on the device such as the `aspectRatio` of the device which is running. What we are interested is the available `height` and the `width` which gives us the available width and height of the running device.   
When you rotate the device the build method gets executed again automatically. 

We can check the width value to check if the device is rotated and conditionally display the widgets. We can switch between the Row and Column widget conditionally to tweak the alignment of widgets. We should also make sure that the widgets does not take entire screen width so that widgets can correctly align items side by side. We can use Expanded in such cases to wrap the child widgets so that the children will take only enough space available for the parent row. The entire code will now look like:  

```javaScript
Widget build(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  Widget mainContent = const Center(
    child: Text('No expenses found. Start adding some!'),
  );
  if (_registeredExpenses.isNotEmpty) {
    mainContent = ExpenseList(
      expenses: _registeredExpenses,
      removeExpense: _removeExpense,
    );
  }
  return Scaffold(
    appBar: AppBar(
      title: const Text('Flutter Expense Tracker'),
      actions: [
        IconButton(onPressed: _addExpenseOverlay, icon: Icon(Icons.add)),
      ],
    ),
    body: width < 600
        ? Column(
            children: [
              Chart(expenses: _registeredExpenses),
              Expanded(child: mainContent),
            ],
          )
        : Row(
            children: [
              Expanded(child: Chart(expenses: _registeredExpenses)),
              Expanded(child: mainContent),
            ],
          ),
  );
}
```

This makes sure that the UI updates based on the device orientation.

To understand the above problem which causes the widgets to not become visible we need to understand about the size constraints in flutter. We fixed the problem by wrapping the children of the Row inside of Expanded widget. **Widgets get size based on their own size preferences and the size constraints of parent widgets.** For example let's look at the Column widget. It has some preferences about the size it want to occupy. It wants to take as much height it can get. It only needs width as much as the width of the largest child's width(i.e, the width of a column widget is as much as needed by the children). **Even though the column can take as much height as possible it doesn't overflow the screen because we have placed the column inside of a widgets which restricts it height which is the Scaffold widget. The Scaffold widget has constraints such that the maximum height is the screen height and the maximum width is the screen width.** Every widget has different constraints for its child widgets

The constraints of the parent overrides that of the child widget that is how generally the sizing works in flutter. We can find the constraints of width and height for a component from the layout inspector of the dev tools. It also shows the available empty space of the screen's width and height. For most of the flutter widgets the width and height depends upon what the child widgets want. For the column widget it does not have height constraint which is passed on to the children. Similarly the ListView widget also does not have a height constraint. To enforce the constraint we are using the Expanded widget, it sets the height constraints to the child widgets such that they take the maximum available height instead of the infinite height. 

So we use expanded to add constraints for nested unconstrained widgets. 

We can use the `MediaQuery` class to access parts of UI widgets which overlaps. For example we can access the bottom overlapping UI elements by using:

`MediaQuery.of(context).viewInsets.bottom;`   
In case of our modal when we add a new expense in landscape orientation the keyboard slides up from the bottom and overlap the input fields. We get this value as double so we can use this to adjust the bottom padding of our widgets. We also must ensure that the content is scrollable otherwise the content will overflow and cause error. For that we can wrap the widget with `SingleChildScrollView` widget.  
After we do this our modal may not take the entire available height to ensure that it takes the maximum available height we can wrap the `SingleChildScrollView` widget with a `SizedBox` of infinite height

Previously we have added a top padding to ensure that the top part of the modal does not overlap with the device specific areas such as the camera cut out. We guessed a padding that would work and added it to the padding. There is a better way to do this. We does not need to do this incase of appbar since it automatically takes care of this. We can pass the` useSafeArea` parameter and set it to `true` when we show the modal dialogue. Safe area is a feature built into flutter which ensures that the widgets stay away from device specific features such as device camera that affect our UI. The `Scaffold` widget uses the safe area internally, so in most cases we don't need to worry about it. The code will look like: 

```javaScript
showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(addExpense),
    );
```

Alternative to the `MediaQuery` where we need to manually manage the widgets according to the available space flutter also provides a widget which automatically manages the child widgets based on the available space. We can use the `LayoutBuilder()` widget for this. It takes in a builder parameter. It needs a function as argument, the function will automatically get the context object and a constraint object. We need to return our content(other widgets) inside of this function. The constraint object gives us access to which constraints are applied by the parent widget of the current widget we get the properties like `minWidth`, `maxWidth`, `minHeight`, `maxHeight` which we can use for the widgets. This helps us decide which layout we need to render. By using these we can make sure that the widget is reusable and we can actually use them anywhere in our application, because it will only care about the available screen width and height. We can use this information to dynamically change our layout. 

The layout builder widget automatically calls the builder function whenever the layout changes, i.e screen orientation change. We can use the special `if else` syntax(without `{}`) provided by flutter inside of the list to display items conditionally. The code will look like:  
` final width = constraints.maxWidth;  
`

```javaScript
if (width >= 600)
  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: TextField(
          controller: _titleController,
          maxLength: 50,
          decoration: const InputDecoration(
            label: Text('title'),
          ),
        ),
      ),
      SizedBox(width: 24),
      Expanded(
        child: TextField(
          controller: _amountController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            label: Text('amount'),
            prefixText: '\$',
          ),
        ),
      ),
    ],
  )
else
  TextField(
    controller: _titleController,
    maxLength: 50,
    decoration: const InputDecoration(label: Text('title')),
  )
```

**NOTE**: **If we are using the special if syntax inside of the list the body of the if and else conditions should have only one widget.** 

Adaptive apps are whose UI adapts well with the platform on which it is being presented. You can use the same widgets on android and ios but you can also adjust the some widget styles if you want to. For example the app bar title in ios will be moved to center but on android it will be closer to the left end of the app bar. We can explicitly set the `centerTitle` property of the `AppBar` widget to false to make sure that the app title is not centered.   
Also in IOS flutter uses a different font family for text. On IOS the dialog bar shows exactly like that on android. But flutter provides option to show the dialog which is closer to ios native dialog style. We can leverage this by importing the `cupertino.dart` from the flutter package. We can call the `showCupertinoDialog()` to show the ios native style dialog. Cupertino is the name of native ios design language. The functionality of cupertino widgets are similar to that of normal widgets. The parameters are exactly the same. 

The `CupertinoAlertDialog()` widget is exactly same as `AlertDialog()` . To check the platform we can use the `Platform` class from the `dart:io` package. The import will look like:  
`import 'dart:io';`   
The platform class has properties like `isIOS` and `isAndroid`. We can check if it true or false to render platform specific widgets conditionally.  
eg: 

```javaScript
if(Platform.isIOS){
  showCupetinoDialog();
}else{
showDialog();
}
```

When working with flutter we are working with 3 trees. Two of those trees are typically invisible to the developer. 

1. **Widget Tree**: Nesting of widgets in your code to compose the elements in the UI.
2. **Element Tree**: Flutter takes in the widget tree and translates into element tree. It is an in-memory representation of your widgets. These representations are used to determine efficient UI updates. These objects are related to the widget objects. They are not exactly the objects that you create with the constructor. Once the build method is encountered for the first time flutter will create an element object for that in memory. But, the build method is called quite frequently. For example if you call the setState in a stateful widget. That widgets build method as well as the child widgets build method will be called again. But flutter may not necessarily recreate those objects. Flutter only creates elements if you add new widgets. Or it removes widgets when you remove them.

Elements are reused if possible. Element tree determines which UI items should be rendered on the screen.   
 3. **Render Tree**: It is the combination of visible UI blocks. Creating the render tree and updating the ui of the render tree takes quite a lot of work. So to have optimal performance flutter only make changes in the render only when updates are needed. If updates are needed is decided based on the element tree.   
The UI updating process goes like this:  
When the build method is called flutter checks the element tree and reuses existing elements as needed and then after it compares the new element tree to the old element tree and if there are any differences those differences are applied to the render tree and the ui is updated. It only partially updates the re renders the render tree according to the needed ui updates. Flutter manages the element tree and render tree automatically. 

Flutter calls the `createElement` method to create the widget. This is invoked automatically by flutter. If we want we can override this method. This method is called before the build method. Flutter not only creates the widgets for the current element, it creates widgets that makes up the entire ui of the widget. 

When the state of a widget changes it rechecks all the child widgets and verifies the updates. In-order to avoid unnecessary checks we should refactor the widgets which alter and depend on the state. So we should make sure that the we should use the StatefulWidgets sparsely and carefully. Also, make sure that they are as lean as possible. For simple apps this does not matter but for complex apps this can drastically improve the performance.  
**NOTE:** if we set the `mainAxisSize` parameter of the Column widget to `mainAxisSize.min` it adds a size constraint for the height of a column widget.

For widget trees the build method is called frequently whenever the state changes. But the elements are not re-created un necessarily. Keys are a crucial concept in flutter which determines how the UI is updated. We have seen keys being passed as named arguments inside of the construction functions for all our widgets and we forwarded them to our parent widget. We have also manually created keys for dismissible widgets. 

If the order of widget changes (change their position or place) in the screen for example lets say a list. When we sort the items in the list in ascending or descending order the order of the items changes on the UI. The element skeleton actually stays the same, we keep the element structure same, also new elements are not created, what actually happens is it only updates the reference of which element refers to which widget. Flutter does this for performance reasons. In case of our example list we have the total number of the items are not changing also the type of the widgets are also not changing. The above mentioned approach works for normal widgets. But when it comes to state the perspective changes. Because state managed objects of a widget are managed as independent objects that are connected to the elements. State objects are connected to the element objects that are connected to the corresponding widgets. So if widgets changes their place flutter reuses the elements.

The state objects are not updated when the position changes i.e, they don't move around. 

The above mentioned problem can be solved with the help of keys. Flutter determines weather it can reuse an element by looking at the type of the element. If the element type in the element tree is same as the the type of item in the widget tree in that position where the the element is it keeps that element and updates the reference to the widget it found in the same place in the widget tree. If we introduce keys those keys are also added to the elements. So if your widgets move around the keys move with them, if flutter finds a key on an element it just not only looks at the element and widget type but also at their keys and if the keys don't match it updates the keys on the element, reuses the correct element by matching keys. Keys offers an additional checking mechanism which makes sure that the element, widgets and states are mapped correctly even when the position of items changes.   

You must always set the keys parameter in the constructor so that we can use keys whenever we need to.  
Fundamentally keys solve the problem of state loss when widgets reorder. Flutter reuses elements by matching widget types at the same position. When you add keys, Flutter also checks if keys match. If widgets move but their keys match existing elements, Flutter correctly reuses those elements and preserves their state. Keys ensure proper widget-element-state mapping when positions change. **Use keys when you have stateful widgets of the same type that can reorder** (like list items).

We can create our own keys in flutter by 2 methods:

1\. By using the `ValueKey()` class of flutter. We can pass any type of value to this as parameter. It will be then used internally as an identification criteria. 

2\. By using `ObjectKey()` class of flutter. We can pass any type of object to this.   
The first method is suitable in most cases because it offers a light weight solution since flutter only need to manage a single value instead of an entire object.   
**NOTE**: Whichever approach you use the values you pass to the keys constructor must be unique. And it must be directly connected to your data(not random values). 

The `final` keyword means that you cannot assign a new value into it. It can only be set once. For example in case of a list even if we define the variable as final we can add items to the list using the `.add()` method. This works because the operation happens directly inside of the memory. It does not store the new value in a variable. When you add a new item to the list a new list is created in the memory.   
 But in case of `var` we can assign new values to the variables. In case of collections like lists we can use the same add method as well as we can override the existing values of the list.   
  
With `const` we cannot assign a new value to variables declared as const. **For collections like list we cannot add new items to the list using .add() methods for variables defined as const**. The const keyword ensures that the variables are unmodifiable even behind the scenes. 

We define const for widgets because this allows the reusing of widgets, because the widgets defined as const in one part cannot change in another part of the application thus ensures that it works as intended.   
If we want to make the values of a list unmodifiable we can use 

`final variable_name = const [list_item1, list_item2...];`   
Alternatively we can use the shortcut:  
`const varibale_name = [list_item1, list_item2....];` 

When you create a variable having data with var, this data is stored in memory. The address of the memory location is stored in the variable. If you override the value in the variable a new data is created in the memory and the new address is stored into the variable. If the variable is no longer used (referenced in any of the code) it will remove it from the memory to free up memory. This is done automatically by dart. This process is called garbage collection. 

In case of items such as list it does not create new data in memory but modify the existing data in memory. The address is the same but the internal data is changed. 

When you are building a multi-screen app every screen will return a `Scaffold` widget.

Flutter has a `GridView` widget which renders a grid view for displaying items. Like the `ListView` widget grid view widget also has a builder constructor function if you have a very long list of grid items. If you have only a small number of items we can use the normal `GridView` constructor. For this constructor we need the list of items as `children` argument along with a `gridDelegate`argument. The gridDelegate controls the layout of the items. We use the `SliverGridDelegatedWithFixedCrossAxisCount()` class to set a grid with fixed number of columns specified as argument in `crossAxisCount` argument. We can also set the aspect ratio using the `childAspectRatio` parameter. It expects a double value. The aspect ratio determines the size of each individual item. The crossAxisSpacing argument determines the space between the columns. It is specified as integer in number of pixels. The `mainAxisSpacing` determines the spacing between the rows of the grid. The code will look like:

```javaScript
GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: const [
        Text('Text 1', style: TextStyle(color: Colors.white),),
        Text('Text 2', style: TextStyle(color: Colors.white),),
        Text('Text 3', style: TextStyle(color: Colors.white),),
        Text('Text 4', style: TextStyle(color: Colors.white),),
        Text('Text 5', style: TextStyle(color: Colors.white),),
        Text('Text 6', style: TextStyle(color: Colors.white),),
      ],
      )
```

  
It is perfectly fine to use values like 3/2 for child aspect ratio since it expects a double value, dart will perform the calculation and provide the value. Notations like this makes the code easier to understand.  
The `GridView` is scrollable by default if the items exceeds the available screen space. We can also set the `padding` parameter for grid view to set a padding for the entire grid view.

To make a widget like a container tappable you can wrap it with `GestureDetector` widget. It has build in parameter for `onTap` which you can use to make it tappable. It also has many other listeners we can use to handle various user interactions.   
Alternatively we can use the `Inkwell` widget to wrap around the widget which we want to make it tappable. It will also provide a nice feedback to the user when he taps on the widget on screen. Where as the `GestureDetector` will not provide any feedback on the screen to the user. For the InkWell widget we can use the `onTap` parameter to pass a function which should be executed when the user taps on the widget. The `splashColor` parameter allows to provide the visual feedback. The `borderRadius` allows us to provide a border radius which expects a `BorderRadius` object. The code will look like:

```javaScript
InkWell(
      onTap: (){},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors:[
            category.color.withAlpha((0.55 * 255).toInt()),
            category.color.withAlpha((0.9 * 255).toInt())
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(category.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: Theme.of(context).colorScheme.onSurface
      ))
      ),
    );
```

We can use the `Navigator` class to navigate between the screens. To navigate to another screen we can use the` .push()` method which expects a `context` object and a `route` object. It will push the route to the top of the stack of screen. In flutter navigation works with the help of screen stacks. Screen stack comprises of layers which are present on top of each other. The top most layer will be the currently visible screen. Using the push method we push a new layer to the top of the screen stack which then makes it visible. The layers are switched accordingly when navigation occurs between screens. There is also a `.pop()` method for the navigation class which removes a screen from the screen stack.  
**NOTE**: **The context property is not globally available in stateless widgets unlike in stateful widgets. We need to accept the context as argument in methods that we are using.**

In case of the Navigation we can use:

```javaScript
Navigator.push(context, route);
```

or alternatively we can use:  
`Navigator.of(context).push(route);`   
The route object can be created using the `MaterialPageRoute()` constructor which has a `builder` argument. The builder argument expects a function which automatically gets the context object. This function will return a widget. The code will look like:

```javaScript
 void _selectCategory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: 'Some Title', meals: []),
      ),
    );
  }
```

Once you navigate to a screen if there is an appbar there will be a back button which pops the screen layer from the screen stack when the user taps on it.

We can use the `.contains()` method to check if an item exists in a list and returns true or false. For example:

```javaScript
    final filteredMeals = dummyMeals.where((meal)=>meal.categories.contains(category.id)).toList();
```

The `Stack` widget is used to position multiple widgets directly above each other. This let's us to do things like having an image on the background and some text over it. The Stack widget has a `children` parameter where we pass the widgets as a list. The items in the list should be ordered such as the last items are placed first in the screen.   
`FadeInImage` widget allows you to have an image with fade in animation. We need to pass the `image` and `placeholder` as argument.   
The flutter transparent image package allows us to have transparent images (dummy images) as placeholders. We can install it using:  
`flutter pub add transparent_image`  
To utilize this we can add the `placeholder` parameter of the` FadeInImage` using the `MemoryImage` class. This is a built-in class in flutter which displays an image from the memory. To this we need to pass the byte stream as argument. The `kTransparentImage` is a constant from the transparent image package. We can pass this to memory image to create a transparent image

For the actual image we will use a network image. The `NetworkImage` constructor is used to create a network image. It accepts a `url` parameter which is the actual image url.   
To stack the widgets on top of each other inside of a Stack widget we can use the `Positioned` widget. It takes in a child parameter along with some additional parameters which define the position such as bottom. left and right which defines the position of the child item in comparison with the sibling widgets of the positioned widget.   
Inside of the Text widget without using the style parameter we can define various text styling options such as   
`maxLines:` Maximum number of lines allowed for the text.

`textAlign `: Text alignment, we can use the default values in the `TextAlign` class like `center`  
`textOverFlow`: Defines how the overflowed text should be cut off. It also have it's own class and we can use default values.

We can set the `clipBehaviour` parameter of the card widget such that the content from the children of the card which goes outside of the box will simply be cut off if it goes outside of the shape.  
` clipBehavior: Clip.hardEdge,`  
We can set the `elevation` attribute to the Card widget to adjust the drop shadow of the card. This accepts an integer value as an argument.  
` elevation: 2,`

We can pass parameters of a widget as arguments to callback functions. For example:

```javaScript
ListView.builder(
            itemBuilder: (context, index) {
              return MealItem(meal: meals[index], onSelectMeal: (meal){
                selectMeal(context, meal);
              },);
            },
            itemCount: meals.length,
          );
```

We are getting the `meal` to the anonymous function because `**MealItem**` **calls the** `**onSelectMeal**` **callback and passes its** `**meal**` **parameter as an argument**. We don't explicitly define a meal object in the anonymous function — instead, we receive it as a parameter when `MealItem` invokes the callback. 

The `meal` that `MealItem` passes back is the same `meal` we provided to it (`meals[index]`), and we use it in the `selectMeal()` function.

**NOTE:** The `meal` parameter in the anonymous function `(meal)` is **provided by** `**MealItem**` **when it calls the callback**, not accessed directly from the `MealItem` constructor parameter.

Tabbed navigation bar lets you switch between screens by tapping on the options in the navigation bar at the bottom of the screen. The tabbed navigation requires its own screen which then loads the embedded screens. So we need to create a stateful widget so that the screen is changed when the user taps on the option. The Stateful widgets build method should return a scaffold widget. If we have an appbar the title of the appbar should be dynamic. The body is also dynamic since we are navigating to a different screen when the user taps on on the option. Most importantly we need to set the `bottomNavigationBar` to the `Scaffold` widget. We can create the bottom navigation bar using the built in widget class provided by the flutter, which is `BottomNavigationBar()` This has `onTap` parameter which expects a function. The function will get an `index` which is automatically provided by flutter. It is the index position of the tapped item on the navigation bar.

The `items` parameter which expects a list of items is the tabs which we want to display on the navigation bar. The items will be of type `BottomNavigationBarItem ` , we can create them using its constructor function. The navigation bar item needs an `icon` and if we want we can set a `label ` which we set as a normal string. We can create functions to change the page and dynamically display the page on the screen. For tabbed navigation by default the first tab is selected. The entire page will look like:

```javaScript
import 'package:flutter/material.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/meals.dart';
 
class TabScreen extends StatefulWidget{
  const TabScreen({super.key});
  @override
  State<TabScreen> createState() {
    return _TabScreenState();
  }
}
```

```javaScript
class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;
 
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoriesScreen();
    var activePageTitle = 'Categories';
    
    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(title: 'Favourites', meals: []);
      activePageTitle = 'Your Favourites';
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectPage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favourites'
          ),
        ],
      ),
    );
  }
}
```

To change the high lighting of the tab we need to set the `currentIndex` parameter of the `BottomNavigationBa`r widget. like:  
`currentIndex: _selectedPageIndex`   
We must make sure that the variable we use is in sync with the screen index.  
**Even though we can nest Scaffold widgets in flutter it is not recommended.**

We can pass pointers to the function through multiple layers of widgets to manage state. We can define the state and function to modify the state inside of a common parent. Then move it through the constructors of children to use it where ever it is desired. We might need to accept these function pointers as arguments even if we are not using them directly. This can be cumbersome if we are re using components. 

The side drawers are added on a per screen basis which means that we need to add the side drawers needs to be added inside of scaffold. In the `Scaffold` widget we need to add the `drawer` parameter. Apart from that we also have additional parameters inside of the scaffold widget to configure the behavior of the drawer. We need to pass a widget to the drawer argument which needs to be presented as drawer. Flutter has a `Drawer` widget for this, the drawer widget has a lot of parameters that we can use to configure a drawer. The `child` parameter defines the content of the drawer. The drawer widget is optimized to be used as a drawer so it automatically takes the entire screen height.   
The `DrawerHeader` widget is used to provide the header for a drawer. The drawer header widgets supports parameters like `padding`, `decoration `etc.   
If there are a lot of elements in the drawer and we need to reuse the drawer it is a good practice to create a separate widget for that. 

```javaScript
Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: MainDrawer(),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectPage(index);
        },
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
        ],
      ),
    );
```

The above code will add a hamburger menu icon on the appbar. When you tap on the icon it will open the drawer. We can close the drawer by tapping on the background or sliding it in.

`ListTile` widget can be used to display list items. It can be used anywhere inside of a flutter app. We can use this to display links inside of the drawer. The `title` parameter of the list tile widget can be used to set a title for the list. The title parameter expects a widget. We can use any widget such as a text widget. The `leading` parameter of the list tile widget can be used to add content to the beginning of the the row. The list tile widget also has an `onTap` parameter which we can listen to when then the user taps on the list tile. The code will look like:  

```javaScript
ListTile(
            leading: Icon(Icons.restaurant, size:26, color: Theme.of(context).colorScheme.onSurface),
            title: Text('Meals', style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 24,
            )),
            onTap: (){},
          )
```

We can close the drawer manually by calling `Navigator.of(context).pop();` 

`SwitchListTile` is a special widget which lets you display switches as a list. It will display a label and a tappable switch. It has a `value` parameter which needs to be a boolean value to indicate weather it is on or off. It also has an `onChanged` paramter which accepts a function. This function will be triggered when user taps on the switch. The `title` parameter is used to add a label to the switch. Apart from title we can also set a subtitle using the `subtitle` parameter of the switch list tile widget. The `activeThumbColor` parameter is used to set the color of the switch when it is active. The `contentPadding` parameter is used to set padding for the content of the switch. We can set specific padding to only the selected directions using the `.only()` constructor of `EdgeInsets` class. We can pass the required directions and their values as parameters to this and it will apply the padding to only the specified directions.   
The below code shows implementation of `SwitchListTile` widget:

```javaScript
SwitchListTile(value: value, onChanged: onChanged, title: Text('Gluten-Free', style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface
          ),
          ),
          subtitle: Text('Only include gluten free meals.',style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSurface
          ),
          ),
          activeThumbColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: EdgeInsets.only(left: 34, right:22,),
          )
```

The method defined for the onChanged parameter will automatically receive the value of switch when it is toggled, so we can accept it into the function as an argument and use it. For example:

```javaScript
SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (isChecked){
              setState(() {
                _glutenFreeFilterSet = isChecked;
              });
            },
            ......
          )
```

  
When we opened the drawer and navigate to a different screen, when we press the back button we are taken back to the screen where the drawer is open. Though we can manually close the drawer once we select the option before navigating. Till now we pushed new screens to the screen stack, so when we use the back button it will traditionally simulate the `Navigator.pop()` operation, which will take you back to the previous screen in the stack. This may be the behavior you want in most of the cases. But we can also replace the current active screen with a new screen, this way the back button will not work. We can easily implement this by calling the` pushReplacement()` method on the navigator instead of `.push()` . The code will look like:

```javaScript
MainDrawer(onSelectScreen: (identifier){
        Navigator.pop(context);
        if(identifier == 'meals'){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>const TabScreen()));
        }
      }),
```

We need to pass the chosen filters from the filters screen to be passed to the tabs screen so that the filters will work. We can use a special widget which we can wrap around the body of the scaffold widget. We can use the **PopScope** widget for this. It requires an **onPopInvokedWithResult** parameter which takes in a function. This function will be invoked when the user tries to leave the screen. This function receives a boolean value **didPop** and a dynamic typed **result** value automatically as parameters. For the PopScope widget we must pass a **canPop** parameter as **false** to prevent the default pop behavior. The **didPop** argument of the callback function indicates whether the pop actually happened. If it's true, we should return early to avoid popping twice. The **result** parameter contains data returned from any screen that was pushed on top of the current screen (not the data we're sending back).

 We can use the **pop()** method of the **Navigator** class inside the callback function to manually pop the screen. The **pop()** method also supports passing data as a parameter, which will be sent back to the previous screen. The previous screen can receive this data using **.then()** or **async/await** when navigating to the filters screen. We can return a map inside of the pop function, these values will will be accessible where the current screen (which we want to exit from) is pushed. Additionally we can check the value of `didPop` to make sure that the code inside of the callback function is not executed twice. The code will look like:  
`enum Filter { glutenFree, lactoseFree, vegetarian, vegan } `   

```javaScript
PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, dynamic result) {
          if (didPop) return;
          Navigator.of(context).pop({
            Filter.glutenFree: _glutenFreeFilterSet,
            Filter.lactoseFree: _lactoseFreeFilterSet,
            Filter.vegan: _veganFilterSet,
            Filter.vegetarian: _vegetarianFilterSet,
          });
        },
        child: Column(
```

**We can make sure that the function will return a future object if we mark the function as async.**

The `push` method returns a `Future` object, till now we have not used this value. But we can use to this get the result from the `PopScope` widget. The push method is a generic type, we can specify the type of data returned from push using the <>. In our case we know that it is a Map so we can specify it. The Map is also a generic type so we should specify the key is an enum of type `Filter` and the value is of type boolean. The code will now look like:

```javaScript
void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if(identifier == 'filters'){
      final result = await Navigator.push<Map<Filter, bool>>(context, MaterialPageRoute(builder: (ctx)=>FiltersScreen()));
      print(result);
    }else{
    }
    
  }
```

The ?? operator allows you to set a fallback conditional value in case if the assigned value is null. eg:

```javaScript
const kInitialFilters = {
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.vegan: false,
    Filter.vegetarian: false,
  };
....
  Map<Filter, bool> _selectedFilters = kInitialFilters;
setState(() {
        _selectedFilters = result ?? kInitialFilters;
      });
```

We are using this because the result we get from the pop method can be null. To avoid this we are using the special ?? operator so that the fallback value will be used if the value of the result is null.

We cannot access the properties of the Stateful class inside of the class which extends state except inside of the build method. In order to access the state we can override the `initState` method in the class which extends the State class. In our case we are setting the filters from the filters screen which is a stateful widget. After setting the filters and navigating the meals when we come back to the filters screen we are not able to see any filters because we are initializing them as false. For the filters screen we can accept the available filters as an argument to the constructor. Inside of the class which extends the state we can override the `initState` method. Inside of this initState method we can use `wiget.property_name` and access the property. The code will look like:

```javaScript
class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});
  final Map<Filter, bool> currentFilters;
  @override
  State<StatefulWidget> createState() {
    return _FiltersScreenState();
  }
}
class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;
  @override
  void initState(){
    super.initState();
    _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
    _vegetarianFilterSet = widget.currentFilters[Filter.vegetarian]!;
    _veganFilterSet = widget.currentFilters[Filter.vegan]!;
  }
......
```

We had a bunch of screens we are navigating through. We were passing state modifiers through the widget trees so that the state can be modified from these widgets which are actually independent of each other. This approach is less convenient because as the complexity of the application increases it becomes more cumbersome to manage this. 

We are using the `riverpod` package to solve the above mentioned problem. It is a third party package used for cross widget state management in flutter. There are alternatives to `riverpod` such as `provider` but riverpod is more more modern and a much better version than the provider package. The riverpod makes state management easy for widgets. To install it we need to run:  
`flutter pub add flutter_riverpod`   
inside of the root folder of the project.

We create a provider which is an object based on a class provided by the riverpod package. This provider can provide a potentially dynamic value and it can also provide methods that may change the value. In any widget we can set up a consumer that is connected to the provider, which is connected automatically by riverpod. In the consumer we can listen to changes to that provided value or even trigger those changes by calling those methods that are provided by the provider. The idea is that there is a central provider, any widget can set up a consumer. You don't need to pass these cross state management values between those widgets anymore.

To set up a provider we need to create a dart file preferably in a separate folder inside of the lib folder to manage them easily. Then inside of the file we need to import `flutter_riverpod.dart` from `flutter_riverpod` package. We then need to instantiate the `Provider` class into a variable. The provider class constructor takes in a couple of parameters, it least at least one positional function parameter. This function will receive a `ProviderRef` object automatically, because it is called by the flutter\_riverpod package. Inside of the function we should return the value which we want to provide. The example code will look like:

```javaScript
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/dummy_data.dart';
 
final mealsProvider = Provider((ref){
  return dummyMeals;
});
```

We can use this provider in any of the widgets.

To use the provider we need to import the dart file to the file where we need the provider. We also need to import the `flutter_riverpod.dart` file from the `flutter_riverpod` package. Then we need to extend the` ConsumerStatefulWidget` class instead of `StatefulWidget`. This class is provided by the riverpod package. If you have a stateless widget we extend the `ConsumerStatelessWidget` insted of `StatelessWidget`. For the class which extends the state we need to extend `ConsumerState` . Also change the return type of `createState` method with `ConsumerState`.(For both widget class and state class we should extend the Consumer classes provider by riverpod). These classes help us to reach out to the providers. The` ref` property helps us to listen to changes of the providers. The `ref` property is available because we are extending ConsumerState class in the state class. We can use utility function of the ref property. The `ref.read() `method is used to get data from provider. 

`ref.watch()` method is used to set up a listener which makes sure that the build method gets executed again once the data changes. The official documentation of riverpod recommends to use `.watch()` function as often as possible even if you need to read the data only once, because by this way we can avoid unintended bugs if we change the logic at a later point in time. The `watch()` function needs a provider as argument. This makes sure that the build method gets re executed when the build method is changed. In addition to the above functionality watch method also returns the data it watches. In addition to this most importantly for the riverpod package to work we need to wrap our main `App()` with `ProviderScope` widget provided by the `flutter_riverpod` package. The provider scope widget takes in a child parameter which is our main entry widget. The code will look like:

```javaScript
import 'package:flutter_riverpod/flutter_riverpod.dart';
 
void main() {
  runApp(const ProviderScope(child: App()));
}
```

This ensures that all the screens and widgets in the app can access the features provided by the riverpod package. The code will look like:

```javaScript
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/meals_provider.dart';
class TabScreen extends ConsumerStatefulWidget {
  const TabScreen({super.key});
  @override
  ConsumerState<TabScreen> createState() {
    return _TabScreenState();
  }
}
 
class _TabScreenState extends ConsumerState<TabScreen> {
......
Widget build(BuildContext context) {
    final meals = ref.watch(mealsProvider);
    final availableMeals = meals.where((meal) {
.....
```

By doing the above we are fetching the data through provider.

The above shown method is useful only when you have static data. If you have data that changes frequently the use of `Provider` class is a wrong choice for creating a provider. In those cases we should use the `StateNotifierProvider` class to instantiate the provider object. This is a class available in the same flutter riverpod package which is optimized for data that changes. It needs a `StateNotifier` class which is also provided in the riverpod package. We need to create a class that extends the `StateNotifier` class. You can name this class any way you want but the convention is to provide a name that ends with Notifier. The `StateNotifier` class is a generic class so we should specify the data it handles in between <>. Inside of the class we need to define the initial value and the methods that will help to change the managed data. We can use the initializer list for the constructor to initialize the data. The next step is to add methods to handle the data.

The convention of the riverpod package is that we should not modify the data of the state in memory. Instead we must create a new object to perform the required operations. Let's say we have an empty list initialized for data for the state notifier class. We cannot directly use methods like `.add()` or `.remove()` on this list. We can use the globally available `state` property which is available in the classes which extends the `StateNotifier` class. This property holds the data there also we need to create a new data object and re assign it to the state property.   
**NOTE**: Only the modification of state is not allowed, we can access items or use methods to check if the items are present or not. For example we can use the `.contains` method on the state property if the state has a list.

We can use the spread operator inside of a list to get all the items of an existing list and add them as individual items of a new list. For example see the function below:

```javaScript
void toggleMealFavoriteStatus(Meal meal){
    final mealIsFavorite = state.contains(meal);
    if(mealIsFavorite){
      state = state.where((item)=>item.id!=meal.id).toList();
    }else{
      state = [...state, meal];
    }
  }
```

Like this we are making changes in the data in an immutable way.   
The final step is to provide an argument to the `StateNotifierProvider`. It requires a function which automatically gets the `ref` property. Inside this function we should return an instance of our custom notifier class we created. The `StateNotifierProvider` is also a generic type so we need to add the type of data it handles and the type of data it yields. The complete code will look like:

```javaScript
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:meals/models/meal.dart';
 
class FavoriteMealNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealNotifier() : super([]);
 
  void toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      state = state.where((item) => item.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}
 
final favoriteMealProvider =
    StateNotifierProvider<FavoriteMealNotifier, List<Meal>>((ref) {
      return FavoriteMealNotifier();
    });
```

To use this provider we need to import the provide in the specific widget where we need to get the data from the provider. To get the data we can use the `ref.watch()` method inside which we can specify the provider name. The riverpod package automatically extracts the state property value of the notifier class that belongs to the provider. For example:

```javaScript
 if (_selectedPageIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealProvider);
      activePage = MealsScreen(
        meals: favoriteMeals,
        onToggleFavourite: _toggleMealFavouriteStatus,
      );
      activePageTitle = 'Your Favourites';
    }
```

To modify the data of the state inside of state notifier we must first import the riverpod package in the dart file where we need to modify the data. Then we must extend the `ConsumerWidget` instead of `StatelessWidget`. Then we must also accept the `ref` argument of type `WidgetRef` argument for the build method inside of the widget. This is not required in stateful widgets. Then we need to use the `ref.read()` method to access the provider. To this function we should pass the provider name as argument. On the provider object we can access the `notifier` property. We can then access the required method of the notifier class. The code will look like:

```javaScript
IconButton(onPressed: (){
          ref.read(favoriteMealProvider.notifier).toggleMealFavoriteStatus(meal);
        }
```

We can also access the value if the method in the notifier class returns a value.

We can create providers that depends upon other providers. Like we did for favorite meals we can create a provider for filter by creating a StateNotifier class. This class will accept a map of Filters and the status of filters which is a boolean. Inside of this class we can use the initializer list for the constructor to set all the filter values to false. Also we need to create a method to mutate the state. For this we can also use the spread operator to copy the map from the existing state and override the value of a filter if necessary. The code will look like:

```javaScript
import 'package:flutter_riverpod/legacy.dart';
 
enum Filter { glutenFree, lactoseFree, vegetarian, vegan }
 
class FiltersNotifier extends StateNotifier<Map<Filter, bool>>{
  FiltersNotifier():super({
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.vegan: false,
    Filter.vegetarian: false,
  });
 
  void setFilter(Filter filter, bool isActive){
    state = {
      ...state,
      filter: isActive,
    };
  }
}
 
final filtersProvider = StateNotifierProvider<FiltersNotifier,Map<Filter, bool>>((ref)=>FiltersNotifier());
```

After this we can use this provider where we want to modify the state. We should also extend the `ConsumerStatefulWidget` instead of `StatelefulWidget`. Then we need the extend `ConsumerState` instead of `State`.

We can use the `ref.read()` method when we only want to read the data from the provider only once without setting up a listener. We can also use read method to trigger methods that modify the state. For example:

```javaScript
 void initState(){
    super.initState();
    final activeFilters = ref.read(filtersProvider);
    _glutenFreeFilterSet = activeFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet = activeFilters[Filter.lactoseFree]!;
    _vegetarianFilterSet = activeFilters[Filter.vegetarian]!;
    _veganFilterSet = activeFilters[Filter.vegan]!;
  }
```

In this initState method we can use the read method to fetch the data initially which happens only once. In such cases we need to manually manage the state inside of class itself if we want to rebuild the widget if the data changes.

Alternatively we can turn the entire stateful widget to stateless widget and manage the state using the data from the provider. This makes the widget classes more leaner and avoid local initialization and management of state.

You can create multiple providers in the same file. This let's you group dependent providers in a single file. For example if we are creating a simple provider we will get the `ref` property automatically as argument to the anonymous function. We can use this ref property same as we used it inside of the widgets. We can call methods like `read()`, `watch()` etc on this method. Like this we can connect one provider to another provider. When use the watch method inside of the function of the provider when ever the value we are watching changes, riverpod will automatically re-execute that function. Any of the widgets which are listening to the provider will also update when the data from the dependent provider changes. The example will look like:

```javaScript
final filteredMealsProvider = Provider((ref){
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);
  return meals.where((meal) {
      if (activeFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (activeFilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (activeFilters[Filter.vegan]! && !meal.isVegan) {
        return false;
      }
      if (activeFilters[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      return true;
    }).toList();
});
```

The `filteredMealsProvider` is dependent on both `mealsProvider` and `filtersProvider`. This way if any changes to either of these states occur the widgets where we used the `filteredMealsProvider` will be re build.

We can get the data from this provider by using the `watch` method inside of the build method like:  
` final availableMeals = ref.watch(filteredMealsProvider);` 

There are 2 types of animations in flutter, **explicit** and **implicit** animations. For the explicit animation you build and control the entire animation, you have detailed control over it's configuration, it is more complex to implement. For implicit animation flutter controls the animation, and does a lot of work for you, it offers less control and is less complex to manage. Explicit animations can be avoided by using pre build animation widgets. 

When you are creating an explicit animation to a widget you must ensure that the widget is a `StatefulWidget`. Because we will be working with a state object, because behind the scenes an animation sets the state and updates and updates the UI as long as the animation is playing. We should create a property called `animationController` inside of the state class. In this property we are going to store a value of type `AnimationController`. We cannot create the animation controller where the property is initialized. We should use `initState` method for that. Inside of the initState method we can create the animationController. The animationController must be set before the build method executes. To tell dart that this property doesn't have a value initially when the class is created, but will have one when it is really needed you can use the special `**late**` keyword in front of the animation controller. You should make sure that the type of the property should be specified after late keyword.

Eg:  
` late AnimationController _animationController;`   
`AnimationController `class is provided by flutter. Inside of the initState method we can initialize the animationController object with the `AnimationController `class. The constructor function provides a lot of configuration options. There are some essential properties we should use:  
**1.** **vsync**: It requires a `TickerProvider` . vsync parameter is responsible for executing the animation for every frame, to provide a smooth animation. When using the `TickerProvider `we should use the `with `keyword before the opening brace of the class. This is a special feature of dart called `mixin`. mixin's can be thought of another class merged into this class behind the scenes to offer additional functionality. Along with the `with `keyword you should also add the class you need to merge with the current class. For the `TickerProvider `we should add `SingleTickerProviderStateMixin ` which is provided by flutter. 

If you have multiple animation controllers for different animations in a screen, we should add `TickerProviderStateMixin`. After adding the mixin class we should pass the `this `keyword as value for the `vsync `property. 

**2.** **duration :** This controls the duration of the animation you want to play. To add value to this property we can use the `Duration `class constructor to create a duration object. Normally we pass the `milliseconds `property of the duration class to set the animation duration. 

**3\. lowerBound:** Defines the minimum value of the animation (default is 0.0). Rarely needs to be changed.

**4\. upperBound:** Defines the maximum value of the animation (default is 1.0). Rarely needs to be changed.  
With animation you always animate between 2 values. We use these values to make the changes appear on the screen. For example you can add some margin or padding to a widget and that margin and padding could be based on current animation value which we set using the bounds. 

You should also add an override to the `dispose `method to dispose the `animationController `object. Inside the method you should call the` .dispose()` function The dispose method ensures that the animation controller is removed from memory once the widget is removed from the screen. The code till now will look like:

```javaScript
class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
  }
 
  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }
........
```

  
The `animationController `does not cause the execution of build method for every frame. It can be thought of as a timer or an interval running behind the scenes to which we can listen and manually update the UI. We can listen and update parts of the UI using `AnimatedBuilder `widget provided by flutter. It requires an `animation `and a `builder`, as argument. animation requires a `Listenable `object. The `animationController `we created is such a Listenable object. The `animationController `object that we passed will determine when the builder method of the `AnimatedBuilder `will be called. We can return the widgets of the page inside the anonymous function of the builder. This anonymous function will also receive the `context `and a `widget`. This widget is an extra widget which we could add on animation builder to set any widget that should be shown as part of the animated content but that should not be animated themselves. This helps in improving the performance of the animation by making sure that

not all the items that are part of the animated item are rebuilt and reevaluated as long as animation is running. The widgets we return inside of the builder method is reevaluated and rebuilt. For example if we only want to set an animation for the padding for a screen. We can set the entire widget tree of the screen as child. We can reuse this child inside of the builder method and set the child of padding as the child we defined. To dynamically set the padding we can access the `value` property of `animationController` which will dynamically update to change the padding dynamically.   
Defining the animation and configuring it is not enough to start the animation we need to manually start the animation from the code. We can use the `.forward()` method of the animation controller to start the animation. We can use the `.stop()` method of the animation controller to stop the animation. 

Since we want to start the animation when the widget is loaded we can place the forward method inside of `initState`. We can also use `repeat()` instead of forward to repeat the animation after it is stopped. Initially the value of the animation controller will be 0 by default. It will slowly increment to 1 by the duration we specified. So we can utilize this to set the padding top of the widget. We can set the padding top as an expression where we subtract the multiple of 100 and the value of `animationController `from 100\. So initially the padding will be 100, then finally at the end of the animation it will be 0\. This will create a smooth slide in from the bottom animation the entire code for the categories screen will look like:

```javaScript
class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
 
    _animationController.forward();
  }
 
  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }
@override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: GridView(
........................
),
      builder:(context, child) => Padding(padding: EdgeInsets.only(top:100 - _animationController.value * 100),child: child,),
    );
  }
}
```

The above method works but there is a better alternative way. Instead of manually adjusting the padding we can use a Transition widget which is already present in flutter. We can use the `SlideTransition `to move the widget from one position to another. It requires a `child `parameter which specifies the child that should be animated. The `position `parameter is also required, it is not a number but an an animation that animates an offset. The animation is what we get using the `animationController ` , the offset is a special kind of value used by flutter to describe the amount of offset of an element from the actual position it would normally take. We can use the `.drive() `method of the `animationController `object to create an animation based on some other value, i.e between 2 offsets based on the values from the animation controller(`lowerBound `and `upperBound`). For this the drive() method requires an `Animatable `child such a child can be built using the flutter's `Tween()` class constructor. 

The tween class creates tween objects, the name tween means between because this class and the objects are all about animating(defining the transition) between two values. It takes in `begin `and `end `as arguments. These requires an `Offset `object. We can create such an offset object using it's class, it takes in 2 numbers with decimal places (doubles) the first number defines the offset on x axis and the second number defines the offset on y axis. The value 0 indicates that there is no offset, and the value 1 indicates that there is 100% offset. So for the same slide in from bottom we can set the begin offset of y axis to a value greater than 0 and less than 1, and for the end we want the child widget to return to the original position in the screen this can be done by setting both offsets of the end to 0\. The code will be like:

  
```javaScript
builder:(context, child) => SlideTransition(position: _animationController.drive(
        Tween(
          begin: Offset(0, 0.3),
          end: Offset(0, 0)
        )
      ), child: child,)
```

The change is only for the builder method, everything from the previous example remains the same.  
 The approach is much more optimized and it gives us some extra features and capabilities.   
The Tween object also has an `animate `method. We can use this to entire replace the `drive `method with the Tween because the `animate `method returns an animation object. The animate takes in an argument which we can use to get more control over how the animation is played back. We can use built-in animation functions like `CurvedAnimation ` . `CurvedAnimation `is a configuration object for creating such animation with the help of `animate `method. 

`CurvedAnimation `takes in a `parent `attribute to which we can pass in our `animationController `object. It also requires a `curve `parameter which is a `Curve `object. We don't need to manually create this object because flutter has a Curves class in which there are multiple predefined animation curves. We can access the by using the `.`operator. These curves controls how the transition is applied between the begin and end state over the available animation time. This gives us more control over how the animation feels. The modified builder method will like:

```javaScript
builder:(context, child) => SlideTransition(position: Tween(
          begin: Offset(0, 0.3),
          end: Offset(0, 0)
        ).animate(
          CurvedAnimation(parent: _animationController, curve: Curves.easeInOut)
        ), child: child,),
```

This makes the animations look more natural.

Implicit animations are the animations which can be used by using built in widgets of flutter. For most of the animations we want to use pre built animations are the better choice. The implicit animations are easier to use. Most of the implicit animations can be used as widgets. So where ever you can use widgets we can use implicit animations. For example if we want a spin animation on an icon button which changes the icon upon clicking we can use the `AnimatedSwitcher()` . The `child `property of this widget is widget we want to animate. The `duration `defines the duration of the animation. The duration can be set using the `Duration `class. It has the `transitionBuilder `argument it needs a function which receives a widget and an animation which are provided automatically by flutter. Here you don't need to manually create animations instead the `AnimatedSwitcher `will automatically create one for you behind the scenes. It will automatically create the animation and start the animation.

It will start the animation whenever the child changes(updates). Thus the name implicit animations make sense; you don't need to manually create, configure and start the animation. The builder function should return a Transition widget. These transition widgets determine how we want to animate. In our case we want to rotate the icon so we can use the `RotaionTransition `widget. It requires a `turns `parameter. `turns `is an animation, since we are automatically getting an animation we can use the same animation parameter that we received through the builder function. It also requires a `child `parameter which is a widget, similar to the animation we are also getting the child so we can similarly pass that child. The child we are getting is from the child we defined for the `AnimatedSwitcher`. The example code will look like:  

```javaScript
icon: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation){
                return RotationTransition(turns: animation, child: child,);
              },
              child: isFavorite ? Icon(Icons.star) : Icon(Icons.star_border),
            )
```

The above code is not enough for the animation to be visible on the screen, because right now flutter cannot detect any changes that happened. It treats the code simply as a widget itself. To make sure that the flutter is aware of the changes we need to add a key parameter, this makes flutter take into account if we have a different widget(data changed) than before. We can add a `ValueKey `based on the boolean value of `isFavorite` to the child. This will trigger the animation. We can also configure the animation manually by passing the `Tween` object for the turns value. This helps you override the default bound values. We can set the `begin `and `end `values to 0.5 and 1.0 and then call the animate method on the tween object. Since we know that this method requires an animation object, we can pass the same animation object we received through the builder method argument. The code will look like:

```javaScript
icon: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return RotationTransition(turns: Tween(begin: 0.8, end:1.0).animate(animation), child: child);
              },
              child: Icon(
                isFavorite ? Icons.star : Icons.star_border_outlined,
                key: ValueKey(isFavorite),
              ),
            ),
```

We used animated switcher here because we are transition between 2 values. We can use any of the animated widgets provided by flutter. 

We can also animate across multiple screens. Flutter has built-in support for animation widgets across multiple screens. For example we can transition an image across multiple screens in our case when we select the meal image on the meals screen we can create a smooth transition animation which will display the same image in the meal details screen. For this we can wrap our `FadeInImage `widget with `Hero `widget which is build into flutter. This widgets helps to animate across different screens (or widgets). It requires a `child `which is the widget we want to transition. It also needs a `tag ` which will in identifying the widget on this screen and target screen. The tag should be unique for every widget. For our case we can use the `meal.id` which is unique for each meal. Then go to the place where we want to animate to (there must be a logical connection) go the widget where we want to animate and wrap it with `Hero `and give it the same `tag`. The code will look like:

```javaScript
Hero(
              tag: meal.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
```

For the source, and for the target:

```javaScript
Hero(
              tag: meal.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl),
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
```

A form is a combination of input fields. There is a built in `Form `widget in flutter. We don't need to use a form widget to display the input fields in a flutter application. But Form widget is useful when handling the input data, validating inputs and displaying on screen validation error messages. The `Form `widget requires a `child `parameter which determines the items displayed in the form. Here we can use any widget in flutter. When using the `Form `widget we should use the `TextFormField `widget instead of `TextField `widget. This widget integrates with the form widget and uses a set of features utilized by forms. Most of the input widgets have compatible form widgets. For these form widgets all the native parameters are available such as `maxLength`, `decoration `etc. The `TextFormField `has a `validator `parameter which let's you to call a function to validate the input. It will take a string value as input which is provided automatically by flutter. 

The function will also return a string value which is set by the user. We can manually set when we should call the function and validate the form. If you return an error message inside of this function flutter will automatically display the value on screen when the validation fails. The code will look like:

```javaScript
Form(child: Column(
      children: [
        TextFormField(
          maxLength: 50,
          decoration: InputDecoration(label: const Text('Name')),
          validator: (value){
            return 'Demo';
          },
        )
      ],
    )
```

The `TextFormField `have additional parameters like `initialValue `which can be used to setup an initial value to the input field inside of the form which is not available in regular text field. The initial value should be set as string.

The `DropdownButtonFormField `is the form widget for `DropdownButton `widget. It supports form specific features. The existing features of the drop down button widget will also be available. We can use the `.entries` attribute on a map to convert it into an iterable thus we can loop over it using for loop. From the iterable we can access the key and value using the dot operator. The `DropdownMenuItem `widget is still used for adding items to the `DropdownButtonFormField `widget. The code will look like:  

```javaScript
Expanded(
  child: DropdownButtonFormField(
    onChanged: (value) {},
    items: [
      for (final category in categories.entries)
        DropdownMenuItem(
          value: category.value,
          child: Row(
            children: [
              Container(
                width: 16,
                height: 16,
                color: category.value.color,
              ),
              const SizedBox(width: 6),
              Text(category.value.title),
            ],
          ),
        ),
    ],
  ),
),
```

When using the `DropdownButtonFormField `widget the selected item will automatically get displayed as the selected value which was not the case with normal `DropdownButton` . But it will not have an item selected initially.

We can define the logic in the validator function such that it will return an error message if validation failed and return null if the validation succeeds. The example will look like:

```javaScript
TextFormField(
                maxLength: 50,
                decoration: InputDecoration(label: const Text('Name')),
                validator: (value) {
                  if(value == null || value.isEmpty || value.trim().length <= 1 || value.trim().length > 50){
                    return 'Must be between 1 and 50 characters.';
                  }
                  return null;
                },
              ),
```

  
Flutter has a built in `tryParse `method in the `int `class which checks if the given string can be converted to integer. If it fails it will return null. Otherwise it will return the converted value. The example code will look like:

```javaScript
TextFormField(
  decoration: InputDecoration(
    label: const Text('Quantity'),
  ),
  initialValue: '1',
  validator: (value) {
    if (value == null ||
        value.isEmpty ||
        int.tryParse(value) == null ||
        int.tryParse(value)! <= 0) {
      return 'Must be a valid positive number.';
    }
    return null;
  },
)
```

We can also set a validator for `DropdownButtonFormField `widget.

We can execute all the validator functions of a form when submitting the form. This is done with the help of the `key `parameter. This key parameter is not like the key we have used before. We should create a variable and initialize it with the `GlobalKey()` constructor. This object can be used for the value of the key for the form widget. The GlobalKey constructor gives easy access to underlying widget to which it is connected. It also makes sure that the build method is executed. The Form widget manages the internal state by itself. The internal state helps us to show validation errors on screen. You will only need a `GlobalKey `to work with forms in flutter. We can use this global key to get access to that form. `GlobalKey `is a generic type so we need to set the type annotation. We will use the `FormState `as the key handles the state of the form widget.

We can access the validator functions from forms by using the formkey object and accessing the `currentState `property on which we can call the validators. We need to explicitly tell dart that the `currentState `will not be null by adding an exclamation mark. We can call the `validate()` method which is a built in method provided by the form widget. It will return a boolean value. If all the validator functions pass it will return true, if at-least one fails it will return false. The code will look like:

```javaScript
final _formKey = GlobalKey<FormState>();
  void _saveItems(){
    _formKey.currentState!.validate();
  }
Form(
          key: _formKey,
          child: Column(
            children: [
.............
Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text('Reset')),
                  ElevatedButton(onPressed: _saveItems, child: Text('Add Item')),
                ],
              ),
            ],
          ),
        ),
```

To change the keyboard of an input field we can add the `keyboardType `parameter. If we want only numbers input we can use `TextInputType.number` as value of this parameter.   
We can also use the formKey object to reset the form. We call the `reset() `method on the `currentState `object to reset the form fields. Example:

```javaScript
TextButton(onPressed: () {
                    _formKey.currentState!.reset();
                  }, child: Text('Reset')),
```

To save the form we can call the `save()` method on the `currentState` object of the `formKey `object. When you call the save method it will trigger a the `onSaved `function on all the form fields. It is a function which gets the entered value of the field automatically as argument. This value will be the value at the point when save method is executed. We can set this value to a variable if we want. We must add an exclamation mark to indicate that the value will not be null or alternatively we can check if the value is null. The cleanest method will be to first validate the form and then call the save method to save the data. We don't need to use the `setState `method when saving the value to a variable because we don't need to update the UI. 

The `DropdownButtonFormField `has an `initialValue `parameter which we can use it to set an initial value to the dropdown. We can set the initial value of the drop down to a variable which is initialized with a value. Then we can use the `onChanged `method to set the value of the field when user selects a different option from dropdown by setting the value of the this variable. Note that we need to use the `setState `method so that we the changes are in sync. We can also use the `onSaved `parameter to save the value of the drop down form field but since we are using the `onChanged `method it is not required.

Flutter applications run locally on the users device. If the device is lost or the data is erased all the data associated with the app will be gone. Other users have no access to the data stored in users phone. A backend server can help in solving this problem. The data is stored by the backend server in a central remote place like a SQL database. App users from the entire world can access this data since it is stored centrally. The backend server and the application communicate over http requests.

We can use firebase as a dummy third party backend. It is a service offered by google. It has a combination of services and database features that you can easily use and which you can get started for free if you have a google account. After logging in with the google account we should go the firebase console and create a new project by giving it a name. Firebase has many services which we can use. In order to send http requests we should use the real-time database service from the left side tab. This service lets you store firebase managed data in the database as well as provide url to access and modify the data by using http requests. The api documentation can found by searching _firebase realtime database_ rest in google. 

Click on the create database option and choose a region. Then in the next tab choose start in test mode, this ensures that you are able to send data and get data from this API without any issues. If you are using this for a real app you should select start in locked mode.

To make http requests from flutter application we need to install the http package. We can get the command to install this package from pub.dev. The command is:  
`flutter pub add http` 

After installing we can import the `http.dart` from `http `package. We can also add aliases to imports for example we can add an alias to the http package like:  
`import 'package:http/http.dart' as http;`   
All the functionalities of the the package can be accessed using this object/alias. We can use any name of our choice for an alias. 

We can use this `http `alias to access methods defined in this package. If we want to add new data we should send a post request to the backend. To send a post request we can use a `post `method of http package. The post method accepts multiple arguments. It always wants a `url` which is of type `Uri ` . It also accepts a map of `headers`. It has the `body `parameter which is the data we want to send to the server. We can create a url by using the `Uri `class which is a built in class in dart. It has many constructors to create different types of uri's . We are interested in the `https `constructor. Inside this constructor we should paste the url of the firebase realtime database server's url inside of single quotes without using the https://. Apart from this we need to add the path as the second argument. In case of firebase we can set any name for this path we want but make sure that we use `.json` at the end of the path name. The path name also should be in single quote. 

  
This will create a subfolder (node) in the database with the name specified. The code will be like:  
` final url = Uri.https('xxxx-xxxxxx-xexxcxx-xxxx-rtdb.firebaseio.com', 'shopping-list.json'); ` 

After the above step we can pass this object as url for the post method. For post method we should pass the headers. In the headers map we should pass `'Content-Type':'application/json'` . We need to send the `GroceryItem `object to the database in a json format, but currently it a dart object. So we need to convert it into a json object. We can do that by using dart's built in convert module. We must first import   
`import 'dart:convert';` 

We can the use the `encode()` method of the `json` class of the convert package to convert the dart object to json text. We should define the structure of the json object using a map. Inside this map we should specify the key as string and the values are dart objects. In the case of our grocery item we should just store the title of the category object. 

We don't need to send the id because firebase will automatically generate a unique id. The complete code will look like:

```javaScript
import 'dart:convert';
 
import 'package:http/http.dart' as http;
........
final url = Uri.https('xxxxx-xxxxx-xxxxx-default-rtdb.firebaseio.com', 'shopping-list.json');
      http.post(url, headers: {
        'Content-Type': 'application/json'
      },
      body: json.encode({
        'name': _enteredName,
        'qunatity':_enteredQuantity,
        'category': _selectedCategory.title
      })
      );
```

When sending http requests they might take some time to complete. We should make sure to handle the response from the http server and make sure that our request was successful. In our case we must make sure that the data is sent successfully to firebase before loading it to our application screen of shopping list. The post method of the http package returns a `Future Response `object. We can access this data in 2 ways:

1\. Chaining the `.then` method: We can chain the `.then() `method to the post method. It takes in a function which automatically gets the response. We can then work with that response. eg:

```javaScript
http.post(
.......
).then((response){
    //work with the response
});
```

2\. Using the `async await `: We can mark the function which calls the http method into an `async `function, then we can `await `the call of the http method. Once the call is completed the response can be accessed from the object. This method is much more convenient. The code will look like:

```javaScript
void _saveItems() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final url = Uri.https('xxxxx-xxxxx-xxxx-default-rtdb.firebaseio.com', 'shopping-list.json');
      final response = await http.post(url, headers: {
        'Content-Type': 'application/json'
      },
      body: json.encode({
        'name': _enteredName,
        'qunatity':_enteredQuantity,
        'category': _selectedCategory.title
      })
      );
      
      // Navigator.of(context).pop(
      //   GroceryItem(id: DateTime.now().toString(), name: _enteredName, quantity: _enteredQuantity, category: _selectedCategory)
      // );
    }
  }
```

There are some built in properties on the response object, for example we have the `statusCode `property which gives the http status code. We can use this to check weather the request was successful or not. We can also get the response data from the `body `property of the response object. The response data will be in json format, we can easily convert it into a Map in dart. 

When we want to navigate to a different screen from the method where we send the http request we should make sure that the context is still available. Because the user might already try to navigate away from the current screen. We must check if the context is part of the current screen from which the wants to navigate away from. This can be done by checking if the `mounted `property of the `context `object. It is a boolean value which returns true if it is still part of the screen. The code will look like:

```javaScript
void _saveItems() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final url = Uri.https('xxxxx-xxxxxx-xxxxx-default-rtdb.firebaseio.com', 'shopping-list.json');
      final response = await http.post(url, headers: {
        'Content-Type': 'application/json'
      },
      body: json.encode({
        'name': _enteredName,
        'qunatity':_enteredQuantity,
        'category': _selectedCategory.title
      })
      );
      print(response.body);
      if (!context.mounted) return;
      Navigator.of(context).pop();
      // Navigator.of(context).pop(
      //   GroceryItem(id: DateTime.now().toString(), name: _enteredName, quantity: _enteredQuantity, category: _selectedCategory)
      // );
    }
  }
```

By doing this we made sure that the added data will be available on the grocery list screen.

We can send the get request to an endpoint by using the `get `method of the http package. We also need to create a url object and pass it to the get method. The get method does not have a body, so we can leave them blank. If we have headers we can also send them if we want. We can create a function to send an http get request like:

```javaScript
void _loadItems() async {
    final url = Uri.https(
      'xxxxx-xxxxx-xxxxx-default-rtdb.firebaseio.com',
      'shopping-list.json',
    );
    final response = await http.get(url);
  }
```

We can call this function when we need to load the items to the screen. It should fetch new items when the screen is loaded initially and when new items are added. Since this is a void method we don't need to await it when calling it. For example in the `initState `method it can be used like:

```javaScript
@override
  void initState() {
    super.initState();
    _loadItems();
  }
```

We also don't need to mark it as async.

We can call the `.entries` property on a Map to convert it into an **iterable of MapEntry objects**, where each MapEntry contains a key-value pair. We can then use methods of iterable to perform searching on this. For example we can use the `firstWhere()` method to search the first occurrence of an item and return it. It is similar to where but it only returns the first matching item. The complete code will look like:

```javaScript
void _loadItems() async {
    final url = Uri.https(
      'xxxxx-xxxxxx-xxxxx-default-rtdb.firebaseio.com',
      'shopping-list.json',
    );
    final response = await http.get(url);
    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadedItems = [];
    for(final item in listData.entries){
      final category = categories.entries.firstWhere((catItems)=>catItems.value.title==item.value['category']).value;
      loadedItems.add(GroceryItem(
        id: item.key,
        name: item.value['name'],
        quantity: item.value['qunatity'],
        category: category,
      ));
    }
    setState(() {
      _groceryItems = loadedItems;
    });
  }
```

We should reduce the number of api calls we make inside of an application. In our case we are again fetching the data after a new item is added. This is un necessary because when we add a new item to the firebase we will automatically get the id. We can use this id and the already entered data to create a new item and add it to our list. This avoids an un necessary call. The code will be:

```javaScript
 final Map<String, dynamic> resData = json.decode(response.body);
 
      if (!context.mounted) return;
      Navigator.of(context).pop(
        GroceryItem(
          id: resData['name'],
          name: _enteredName,
          quantity: _enteredQuantity,
          category: _selectedCategory,
        ),
      );
```

It is a good practice to add loading spinner when you are waiting the response from an api. We can display the spinner like:

```javaScript
if (_isLoading) {
      content = const Center(child: CircularProgressIndicator());
    }
```

It is also a good idea to show a spinner when a post request is made because, the api may take a second or two to add the data and send the response. During this time the user may again send the data by interacting with the UI. This may cause issues. To avoid this we can also show a loader when data is added additional to the spinner being shown when data is fetched.   
We can disable a button by passing `null `to `onPressed `parameter. Eg:

```javaScript
ElevatedButton(
                    onPressed: _isSending ? null : _saveItems,
                    child: Text('Add Item'),
                  )
```

We can also show the spinner on buttons. Example:

```javaScript
 ElevatedButton(
                    onPressed: _isSending ? null : _saveItems,
                    child: _isSending? const SizedBox(height: 16, width: 16,child: CircularProgressIndicator(),) : const Text('Add Item'),
                  ),
```

When sending http requests we must also handle situations where the server might fail or send a failure response. We can check the `statusCode `parameter of the response and check if it is a failure or not. You can check of individual errors or a range of failures. if the `statusCode `value is greater than `400 `it is surely an error. 

In firebase if we want to delete a record we need to pass the id of the item which we want to delete in the url. We can append the id at the end of the file name like:

```javaScript
final url = Uri.https(
      'xxxxx-xxxxx-xxxxxx-default-rtdb.firebaseio.com',
      'shopping-list/${item.id}.json',
    );
```

and call the delete method on this url. The `delete `method of the http class supports a body but here we don't need that. We can wrap the function which contains the delete call with async await but here it is not required since we are fine with the delete happening in the background and the `setState `method instantly removes the data locally and updates the UI. But it is necessary to check for the errors in the api call and handle it so we can wrap it in async await. So the function will look like:

```javaScript
void _removeItem(GroceryItem item) async {
    final index = _groceryItems.indexOf(item);
    final url = Uri.https(
      'xxxx-xxxxx-xxcxx8x-default-rtdb.firebaseio.com',
      'shopping-list/${item.id}.json',
    );
    final response = await http.delete(url);
    if(response.statusCode >= 400){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Deleting item failed!'),duration: Duration(milliseconds: 300),));
      setState(() {
        _groceryItems.insert(index, item);
      });
    }
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Item deleted.'),
        duration: Duration(milliseconds: 300),
      ),
    );
    setState(() {
      _groceryItems.remove(item);
    });
  }
```

Finally we need to handle the situation where there is no data in the firebase. Firebase returns a null string so we need to check that case and show appropriate error message. eg:

```javaScript
if(response.body == 'null'){
      setState(() {
        _isLoading = false;
      });
      return;
    }
```

Apart from checking for http `statusCode`, there are also scenarios where dart throws an error in situations like no internet connection or error when connecting to the api. We can throw an error to handle these situations. We can use the `Exception `class constructor to create an exception with the message, and use the `throw `keyword to throw the exception. But when you throw an exception all other code after the throw statement will not be executed.   
eg:  
` throw Exception('An error occured');` 

We should use the above statement carefully because it might crash our application.

The `http `package already has built in mechanisms to handle the situations like no internet connection. In such situations it will throw an error object. We can handle it using the` try catch` blocks in dart. We will put the code that will potentially fail inside of the try block. Don't put all your code inside of try block. The catch block catches errors that might be thrown. 

The `FutureBuilder `widget is useful when loading data through http requests and futures. This widget will listen to the future and automatically updates the UI as the future resolves. The future builder widget needs 2 parameters. It need the `future `which we should listen to and a builder which is function which gets executed whenever the future produces the data. The function automatically receives the `context `and a `snapshot `which gives you access to the current state of the future. The `async `function automatically returns a future object. So in our case we can modify our data loading function to return a `Future `of `List `of `GroceryItems` . We can avoid using the `try catch` block also because future builder provides a different and easy way to handle errors. Also we can remove the `setState `because future builder will also handle the state accordingly when data is received from the http response.

It is a bad practice to call the function which returns a future by directly calling the function in place of `future `parameter of the `FutureBuilder `widget, because every time the state changes the function will be executed again. We can avoid this by creating a future object which will receive the data from the method. The data from the method will be assigned when the widget is loaded initially by placing it inside of `initState `method. We should specify the `late `keyword infront of the declaration of this variable because the value cannot be null when we define the future. This will tell dart that there will no values initially for this object but it will have a value before it is used for the first time. The code will look like:

```javaScript
  late Future<List<GroceryItem>> _loadedItems;
  String? _error;
  @override
  void initState() {
    super.initState();
    _loadedItems = _loadItems();
  }
```

  
Inside of the builder method of the future builder widget we should return widgets(multiple) based on the current state of the future. We can access the state by using the `snapshot `object which we gets automatically. We can use the `connectionState `property of `snapshot `object which has a couple of possible values. The `ConnectionState enum `contains the possible values for this. The `ConnectionState.waiting` is the initial state when the request is sent and waiting for the response. This is the loading state. Here we can return the loading spinner. 

To check for errors from the api we can use the `hasError `attribute of `snapshot `object. This will be true if our future has been rejected i.e, an error has been thrown from inside of the code that produces the future. We can throw an exception if there is an error response, which will change the state of the future to be rejected. We can access the error message from the `error `property of the `snapshot `object. 

We need to chain the `.toString()` on it to display it.   
In other cases where the future is not waiting or rejected i.e we have got the data from http request, we can access the data from the `data `property of the `snapshot `object. We can check weather the data is empty or not. And finally after all the checks we can return the widget which we want to display. Inside of the widget where we want to access the data from the future we can also use the `data `attribute of the `snapshot `object. We should also put `! `to indicate that it will not be empty. The code will look like:

```javaScript
Scaffold(
  body: FutureBuilder(
    future: _loadedItems,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: CircularProgressIndicator());
      }
      if (snapshot.hasError) {
        return Center(child: Text(snapshot.error.toString()));
      }
      if (snapshot.data!.isEmpty) {
        return const Text('No items added yet.');
      }
      return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) => Dismissible(
          key: ValueKey(snapshot.data![index].id),
          onDismissed: (direction) => _removeItem(snapshot.data![index]),
          child: ListTile(
            title: Text(snapshot.data![index].name),
            leading: Container(
              color: snapshot.data![index].category.color,
            ),
            trailing: Text(snapshot.data![index].quantity.toString()),
          ),
        ),
      );
    },
  ),
);
```

Now the list will be displayed. But when a new item is added it will not be shown, we will have to restart the app to see the newly added item. Also when we delete an item we will get an error. This is because once the builder method is executed only once. Even if we use `setState `it will simply recreate the future builder and not the future. Due to this the UI never updates. So due to this for this app the `FutureBuilder `is not ideal. **If you have a screen or widget where you only need to load data show different states weather you are downloading or not, and you don't have any other logic related to the data future builder might be ideal**. 

There is no built in widget that could open the camera and take an image. We will have to create a widget on our own. We need to create a widget that could open the camera, take an image and show the preview of the captured image. We should also pass the image to the screen where we add the data. We need to create a `StatefulWidget `for this. The skeleton of the functionality will look like:  

```javaScript
Container(
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(
            context,
          ).colorScheme.primary.withAlpha((255 * 0.2).toInt()),
        ),
      ),
      child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.camera),
        label: Text('Take Picture'),
      ),
    );
```

`image_picker `is a library in flutter which you can use for adding an image picker to your app. Image picker package provide options for choosing the camera or an existing image. For libraries that utilize native device features we have to implement some extra configuration and setup to make sure that they work. The command to install image picker is:  
`flutter pub add image_picker`   
For android we don't need extra configuration for `image_picker`. You should check pub dev documentation for the libraries to know more about these configuration.

To use this we need to first import the `image_picker.dart` file from `image_picker `package. Then we need to instantiate an object of the `ImagePicker `class. On this object we will get various methods for picking images, picking videos and pick multiple images. Here we need `pickImage `method to pick a single image. It requires a source parameter which requires an `ImageSource `value. We can use the `ImageSource `enum value, it has values `camera `and `gallery`. We can use the `ImageSource.camera` since the user must click an image. Additionally we can also set the image `maxWidth`, `maxHeight `and image quality as parameters to the `pickImage `method. If we pass the max width and height values the captured image will be scaled down. The `pickImage `method will return a future of type `XFile`. It is a file that contains the image. We can either mark the function as `async `or call the .then method on `pickImage `to get a hold of the image.

The `XFile `is an optional return as you can see from the docstring because the user might open the camera and choose not to select an image.   
After capturing the image we need to show the preview in the screen. For this we can create a variable of `File `type to store the image. The `File `class is available in the io module of dart. We can import it like:

```javaScript
import 'dart:io';
```

The picked image of type `XFile `but we are storing that value in a variable of type `File`. We can easily convert this using the `File `constructor to which we pass the path of the `XFile `object. We can access the path by using the `.path` parameter of the `XFile `object. The captured image will placed inside of the device memory we are accessing that path and providing it to the constructor to create an object.   
We can display an image from file by using the `Image.file()` constructor. The code will look like:

```javaScript
File? _selectedImage;
  void _takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    if (pickedImage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(pickedImage.path);
    });
  }
....
    Widget content = GestureDetector(
      onTap: _takePicture,
      child: TextButton.icon(
        onPressed: _takePicture,
        icon: const Icon(Icons.camera),
        label: Text('Take Picture'),
      ),
    );
    if (_selectedImage != null) {
            content = Image.file(_selectedImage!, fit: BoxFit.cover, width: double.infinity, height: double.infinity);
    }
```

  
The next step is to save the image. We can create a function in the add places screen which saves the image. We can pass this function as argument to the `InputImage `widget. The code will look like:

```javaScript
  const ImageInput({super.key, required this.onPickImage});
  final void Function(File image) onPickImage;
......
widget.onPickImage(_selectedImage!);
// in the parent widget
ImageInput(onPickImage: (image){
              _selectedImage = image;
            },),
```

  
To display the preview of the image in the list we can use the leading parameter of the `ListTile`. We can set that to `CircleAvatar`. We can set the `backgroundImage `property to set the image. This requires a Image, since we have a file we can use the `FileImage `to set the image. The code will look like:

```javaScript
          leading: CircleAvatar(radius: 26, backgroundImage: FileImage(places[index].image),),
```

The location package is used to access the location from the users device in flutter. We can find this package in pub dev. We can install it using  
`flutter pub add location` 

This package works in android without extra configuration but if you need your app to run in background you will need to manually setup the permission in the android manifest file.   
After installing the package we need to create a widget that helps to get the user's location in add place screen. To get the location first we need to import the `location.dart` file from location package.

```javaScript
import 'package:location/location.dart';
```

We can refer the documentation to get the code to access the location and use it inside of an async function. The code will look like:

```javaScript
  void _getCurrentLocation() async {
    Location location = Location();
 
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;
 
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
 
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
 
    locationData = await location.getLocation();
  }
```

The `locationData `object is what we want. It has a couple of properties, what we are interested in is the `latitude `and `longitude`. 

This is what we will use to get the human readable address as well as put the pin on the map. Getting the user's location can take a while. So preferably we should show a loading screen.

To show the location on map we can use the google maps api. For this we need to go to google maps platform web page and sign in with google account. Set up the billing and create a key which you can use for the api. After this we need to select the GeoCoding API and maps sdk for android. We will need to use the API key to use the maps feature in flutter app.

The geocoding api can be used to translate the latitude and longitude into a human readable address. We need to send an http request to this api. For that we need to install http package in our project. We can create a Uri object and pass that the latitude and longitude with the url along with the api key. We can find the url from the documentation. As we inspect the documentation of the api, we will have the `formatted_address `field which we want here. The code will look like:

```javaScript
    locationData = await location.getLocation();
    final lat = locationData.latitude;
    final lng = locationData.longitude;
    final uri = Uri.parse('https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=xxxxxxxxxxxxxxxxxxxxx')
    final response = await http.get(uri);
    final responseData = json.decode(response.body);
    final address = responseData['results'][0]['formatted_address'];
```

To show the location preview we need to use google maps static api. This can be used to create a snapshot of a location of the app. We will get the image on the fly when we access this url.

To display a google maps based map we can use the `google_maps_flutter `package. For this to work we need to enable google maps sdk in the google developer console. We can install the package using:

`flutter pub add google_maps_flutter` 

Since this package is used to enable native device features we need to perform additional configurations for the app. For android we need to specify the api key inside of` manifest.xml` file:

`<meta-data android:name="com.google.android.geo.API_KEY" android:value="YOUR KEY HERE"/>` directly below the application tag.

To use the location in the app we need to first import the `google_maps_flutter.dart` file from `google_maps_flutter `package. After adding this import we can add the `GoogleMap `widget to render a map. This map can be configured. The `initialCameraPosition` parameter can be used to set where the map should be centered. It requires a `CameraPosition `object which can be created using it's constructor which is in google maps package. It requires a target parameter which requires a `LatLng `object which can be created using the constructor which accepts the latitude and longitude. We can also set the zoom level using `zoom `parameter which requires an integer value.  
  
The `markers `parameter of the `GoogleMaps `widgets allows you create a set of markers on the map. We can create a set using `{} ` like map, unlike map there is no key, it is just a collection of values separated by , . Sets doesn't allow duplicate values. If you try to add a duplicate value to the set it will not be added. 

The `marker `parameter requires a set of `Marker `objects. We can create marker objects by it's constructor provided in google maps package. This constructor requires a `markerId `which can be created using it's own constructor in google maps package. We must pass a unique value to this as a string. For our scenario we have only 1 marker so we can give any string we want. It also requires a `position `where the marker should be placed. The position can be set using the `LatLng()` constructor. The complete code for showing the map will look like:

```javaScript
class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
    this.location = const PlaceLocation(
      latitude: 37.422,
      longitude: -122.084,
      address: '',
    ),
    this.isSelecting = true,
  });
  final PlaceLocation location;
  final bool isSelecting;
  @override
  State<StatefulWidget> createState() {
    return _MapScreenState();
  }
}
```

```javaScript
class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isSelecting ? 'Pick Your Location' : 'Your Location'),
        actions: [
          if (widget.isSelecting)
            IconButton(icon: const Icon(Icons.save), onPressed: () {}),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.location.latitude, widget.location.longitude),
          zoom: 16,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('m1'),
            position: LatLng(widget.location.latitude, widget.location.longitude),
          ),
        },
      ),
    );
  }
}
```

We can listen to taps on the map for selecting a position in the map. The `onTap `parameter of the `GoogleMap` which can be set to a function which automatically receives the `position `as argument. We can then call the `setState `to update the marker on the map.   
In dart we can use the special ?? syntax to check if the value is null and use that value otherwise use the value after ??. For example:

```javaScript
position:  _pickedLocation ??  LatLng(
              widget.location.latitude,
              widget.location.longitude,
            ),
```

is the same as

```javaScript
 position: _pickedLocation!=null ? _pickedLocation! : LatLng(
              widget.location.latitude,
              widget.location.longitude,
            ),
```

  
To store the data locally we need to install a couple of packages. The `path_provider `package provides easy access to the path where we should store the image so that the images are not deleted from the device by the OS. The command is:  
` flutter pub add path_provider` 

Additionally we have to install the `path` package which simplifies the process of working with file paths. Because we need to construct paths manually and this package makes that process easier. The command is:  
`flutter pub add path`  
Additionally we need to install the `SQFLite `package for sqlite. It helps in storing the data on device using SQL commands. It creates an on device database where the data is stored in tables. Alternatively we can use the `shared_preferences `package which is comparatively more basic than sqflite. With shared preferences we use simple key, value pairs to store the data where as in sqflite we will get the complete table structure. The command is:  
`flutter pub add sqflite` 

Different operating systems uses different paths for storing the data. We can use the path\_provider package to get the directory where the data is stored. For this first we need to import the `path_provider.dart` file from `path_provider `package with an alias called `syspaths`. The alias makes it easier to access the functionalities and avoids name space coalitions. We can use the `getApplicationDocumentsDirectory() `method of this package to get the application directory where the files are stored. This method returns a future object so we must use async await.  
We can copy the file(image file) to another location by using the `.copy() `method of the file object.  
The copy method requires the target location as a string.   
We can use the path package to get the file name of the file which we stored. For this we need to import `path.dart` file from `path` package and import it with an alias called `path` . We can then use the basename() method of the path package to get the name. 

We need to send the file object's path as argument to this method. We can dynamically construct a path with the app directory and the filename we got. We can then save this path in our application to make the image files persists.

```javaScript

```

```javaScript

```

The above function in the provider class handles the storage of the images.

The next step is to store the meta data into our sql database. To utilize the functionalities of the database we need to import the `sqflite.dart` file and `sqlite_api.dart` file from `sqflite` package. 

```javaScript
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';
```

After this we can utilize the functionalities using the sql alias. The `getDatabasesPath() `method returns a future that will eventually give the path of the database on the device. After we got the path we need to open the database using the `openDatabase()` method of the sqflite package. This requires a path as parameter which can be created with the help of `path `package. The path package has a `.join` method to create a path. We already have the database path with us we can join it with the database name we already have or we want to create. We can give any filename as string which must end in `.db` . If the file doesn't exist it will create a new one. eg:  

The `openDatabase `method also takes in a couple of other parameters, we can use the `onCreate `parameter which takes in a function as a value. This function will be executed when the database is created for the first time. This function is used to perform some initial setup work. The function automatically gets the database and version objects as arguments. Inside of this function we should return a future. This future is the result of executing a database query. We can use the `execute `method of the database object to execute a sql query. The query can be passed as string. We can use the create sql command to create the table. Additionally we must also specify the `version `parameter of the `openDatabase` method. We must increment this version if the structure of the database is changed in order to create a new database. The `openDatabase `method returns a future which will have the database object. We can call various methods on this object to perform various sql operations.

We can use the `insert `method of the database object to insert the data. It requires a table name as string and the values as a map where the keys are the column names of the table and the values are the values which we want to insert into the column of the table. The code will now look like:

  
```javaScript

```

We must also get the data from the database when the app is initially loaded. We can create a new method in the provider for this. Inside the provider we are using the same database object multiple times so we can place it into a global function like:  

```javaScript

```

We can use it by calling like:

```javaScript

```

We can use the `query()` method on the database object to query a table. It requires the table name as string. We can also filter the data by using the where parameter and specifying the conditions.

From the query result we will get a list of maps, we need to convert it into the object we need to be displayed on the screen. For this list we can use `map()` method to iterate over the query result and in our case we need a Place object. Inside of the list the map contains each column name as key and the column value as value. We also need to cast it to the particular type using the `as `keyword. The data loading method will look like:  

```javaScript
  void loadPlace() async {
    final db = await _getDatabase();
    final data = await db.query('user_places');
    final places = data.map(
      (row) => Place(
        id: row['id'] as String,
        title: row['title'] as String,
        image: File(row['image'] as String),
        location: PlaceLocation(
          latitude: row['lat'] as double,
          longitude: row['lng'] as double,
          address: row['address'] as String,
        ),
      ),
    ).toList();
    state = places;
  }
```

We can use the `FutureBuilder `widget to load the data from the database initially and display it on screen. The code will look like:  

```javaScript
class _PlacesScreenState extends ConsumerState<PlacesScreen> {
  late Future<void> _placesFuture;
  @override
  void initState() {
    super.initState();
    _placesFuture = ref.read(userPlacesProvider.notifier).loadPlace();
  }
......
child: FutureBuilder(
          future: _placesFuture,
          builder: (context, snapshot) =>
              snapshot.connectionState == ConnectionState.waiting
              ? Center(child: CircularProgressIndicator())
              : PlacesList(places: userPlaces),
        ),
```