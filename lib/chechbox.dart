import 'package:flutter/material.dart';
class chechbox extends StatefulWidget {
  @override
  _chechboxState createState() => _chechboxState();
}

class _chechboxState extends State<chechbox> {


  bool chechBoxState=false;

  String sehir="";

  bool switchlist=false;

  double slider=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add_circle),
      ),
      appBar: AppBar(
        title: Text("Diğer Form Elemanları"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[

          CheckboxListTile(value: chechBoxState, onChanged: (secildi){
             setState(() {
               chechBoxState=secildi;
             });

            },
            title: Text("ChechBox Title"),
            secondary: Icon(Icons.add),
            ),

            RadioListTile<String>(value: "Ankara", groupValue: sehir, onChanged: (deger){
              setState(() {
                sehir=deger;
                debugPrint("Secilen Deger:$deger");
              });

            },title: Text("Ankara"),),
            RadioListTile<String>(value: "Bursa", groupValue: sehir, onChanged: (deger){
              setState(() {
                sehir=deger;
                debugPrint("Secilen Deger:$deger");
              });

            },title: Text("Bursa"),),
            RadioListTile<String>(value: "İzmir", groupValue: sehir, onChanged: (deger){
              setState(() {
                sehir=deger;
                debugPrint("Secilen Deger:$deger");
              });

            },title: Text("İzmir"),),



            SwitchListTile(value: switchlist, onChanged: (deger){
              setState(() {

                switchlist=deger;
              });


            },
              title: Text("Switch List"),
            ),


            Slider(value: slider, onChanged:(yeni){
              setState(() {
                slider=yeni;
              });
            },min:10,max:20,divisions: 20,label: slider.toString(),)
          ],
        ),
      ),
    );
  }
}
