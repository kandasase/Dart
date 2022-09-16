import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  /* หรือจะเขียนแบบนี้ก็ได้ แต่ดูยาวกว่า
  var app = MyApp();
  runApp(app);
  */
}

// สร้าง widget
class MyApp extends StatelessWidget {
  //widget ที่บ่มีการเปลี่ยนแปลงค่าดั้ย
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

//widget ที่มีการเปลี่ยนแปลงค่า
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; // สร้าง state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรแกแรมนะจ๊ะ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //ให้หมดนี้มาอยู่ตรงกลาง
          children: <Widget>[
            Text(
              "สวัสดีชาวไทย!!",
              style: TextStyle(fontSize: 50, color: Colors.green),
            ),
            Text(
              "กดปุ่มสินังนุด",
              style: TextStyle(fontSize: 20, color: Colors.pink),
            ),
            Image(
              image: NetworkImage(
                  "https://guscats.com/wp-content/uploads/2021/02/Scottish-Fold-1024x682.jpg"),
            ),
            Text(number.toString(), style: TextStyle(fontSize: 100)),
          ],
        ),
      ),
      // สร้างปุ่มล่างขวา
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.access_alarm),
      ),
    );
  }
  // method สร้างไว้จะสะดวกตอนเขียนเยอะๆ
  void addNumber(){
    setState(() {
      number++;
    });
  }
}
