
import 'package:car_washing_app_design/fiyatlandirma.dart';
import 'package:car_washing_app_design/my_chip.dart';
import 'package:car_washing_app_design/renkler.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> { //Ana işlemlerimiz burada 
  @override
  Widget build(BuildContext context) {


    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi =ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Araç Yıkama", style: TextStyle(fontFamily:"Lobster-Regular",fontSize: 24 ),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      
      //Sayfa düzenimize göre tasarım yapıyoruz
      
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Text("Sana yardımcı olabilmemiz için bir sey seç...", style: TextStyle(fontFamily: "Dancing", fontSize: ekranGenisligi/20,color: anaRenk,fontWeight: FontWeight.bold),),


   //Butonlarımız alt alta olacak bu sebeple Column kullanıyoruz:

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("gorseller/logo1.jpg"),
                MyChip(icerik: "Servis yıkasın"),
                Image.asset("gorseller/self_logo2.jpg"),
                MyChip(icerik: "Ben yıkayayım",),

              ],
            ),
          )
        ],
      ),
    );
  }
}

