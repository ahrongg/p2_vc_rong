import 'package:flutter/material.dart';
//Material - The UI toolkit/standard for Google


//This is the entry point of your app
void main() {
  runApp(const MainApp());
}


//Widget is a UI Component
class MainApp extends StatelessWidget {
  //Constructor
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    //MaterialApp - is base of mobile app
    return MaterialApp(
      //Scafford - a layout of UI
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8.0,
            children: [
              //New comment here
              const Text('Login'),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "User Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                  children: [ ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),
                    const ElevatedButton(
                        onPressed: null,
                        child: Text("Register")),
                    const ElevatedButton(
                        onPressed: null,
                        child: Text("Forgot password"))]
                      //tried a hello world
              )
            ],
          ),
        ),
      ),
    );
  }
}
