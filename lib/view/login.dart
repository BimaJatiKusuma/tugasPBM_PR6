import 'package:flutter/material.dart';
import 'package:praktikum6/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();

  String username = "";
  String password = "";

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      final data2 = ModalRoute.of(context)!.settings.arguments as Data2;
      username = data2.username;
      password = data2.password;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('SELAMAT DATANG'),
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
                        
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Username'),
                          validator: (value) {
                            if (value!.isEmpty ||
                                username!=(value)) {
                              return "Username Salah";
                            } else {
                              return null;
                            }
                          },
                          controller: _usernameController,
                        ),
                        
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                          validator: (value) {
                            if (value!.isEmpty ||
                                password!=(value)) {
                              return "password tidak cocok";
                            } else {
                              return null;
                            }
                          },
                          controller: _passwordController,
                        ),
                        
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                username = _usernameController.text;
                                password = _passwordController.text;
                                Navigator.pushNamed(context, '/BMIPage');
                                // Navigator.popAndPushNamed(context, '/',
                                //     arguments: Data2(
                                //         username: username, password: password));
                              }
                            },
                            child: Text("Masuk")),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/registrasi');
                            },
                            child: Text('Daftar')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // final data = ModalRoute.of(context)!.settings.arguments as Data;
    
//     final data2 = ModalRoute.of(context)!.settings.arguments as Data2;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Text('Name: ${data.name}'),
//             // Text('Age: ${data.age}'),
//             Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Login'),
//           Text('username: ${data2.username}'),
//           Text('password: ${data2.password}'),
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: 'Username',
//               border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
//             ),
//           ),
//           TextFormField(
//             obscureText: true,
//             decoration: InputDecoration(
//               labelText: 'Password',
//               border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
//             ),
//           ),
//           ElevatedButton(onPressed: (){}, child: Text('Masuk')),
//           Row(
//             children: [
//               Text("Tidak memiliki akun?"),
//               TextButton(onPressed: (){
//                 Navigator.pushNamed(context, '/');
//               }, child: Text('Daftar')),
//             ],
//           )
//         ],
//       ),
//           ],
//         ),
//       ),
//     );
//   }
// }























      
      
      
      
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text('Login'),
      //           Text('$username'),
      //           Text('$password'),
      //           TextFormField(
      //             decoration: InputDecoration(
      //                 labelText: 'Username',
      //                 border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(20))),
      //             validator: (value) {
      //               if (value!.isEmpty ||
      //                         '$username'==(value!)) {
      //                       return "username salah";
      //                     } else {
      //                       return null;
      //                     }                    
                    
      //               if (username != username || username == "") {
      //                 return "username salah";
      //               }
      //               else {
      //                 return null;
      //               }
      //             },
      //             controller: _usernameController,
      //           ),
      //           TextFormField(
      //             decoration: InputDecoration(
      //                 labelText: 'Password',
      //                 border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(20))),
      //             validator: (value) {
      //               if (value!.isEmpty ||
      //                         '$password'==(value!)) {
      //                       return "password salah";
      //                     } else {
      //                       return null;
      //                     }
                    
      //               if (password != value || password == "") {
      //                 return "password tidak cocok";
      //               }
      //               else{
      //                 return null;
      //               }
      //             },
      //             obscureText: true,
      //             controller: _passwordController,
      //           ),
      //           ElevatedButton(
      //               onPressed: () {
      //                 print(formKey.currentState!);
      //                 if (formKey.currentState!.validate()) {
      //                         username = _usernameController.text;
      //                         password = _passwordController.text;

      //                         Navigator.pushNamed(context, '/BMIPage');
      //                       }

      //                 if (formKey.currentState!.validate()) {
      //                   username = _usernameController.text;
      //                   password = _passwordController.text;
      //                   Navigator.pushNamed(context, '/BMIPage');
      //                 }
      //               },
      //               child: Text('Masuk')),
      //           Row(
      //             children: [
      //               Text("Tidak memiliki akun?"),
      //               TextButton(
      //                   onPressed: () {
      //                     Navigator.pushNamed(context, '/registrasi');
      //                   },
      //                   child: Text('Daftar')),
      //             ],
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),