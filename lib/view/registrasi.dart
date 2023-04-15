import 'package:flutter/material.dart';
import 'package:praktikum6/main.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({super.key});

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  final formKey = GlobalKey<FormState>();
  String username = "";
  String password = "";
  String email = "";
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.04),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z 1-9]+$').hasMatch(value!)) {
                            return "Masukkan Nama dengan karakter a-z A-Z 1-10";
                          } else {
                            return null;
                          }
                        },
                        controller: usernameController,
                      ),
                      
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "password"),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z 1-9]+$').hasMatch(value!)) {
                            return "Masukkan Nama dengan karakter a-z A-Z 1-10";
                          } else {
                            return null;
                          }
                        },
                        controller: passwordController,
                      ),
                      
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "email"),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]')
                                  .hasMatch(value!)) {
                            return "Masukkan Email dengan benar";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                      ),
                      
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              username = usernameController.text;
                              password = passwordController.text;

                              Navigator.pushReplacementNamed(context, '/',
                                  arguments: Data2(
                                      username: username, password: password));
                            }
                          },
                          child: Text("Daftar"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
