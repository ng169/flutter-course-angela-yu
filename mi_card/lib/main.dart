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
      home: Scaffold(
        backgroundColor: Colors.teal.shade500,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 52.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/me.jpg"),
                ),
              ),
              const Text(
                'Akshay K',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'F L U T T E R  D E V E L O P E R',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+91 7204953276",
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "aksk16902@gmail.com",
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
