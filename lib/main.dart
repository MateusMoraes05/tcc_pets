import 'package:flutter/material.dart';
import 'animalScreen.dart';
import 'dogScreen.dart';

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
        padding: const EdgeInsets.all(28.0),
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
                        color: Color.fromARGB(1000, 65, 123, 90), width: 1.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(1000, 65, 123, 90)),
                    borderRadius: BorderRadius.circular(9.0)),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0)),
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7 - 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Vacinação",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // Foreground color
                              onPrimary:
                                  Theme.of(context).colorScheme.onPrimary,
                              // Background color
                              primary: const Color.fromARGB(1000, 65, 123, 90),
                            ).copyWith(
                                elevation: ButtonStyleButton.allOrNull(0.0)),
                            onPressed: () {},
                            child: const Text('Veja Mais'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(1000, 65, 123, 90)),
                  borderRadius: BorderRadius.circular(9.0)),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0)),
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7 - 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Castração",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // Foreground color
                            onPrimary: Theme.of(context).colorScheme.onPrimary,
                            // Background color
                            primary: const Color.fromARGB(1000, 65, 123, 90),
                          ).copyWith(
                              elevation: ButtonStyleButton.allOrNull(0.0)),
                          onPressed: () {},
                          child: const Text('Veja Mais'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
