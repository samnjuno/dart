class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.makeSound(); // Outputs: Dog barks
  myCat.makeSound(); // Outputs: Cat meows
}
