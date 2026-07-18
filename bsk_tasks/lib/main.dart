import 'package:flutter/material.dart';
import 'package:bsk_tasks/widgets_testing/product_card.dart';
import 'package:bsk_tasks/database_sim/product.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void button1CallBack() {
    print('Button 1 pressed');
  }

  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.lightGreen,
                child: ElevatedButton(
                  onPressed: () => {
                    print('pressed the button')
                  },
                  child: Text(
                    'Click here',
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () => {
                print('pressed the other button')
              },
              child: Text(
                'Click here',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
           Text(
             'This is a text widget!!!',
             style: TextStyle(
               backgroundColor: Colors.orange,
             ),
           ),
          ],
        ),
      ),
    );
  }*/
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shop'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 0),
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 100,
                children: [
                  Text(
                    '1st',
                  ),
                  Text(
                    '2nd',
                  ),
                  Text(
                      '3rd'
                  ),
                ],
              )
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1st',
                ),
                Text(
                  '2nd',
                  overflow: TextOverflow.clip,
                ),
                MaterialButton(
                  onPressed: button1CallBack,
                  child: Text('Click here'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }*/
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.orange,
          ),
          title: Text('Shop'),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontStyle: FontStyle.italic,
            backgroundColor: Colors.orange,
          ),
        ),
       body: ListView(
         padding: EdgeInsets.all(10),
         children: [
           Card(
             margin: EdgeInsets.all(5),
             child: Text('1'),
           ),
           Card(
             margin: EdgeInsets.all(5),
             child: Text('2'),
           ),
           Card(
             margin: EdgeInsets.all(5),
             child: Text('3'),
           ),
         ],
       ),
      ),
    );
  }*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(
                Icons.menu,
                color: Colors.orange,
              ),
              title: Text('Shop'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontStyle: FontStyle.italic,
                backgroundColor: Colors.orange,
              ),
            ),
            body: ListView(
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
        ),
    );
  }
}