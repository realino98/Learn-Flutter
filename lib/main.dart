import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "CLICK";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: Center(
            child: currentIndex == 0
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.red,
                              primary: Colors.amber,
                            ),
                            onPressed: () {
                              setState(() {
                                buttonName = "Clicked";
                              });
                            },
                            child: Text(buttonName)),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                buttonName = "Clicked";
                              });
                            },
                            child: Text(buttonName)),
                      ],
                    ),
                  )
                : Image.asset('images/Background.jpeg')),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "Setting",
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
