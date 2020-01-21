import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
  @override
  _PembayaranState createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset("assets/images/bottom-circle.png"),
        ),
        SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(top: 30,left: 30,right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text("Data Pembayaran",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),),
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Nomor Kartu",style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(height: 6,),
                          Text("1234 5678 9101",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Jenis Kartu",style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(height: 6,),
                          Image.asset("assets/images/visa.png")
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Nama Pemegang Kartu",style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(height: 6,),
                          Text("Angga Praja",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Tanggal Berakhir",style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(height: 6,),
                          Text("05 / 2020",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 220,),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: 50.0),
                    height: 43,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.orange,
                              Colors.deepOrange
                            ]
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(
                      child: Text(
                        "Selesai".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: ()=>Navigator.pop(context),
                        child:Text("Saya Ragu, Kembali ",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey),),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
