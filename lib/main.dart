import 'package:flutter/material.dart';
import 'Pages/listPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      title: 'Hello Flutter',
      color: Colors.blueGrey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black38),
             children:[
               TextSpan(text: "     Welcome to\n", style: TextStyle(fontSize: 15)),
               TextSpan(text: "Plan IT", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
             ]
      )
    ),
            const SizedBox(
              height: 250,
            ),
            const Text(
              "Your Personal task management\n           and Planning solution",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            InkWell(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ListPage()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                ),
                child: const Text(
                  "Lets get started !",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}





