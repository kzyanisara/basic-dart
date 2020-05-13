// ทำ function หาค่า พื้นที่ของสี่เหลี่ยม (รับ กว้าง กับ ยาว) ให้ return พื้นที่ ของ สี่เหลี่ยม
// จากข้อ a คราวนี้ function นี้ จะ รองรับ สี่เหลี่ยม จตุรัส (ใส่เฉพาะ กว้างได้ ไม่ได้ต้องใส่ ยาว)
// ให้ทำ อีก function (ทำงานเหมือนเดิม) ที่เป็น named parameter ด้วย
// ให้ทำ อีก function (ทำงานเหมือนเดิม) ที่เป็น arrow function ด้วย

// void main() {
//   print(squareA(5));
//   print(squareB(10, 5));
// }

// int squareA(int a) {
//   return a * a;
// }

// int squareB(int a, int b) {
//   return a * b;
// }

void main() {
  print(squareA(5));
  print(squareB(10, 5));
}

int squareA(int a) => a * a;
int squareB(int a, int b) => a * b;
