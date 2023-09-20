void main() {
  Human a = Human('张三', 88, 9);
  Human b = Human('李四', 66, 90); // tag1
  Student c = Student('王麻子', 113, 99, school: '恒大华府');

  print(c.infoe());

  // print(a.info());
  // print(b.name);
}

//定义一个人类
class Human {
  String name = '';
  double weight = 0;
  double height = 0;

  Human(this.name, this.weight, this.height);

  String info() {
    return "我是 $name";
  }
}

// 定义一个学生继承人类
// super 指向父级
class Student extends Human {
  final String school;

  Student(super.name, super.weight, super.height, {required this.school});
  // 重写info
  String infoe() {
    String infoe ="${super.info()}school:$school";
    // 此处返回的是重写过后的Student info
    return infoe;
  }
}
