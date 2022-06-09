import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: "Search Pets",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(1000, 65, 123, 90),
                              width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(1000, 65, 123, 90),
                              width: 1.0)))),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text("Filter Your Search",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(1000, 65, 123, 90)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                      onPressed: () => {},
                      icon: Image.network(
                        "https://img.icons8.com/ios-filled/25/26e07f/dog--v1.png",
                      )),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(1000, 65, 123, 90)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                        onPressed: () => {},
                        icon: Image.network(
                          "https://img.icons8.com/ios-filled/25/26e07f/cat.png",
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
