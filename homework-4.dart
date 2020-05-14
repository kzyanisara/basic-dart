// การใช้ Class
// เขียน class ของ Dog
// โดยที่ Dog มี property คือ age,  type (พันธ์ุหมา), name, size
// ทำ Constructor รับค่า (optional ที่ default = 5)age, type, name, (optional ที่ default = 10) size
// Dog มี method bark(String text) โดยมันจะ print ว่า “หมาชื่อ xxx พันธ์ yyy อายุ zz เห่าว่า text”
// ทำ class ชื่อ SmallDog ไป extends Dog โดยมี method ชื่อว่า runAway() เพิ่มเข้ามา โดยให้ print ว่า “I am running ”
// ใน Class SmallDog ให้ประกาศ static variable ชื่อว่า MAX_BODY_SIZE กำหนดค่า = 30
// ทำ method ชื่อว่า isSmall ใน SmallDog โดย เช็คค่า size กับ MAX_BODY_SIZE  ถ้า size > MAX_BODY_SIZE จะ Return false ไม่อย่างงั้นก็จะ return true

class Dog {
  int age;
  String type;
  String name;
  int size;

  Dog(this.name, this.type, [this.size = 10, this.age = 5]);

  bark(String text) => print('หมาชื่อ ' +
      name +
      ' พันธุ์ ' +
      type +
      ' อายุ ' +
      age.toString() +
      ' เห่าว่า ' +
      text);
}

class SmallDog extends Dog {
  static int MAX_BODY_SIZE = 30;

  // SmallDog(String name, String type) : super(name, type);
  SmallDog(String name, String type, int size, int age)
      : super(name, type, size, age);

  runAway() => print('I am running');
  isSmall() =>
      size > MAX_BODY_SIZE ? print(false.toString()) : print(true.toString());
}

void main() {
  Dog dog1 = new Dog('Happy', 'Pitbull', 12, 3);
  SmallDog dog2 = new SmallDog('Pug', 'Mumi', 4, 2);

  dog1.bark('Bok Bok');
  dog2.runAway();
  dog2.isSmall();
}
