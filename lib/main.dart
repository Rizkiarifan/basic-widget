import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Halaman Login",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(labelText: "Username"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              SizedBox(height: 20,),
              TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
