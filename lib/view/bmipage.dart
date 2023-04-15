import 'dart:ffi';

import 'package:flutter/material.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController tinggiController = TextEditingController();
  TextEditingController beratController = TextEditingController();

  double tinggi = 0;
  double berat = 0;
  double bmi = 0;
  String kategori = "";

  // _klasifikasi(){
  //   tinggi = tinggiController.text;
  // }

  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selamat Datang BMI Cal")),
      body: Column(
        children: [
          Form(
              child: Column(
            children: [
              TextFormField(
                controller: tinggiController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(label: Text("Tinggi (cm)")),
              ),
              TextFormField(
                controller: beratController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(label: Text("Berat (kg)")),
              ),
              ElevatedButton(
                  onPressed: () {
                    tinggi = double.parse(tinggiController.text);
                    berat = double.parse(beratController.text);
                    setState(() {
                      bmi = berat / ((tinggi / 100) * (tinggi / 100)).round();
                      if (bmi < 18.5) {
                        kategori = "Underweight";
                      } else if (bmi >= 18.5 && bmi < 25) {
                        kategori = "Normal";
                      } else if (bmi >= 25) {
                        kategori = "anda obesitas";
                      }
                      ;
                    });
                  },
                  child: Text("Cek"))
            ],
          )),

          Text(kategori)
        ],
      ),
    );
  }
}



















//# lupa ngeparsing data form field :'(







// import 'package:flutter/material.dart';


// class BMIPage extends StatefulWidget {
//   const BMIPage({super.key});

//   @override
//   State<BMIPage> createState() => _BMIPageState();
// }

// class _BMIPageState extends State<BMIPage> {
//   final formKey = GlobalKey<FormState>();
//   double berat = 0;
//   double tinggi = 0;
//   String kategori = "";
//   double hasil=20;

//   _hasil(){
//     setState(() {
//     hasil = berat / ((tinggi/100)*(tinggi/100)).round();
//       if (hasil<18.5){
//       kategori="Underweight";
//     }
//     else if (hasil>=18.5 && hasil<25){
//       kategori="Normal";
//     }
//     else if (hasil>=25){
//       kategori="anda obesitas";
//     };
//     });
//   }

//   // _kategori(hasil){
//   //   if (hasil<18.5){
//   //     return Text("Underweight");
//   //   }
//   //   else if (18.5<=hasil && hasil<25){
//   //     return Text("Normal");
//   //   }
//   //   else{
//   //     return Text("anda obesitas");
//   //   };
//   // }
  
//   // _kategori(){
//   //   return Text(kategori);
//   // }
//   // kalkulatorBMI(berat, tinggi){
//   //   hasil = berat / (tinggi/100)*(tinggi/100);
//   //   if (hasil<18.5){
//   //     setState(() {
//   //     _kategori("Underweight");
//   //     });
//   //   }
//   //   else if (18.5<=hasil && hasil<25){
//   //     setState(() {
//   //     _kategori("Normal");
//   //     });
//   //   }
//   //   else{
//   //     setState(() {
//   //     _kategori("anda obesitas");
//   //     });
//   //   }
//   // }
//   TextEditingController beratController = TextEditingController();
//   TextEditingController tinggiController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Selamat Datang di BMI CAL"),),
//       body: ListView(
//         children: [
//           Form(
//             key: formKey,
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: beratController,
//                   decoration: InputDecoration(labelText: 'Berat Badan (KG)'),
//                   keyboardType: TextInputType.number,
//                 ),
//                 TextFormField(
//                   controller: tinggiController,
//                   decoration: InputDecoration(labelText: 'Tinggi Badan (cm)'),
//                   keyboardType: TextInputType.number,
//                 ),
//                 ElevatedButton(onPressed: (){
//                   tinggi = tinggiController.text as double;
//                   berat = beratController.text as double;
//                   setState(() {
//     hasil = berat / ((tinggi/100)*(tinggi/100)).round();
//       if (hasil<18.5){
//       kategori="Underweight";
//     }
//     else if (hasil>=18.5 && hasil<25){
//       kategori="Normal";
//     }
//     else if (hasil>=25){
//       kategori="anda obesitas";
//     };
//     });
//                 }, child: Text("Lihat Hasil")),
//                 // _kategori(hasil)
//               ],
//           )),
//         Text(hasil as String),
//         Text(kategori)
//         ],
//       ),
//     );
//   }
// }