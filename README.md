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