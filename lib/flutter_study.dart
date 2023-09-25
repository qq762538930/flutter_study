

import 'dart:io';

void main() {
  tets2();
  Human a = Human('张三', 88, 9);
  Human b = Human('李四', 66, 90); // tag1
  Student c = Student('王麻子', 113, 99, school: '恒大华府');

  print('此处没有重写父级,infoe${c.infoe()}');
  print('此处重写父级,info${c.info()}');

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

  //注: 通过 super. 可调用父类方法; 一般子类覆写方法时，加 @override 注解进行示意 (非强制)
  // 写了一个新的infoe包含了父级的info
  String infoe() {
    String infoe ="${super.info()}school:$school";
    // 此处返回的是重写过后的Student info
    return infoe;
  }
  // 重写info
  @override
  String
  info() {
    String info ="${super.info()}school:$school";
    // 此处返回的是重写过后的Student info
    return info;
  }
}


Future<void> tets2() async {
  String path = r'/home/test/Desktop/flutter/flutter_study/pubspec.yaml';
  File file = File(path);
  print("开始读取");
  String content = await file.readAsString();
  print("===读取完毕: 文字内容长度 = ${content.length}====");
  print("做些其他的事");
}
