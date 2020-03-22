class Person {
  const Person();
}
main(List<String> args) {
  //变量声明
  // String name = 'coderwhy';
  // int age = 18;
  // double height = 1.88;
  // print('${name}, ${age}, ${height}'); // 拼接方式后续会讲解


// String getName() {
//   return 'coderwhy';
// }
//   //final 和const的区别
//   const name = getName(); // 错误的做法, 因为要执行函数才能获取到值
//   final name = getName(); // 正确的做法

  // final a = const Person();
  // final b = const Person();
  // print(identical(a, b)); // true

  // final m = Person();
  // final n = Person();
  // print(identical(m, n)); // false


  // 1.整数类型int
  // int age = 18;
  // int hexAge = 0x12;
  // print(age);
  // print(hexAge);

  // // 2.浮点类型double
  // double height = 1.88;
  // print(height);

  //字符和数字的转换

// 字符串和数字转化
// 1.字符串转数字
// var one = int.parse('111');
// var two = double.parse('12.22');
// print('${one} ${one.runtimeType}'); // 111 int
// print('${two} ${two.runtimeType}'); // 12.22 double

// // 2.数字转字符串
// var num1 = 123;
// var num2 = 123.456;
// var num1Str = num1.toString();
// var num2Str = num2.toString();
// var num2StrD = num2.toStringAsFixed(2); // 保留两位小数
// print('${num1Str} ${num1Str.runtimeType}'); // 123 String
// print('${num2Str} ${num2Str.runtimeType}'); // 123.456 String
// print('${num2StrD} ${num2StrD.runtimeType}'); // 123.46 String


// 布尔类型
// var isFlag = true;
// print('$isFlag ${isFlag.runtimeType}');

//定义字符串的方式
// var s1 = 'Hello World';
// var s2 = "Hello Dart";
// var s3 = 'Hello\'Fullter';
// var s4 = "Hello'Fullter";

// // 2.表示多行字符串的方式
// var message1 = '''
// 哈哈哈
// 呵呵呵
// 嘿嘿嘿''';

// // 字符串和其他变量或表达式拼接: 使用${expression}, 如果表达式是一个标识符, 那么{}可以省略

// // 3.拼接其他变量
// var name = 'coderwhy';
// var age = 18;
// var height = 1.88;
// print('my name is ${name}, age is $age, height is $height');


// List定义
// 1.使用类型推导定义
var letters = ['a', 'b', 'c', 'd'];
print('$letters ${letters.runtimeType}');

// 2.明确指定类型
List<int> numbers = [1, 2, 3, 4];
print('$numbers ${numbers.runtimeType}');


// Set的定义
// 1.使用类型推导定义
var lettersSet = {'a', 'b', 'c', 'd'};
print('$lettersSet ${lettersSet.runtimeType}');

// 2.明确指定类型
Set<int> numbersSet = {1, 2, 3, 4};
print('$numbersSet ${numbersSet.runtimeType}');

// Map的定义
// 1.使用类型推导定义
var infoMap1 = {'name': 'why', 'age': 18};
print('$infoMap1 ${infoMap1.runtimeType}');

// 2.明确指定类型
Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};
print('$infoMap2 ${infoMap2.runtimeType}');

// 了解了这三个集合的定义方式之后，我们来看一些最基础的公共操作
// 第一类，是所有集合都支持的获取长度的属性length：
// print(letters.length);
// print(lettersSet.length);
// print(infoMap1.length);
// 第二类, 是添加/删除/包含操作

// 添加/删除/包含元素
// numbers.add(5);
// numbersSet.add(5);
// print('$numbers $numbersSet');

// numbers.remove(1);
// numbersSet.remove(1);
// print('$numbers $numbersSet');

// print(numbers.contains(2));
// print(numbersSet.contains(2));

// // List根据index删除元素
// numbers.removeAt(3);
// print('$numbers');

// 第三类，是Map的操作

// Map的操作
// 1.根据key获取value
print(infoMap1['name']); // why

// 2.获取所有的entries
print('${infoMap1.entries} ${infoMap1.entries.runtimeType}'); // (MapEntry(name: why), MapEntry(age: 18)) MappedIterable<String, MapEntry<String, Object>>

// 3.获取所有的keys
print('${infoMap1.keys} ${infoMap1.keys.runtimeType}'); // (name, age) _CompactIterable<String>

// 4.获取所有的values
print('${infoMap1.values} ${infoMap1.values.runtimeType}'); // (why, 18) _CompactIterable<Object>

// 5.判断是否包含某个key或者value
print('${infoMap1.containsKey('age')} ${infoMap1.containsValue(18)}'); // true true

// 6.根据key删除元素
infoMap1.remove('age');
print('${infoMap1}'); // {name: why}
}