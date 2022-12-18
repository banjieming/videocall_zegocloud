import 'package:flutter/material.dart';
import 'package:videocall_zegocloud/call_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Video Call with ZegoCloud',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final userNameController = TextEditingController();
  final callIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo Video Call with ZegocLOUD",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: userNameController,
                maxLength: 50,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your name?",
                ),
              ),
              TextFormField(
                controller: callIdController,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Call Id',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your Call Id?",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return CallPage(
                            callID: callIdController.text,
                            userName: userNameController.text);
                      },
                    ),
                  );
                },
                child: const Text("Call"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
