abstract class Animal {
  String name;
  String type;

  Animal._(this.name, this.type);

  // Factory constructor
  factory Animal(String type, String name) {
    switch (type.toLowerCase()) {
      case 'dog':
        return Dog._(name);
      case 'cat':
        return Cat._(name);
      case 'bird':
        return Bird._(name);
      default:
        throw ArgumentError('Tipo de animal desconocido: $type');
    }
  }

  void makeSound();
}

class Dog extends Animal {
  Dog._(String name) : super._(name, 'Dog');

  @override
  void makeSound() {
    print('$name dice: ¡Guau!');
  }
}

class Cat extends Animal {
  Cat._(String name) : super._(name, 'Cat');

  @override
  void makeSound() {
    print('$name dice: ¡Miau!');
  }
}

class Bird extends Animal {
  Bird._(String name) : super._(name, 'Bird');

  @override
  void makeSound() {
    print('$name dice: ¡Pío!');
  }
}

void main() {
  // Creando animales usando factory constructor
  var dog = Animal('dog', 'Firulais');
  var cat = Animal('cat', 'Michi');
  var bird = Animal('bird', 'Piolín');

  dog.makeSound();  // Firulais dice: ¡Guau!
  cat.makeSound();  // Michi dice: ¡Miau!
  bird.makeSound(); // Piolín dice: ¡Pío!
}