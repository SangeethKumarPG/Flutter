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