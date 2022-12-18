void main(){
var p1 = Person('Winotai', 'Saiyuenyong', 21);
var p2 = Person('xxx', 'yyy', 4);
print(p1.firstName);
print(p1.lastName);
print(p1.age);
}
class Person{
  final String firstName; //ฟิลต์
  final String lastName;
  final int age;
  Person(this.firstName,this.lastName,this.age);
}