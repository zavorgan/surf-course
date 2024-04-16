# Description of your result

  
Класс `Camera` является вложенным объектом, который имеет свои поля, такие как `megapixels` и `lensAperture`, а также способность включения и фотографирования.  

В функции `main()` мы создаем камеру и смартфон, затем используем методы объекта смартфона, чтобы включить его и сделать фотографию.

Этот пример демонстрирует работу с объектами, их состояниями, иерархией классов и доступом к полям и методам объектов.

  

## Description

  

- Поля `brand` и `model` являются константами, так как они не меняются после производства смартфона.
- Поле `camera` может быть заменено, но это не приватное поле, так как пользователь может хотеть получить информацию о камере.
- Поле `_isOn` является приватным, так как его состояние должно контролироваться только через методы `powerOn` и `powerOff`.
- Статическая константа `operatingSystem` является общей для всех экземпляров класса `Smartphone`.
  

## How to

  

[Describe how to run your application if there are any issues]

  

## Problems

  

[Describe the problems you encountered]

  

## More

  

[Here you can brag about what you managed to implement or do something beyond the task]