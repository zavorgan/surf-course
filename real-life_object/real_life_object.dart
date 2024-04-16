class Smartphone {
  final String brand; // Бренд не меняется, поэтому он final
  final String model; // Модель также неизменна
  Camera camera; // Камера может быть заменена, поэтому без final
  bool _isOn; // Состояние включения смартфона - приватное поле
  static const String operatingSystem =
      'FlutterOS'; // Предположим, что все смартфоны работают на одной ОС

  // Основной конструктор
  Smartphone(this.brand, this.model, Camera camera)
      : this.camera = camera,
        _isOn = false;

  // Именованный конструктор, который автоматически активирует устройство при создании
  Smartphone.poweredOn(this.brand, this.model, Camera camera)
      : this.camera = camera,
        _isOn = true;

  // Метод для включения смартфона
  void powerOn() {
    _isOn = true;
    print('Smartphone is now on.');
  }

  // Метод для выключения смартфона
  void powerOff() {
    _isOn = false;
    print('Smartphone is shut down.');
  }

  // Проверка состояния смартфона
  bool get isOn => _isOn;

  // Метод для съемки фотографии
  void takePhoto() {
    if (_isOn) {
      camera.capture();
    } else {
      print('Turn on your smartphone to take a photo.');
    }
  }

  @override
  String toString() {
    return 'Smartphone: $brand $model, OS: $operatingSystem';
  }
}

class Camera {
  final int megapixels;
  double lensAperture;
  bool _isCameraOn;

  // Конструктор камеры
  Camera(this.megapixels, this.lensAperture) : _isCameraOn = false;

  // Метод для включения камеры
  void turnOn() {
    _isCameraOn = true;
    print('Camera is ready to shoot.');
  }

  // Метод для съемки фото
  void capture() {
    if (_isCameraOn) {
      print('Taking a photo with $megapixels megapixels.');
    } else {
      turnOn();
      print('Taking a photo with $megapixels megapixels.');
    }
  }
}

void main() {
  Camera mainCamera = Camera(12, 1.8);
  Smartphone myPhone = Smartphone('Pixel', 'Pixel 4a', mainCamera);

  print(myPhone);
  myPhone.powerOn();
  myPhone.takePhoto();
}
