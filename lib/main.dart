import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:packagedeliveryapp/pages/bottomnav.dart';
import 'package:packagedeliveryapp/pages/detail_page.dart';
import 'package:packagedeliveryapp/pages/home.dart';
import 'package:packagedeliveryapp/pages/login.dart';
import 'package:packagedeliveryapp/pages/onboarding.dart';
import 'package:packagedeliveryapp/pages/order.dart';
import 'package:packagedeliveryapp/pages/signup.dart';
import 'firebase_options.dart';
//
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final FirebaseOptions options = FirebaseOptions(
    apiKey: "AIzaSyAtTfOQiB7Eg8Ixwr2oS47l2vtyyYxbqW0",
    appId: "1:582107257927:android:7b7495894e5a5104d9e562",
    messagingSenderId: "582107257927",
    projectId: "foodgo-8b1f6",

  );

  if (options != null) {
    await Firebase.initializeApp(options: options);
  } else {
    throw Exception("FirebaseOptions cannot be null when creating the default app.");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
