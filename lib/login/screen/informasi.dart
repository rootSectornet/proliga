import 'package:flutter/material.dart';

class Informasi extends StatefulWidget {
  @override
  _InformasiState createState() => _InformasiState();
}

class _InformasiState extends State<Informasi> {
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
                Text("Data Personal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),),
                SizedBox(height: 18,),
                Text("Nama Lengkap",style: TextStyle(fontSize: 12,color: Colors.grey),),
                SizedBox(height: 6,),
                Text("Angga Praja",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                          Text("Nomor Handphone",style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(height: 6,),
                          Text("08142151223241",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Email",style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(height: 6,),
                          Text("anggapras@gmail.com",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Divider(height: 1,color: Colors.grey,),
                SizedBox(height: 20,),
                Text("Data Komunitas",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 18,),
                Text("Nama Komunitas",style: TextStyle(fontSize: 12,color: Colors.grey),),
                SizedBox(height: 6,),
                Text("Marcedes Bens Club Indonesia",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                          Text("Kategori Komunitas",style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(height: 6,),
                          Text("Komunitas Mobil",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Email",style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(height: 6,),
                          Text("masrcedes-bens@gmail.com",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18,),
                Text("Deskripsi",style: TextStyle(fontSize: 12,color: Colors.grey),),
                SizedBox(height: 6,),
                Text("Marcedes Benz Club Indonesia adalah komunitas mobil mewah yang ada di indonesia",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
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
