// Define Variables
void main() {
  // Data Types
  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  // Print initial variable values
  print("Integer: $myInt");
  print("Double: $myDouble");
  print("String: $myString");
  print("Boolean: $myBool");
  print("List: $myList");

  // Type Conversion Functions
  StringToInt('123');
  StringToDouble('456.78');
  IntToString(100);
  IntToDouble(50);

  // Convert and Display
  convertAndDisplay("789");
  
  // Control Flow
  checkNumber(5); // Example number to check
  checkVotingEligibility(20); // Example age for voting eligibility
  printDayOfWeek(3); // Example day of week

  // Loops
  print("For Loop (1 to 10):");
  forLoopExample();
  print("While Loop (10 to 1):");
  whileLoopExample();
  print("Do-While Loop (1 to 5):");
  doWhileLoopExample();

  // Combining Data Types and Control Flow
  print("Complex Example:");
  complexExample();
}

// Type Conversion Functions
void StringToInt(String str) {
  int value = int.parse(str);
  print("String to Int: $value");
}

void StringToDouble(String str) {
  double value = double.parse(str);
  print("String to Double: $value");
}

void IntToString(int number) {
  String value = number.toString();
  print("Int to String: $value");
}

void IntToDouble(int number) {
  double value = number.toDouble();
  print("Int to Double: $value");
}

// Function to Convert and Display
void convertAndDisplay(String numberStr) {
  int intValue = int.parse(numberStr);
  double doubleValue = double.parse(numberStr);
  print("Converted Values from '$numberStr': Int = $intValue, Double = $doubleValue");
}

// If-Else Statements
void checkNumber(int number) {
  if (number > 0) {
    print("The number $number is positive.");
  } else if (number < 0) {
    print("The number $number is negative.");
  } else {
    print("The number is zero.");
  }
}

// Check Voting Eligibility
void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

// Switch Case for Day of the Week
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number.");
  }
}

// For Loop
void forLoopExample() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// While Loop
void whileLoopExample() {
  int i = 10;
  while (i > 0) {
    print(i);
    i--;
  }
}

// Do-While Loop
void doWhileLoopExample() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// Complex Example with List and Control Flow
void complexExample() {
  List<int> numbers = [1, 2, 3, 15, 22, 45, 99, 100, 150];

  for (int number in numbers) {
    print("Number: $number");

    // Check if even or odd
    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }

    // Switch statement for categorizing
    switch (number) {
      case int n when (n >= 1 && n <= 10):
        print("$number is small.");
        break;
      case int n when (n > 10 && n <= 100):
        print("$number is medium.");
        break;
      case int n when (n > 100):
        print("$number is large.");
        break;
      default:
        print("$number is out of range.");
    }
  }
}
