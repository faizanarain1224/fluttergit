import 'package:flutter/material.dart';
import 'package:firstandroid/home.dart';

class Loginformnew extends StatefulWidget {
  const Loginformnew({Key? key}) : super(key: key);

  @override
  State<Loginformnew> createState() => _LoginformnewState();
}

class _LoginformnewState extends State<Loginformnew> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController uname = TextEditingController();
  TextEditingController upass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _formKey, // Assigning the form key
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: uname,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    icon: const Icon(Icons.person),
                    hintText: "Name",
                    labelText: 'User Name',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: upass,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    icon: const Icon(Icons.password),
                    hintText: "Password",
                    labelText: 'User password',
                  ),
                  obscureText: true, // Hides the entered text
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Validation passed
                        if (uname.text == "faizan" && upass.text == "1224") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Homepage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Username OR password is incorrect")),
                          );
                        }
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}