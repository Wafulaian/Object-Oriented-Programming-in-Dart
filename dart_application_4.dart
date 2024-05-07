// Interface for making sounds
abstract class Sound {
  void makeSound();
}

// Animal class (parent)
class Animal implements Sound {
  final String name;
  final int age;

  Animal(this.name, this.age);

  // Simple default sound for Animal
  @override
  void makeSound() {
    print('(Animal sound)');
  }

  @override
  String toString() => 'Animal(name: $name, age: $age)';
}

// Dog class (child) inheriting from Animal and overriding sound
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  // Dog-specific sound
  @override
  void makeSound() {
    print('Woof!');
  }

  @override
  String toString() => 'Dog(name: $name, age: $age, breed: $breed)';
}

void main() {
  // Create an Animal (replace with your data source)
  final animal = Animal('Leo', 5);

  // Create a Dog
  final dog = Dog('Buddy', 3, 'Labrador');

  // Print details
  print(animal);
  print(dog);

  // Make them speak
  animal.makeSound(); // Generic animal sound
  dog.makeSound(); // Woof!
}
