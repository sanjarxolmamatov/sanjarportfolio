import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? parol;
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Center(
              child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (!value!.contains("@")) {
                    return "Xato email";
                  }
                },
                onSaved: (value) {
                  email = value;
                },
                decoration: const InputDecoration(labelText: "Email"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                onSaved: (value) {
                  parol = value;
                },
                validator: (value) {
                  if (value!.length < 8) {
                    return "parol juda qisqa";
                  }
                },
                decoration: const InputDecoration(labelText: "Parol"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    print(email);
                    print(parol);
                  }
                },
                child: Text("Kirish"),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
