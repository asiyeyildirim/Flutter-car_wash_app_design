import 'package:car_washing_app_design/anasayfa.dart';
import 'package:car_washing_app_design/renkler.dart';
import 'package:flutter/material.dart';




class Fiyatlandirma extends StatefulWidget {
  const Fiyatlandirma({Key? key}) : super(key: key);

  @override
  State<Fiyatlandirma> createState() => _FiyatlandirmaState();
}

class _FiyatlandirmaState extends State<Fiyatlandirma> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text("Fiyatlandırma",style: TextStyle(fontFamily:"Lobster-Regular",fontSize: 24 ),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,



            children:[

              Image.asset("gorseller/otobus.jpg",width: 200,height: 200,),
              ElevatedButton(onPressed: (){


              },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[800],
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),

                  child: const Text("Otobüs 50₺", style: TextStyle(fontSize: 12),)),



              Image.asset("gorseller/otomobil.jpeg",width: 200,height: 200,),
              ElevatedButton(onPressed: (){

              },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[800],
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                  child: const Text("Otomobil 30₺",style: TextStyle(fontSize: 12),)),



              Row( //içerde butonlar yan yana olsun diye


                //left-start-leading
                //right -end- trailing

                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //butonlar arasında eşit boşluk bırakmak için tanımladık.Butonlar row içinde çünkü.
                children: [
                  ElevatedButton(onPressed: (){

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Anasayfa()));

                  },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[800],
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),

                      child: const Text("Geri Dön")),



                  ElevatedButton(onPressed: (){

                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[800],
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                      child: const Text("Ödeme Yap")),



                ],

              ),

  ],
          ),
        ),
      ),
    );
  }
}
