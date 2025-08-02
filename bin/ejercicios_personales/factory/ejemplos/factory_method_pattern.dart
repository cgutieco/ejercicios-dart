abstract class Shape {
  void draw();

  // Factory method estático
  static Shape createShape(String type) {
    switch (type.toLowerCase()) {
      case 'circle':
        return Circle();
      case 'rectangle':
        return Rectangle();
      case 'triangle':
        return Triangle();
      default:
        throw ArgumentError('Forma desconocida: $type');
    }
  }
}

class Circle implements Shape {
  @override
  void draw() {
    print('Dibujando un círculo');
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('Dibujando un rectángulo');
  }
}

class Triangle implements Shape {
  @override
  void draw() {
    print('Dibujando un triángulo');
  }
}

void main() {
  var shapes = ['circle', 'rectangle', 'triangle'];

  for (var shapeType in shapes) {
    var shape = Shape.createShape(shapeType);
    shape.draw();
  }
}