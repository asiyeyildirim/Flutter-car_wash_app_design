
import 'package:car_washing_app_design/fiyatlandirma.dart';
import 'package:car_washing_app_design/renkler.dart';
import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {

  String icerik;


  MyChip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Fiyatlandirma()));
    },
        child: Text(icerik, style: TextStyle(color: yaziRenk1,fontSize: 12),),
      style: TextButton.styleFrom(
        backgroundColor: anaRenk,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

      ),
    );
  }
}

