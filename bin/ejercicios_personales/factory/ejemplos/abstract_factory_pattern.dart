// Productos abstractos
abstract class Button {
  void render();
}

abstract class Checkbox {
  void render();
}

// Factory abstracto
abstract class UIFactory {
  Button createButton();
  Checkbox createCheckbox();
}

// Implementaciones concretas para Windows
class WindowsButton implements Button {
  @override
  void render() {
    print('Renderizando botón de Windows');
  }
}

class WindowsCheckbox implements Checkbox {
  @override
  void render() {
    print('Renderizando checkbox de Windows');
  }
}

// Implementaciones concretas para Mac
class MacButton implements Button {
  @override
  void render() {
    print('Renderizando botón de Mac');
  }
}

class MacCheckbox implements Checkbox {
  @override
  void render() {
    print('Renderizando checkbox de Mac');
  }
}

// Factories concretos
class WindowsUIFactory implements UIFactory {
  @override
  Button createButton() => WindowsButton();

  @override
  Checkbox createCheckbox() => WindowsCheckbox();
}

class MacUIFactory implements UIFactory {
  @override
  Button createButton() => MacButton();

  @override
  Checkbox createCheckbox() => MacCheckbox();
}

// Factory de factories
class UIFactoryProvider {
  static UIFactory getFactory(String platform) {
    switch (platform.toLowerCase()) {
      case 'windows':
        return WindowsUIFactory();
      case 'mac':
        return MacUIFactory();
      default:
        throw ArgumentError('Plataforma no soportada: $platform');
    }
  }
}

void main() {
  // Crear UI para Windows
  var windowsFactory = UIFactoryProvider.getFactory('windows');
  var windowsButton = windowsFactory.createButton();
  var windowsCheckbox = windowsFactory.createCheckbox();

  windowsButton.render();   // Renderizando botón de Windows
  windowsCheckbox.render(); // Renderizando checkbox de Windows

  // Crear UI para Mac
  var macFactory = UIFactoryProvider.getFactory('mac');
  var macButton = macFactory.createButton();
  var macCheckbox = macFactory.createCheckbox();

  macButton.render();   // Renderizando botón de Mac
  macCheckbox.render(); // Renderizando checkbox de Mac
}