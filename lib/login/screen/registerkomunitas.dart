import 'package:flutter/material.dart';
import 'package:proliga/utils/fragment/loginclipper.dart';


class Registerkomunitas extends StatefulWidget {
  @override
  _RegisterkomunitasState createState() => _RegisterkomunitasState();
}

class _RegisterkomunitasState extends State<Registerkomunitas> {
  final List<String> _dropdownValues = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 280.0,
                padding: EdgeInsets.only(bottom: 0),
                child: Stack(
                  children: <Widget>[
                    ClipPath(
                      clipper: LoginClipper(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 280.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFE87232),
                                const Color(0xFFFE5940),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child:
                      Image.asset("assets/images/register1.png",fit: BoxFit.fill,),
                    ),
                    Positioned(
                      top: 90,
                      left:35,
                      child: Text("Registrasi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    ),
                    Positioned(
                      top: 120,
                      left:35,
                      child: Text("Ayo, Perkenalkan dirimu\nagar kami dapat mengenalimu",style: TextStyle(fontSize: 14,color: Colors.white),),
                    ),
                    Positioned(
                      bottom: 55,
                      left: 35,
                      child: Text("Step 2/3",style: TextStyle(fontSize: 12,color: Colors.grey),),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 35,
                      child: Text("Komunitas Data",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 35,right: 35),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      margin: EdgeInsets.only(
                          top: 4,left: 16,bottom: 1,right: 16
                      ),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                            bottom: BorderSide(
                                width:1,
                                color: Colors.deepOrangeAccent
                            ),
                          )
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.grey,fontSize: 14),
                        decoration: InputDecoration(
                            icon: Icon(Icons.supervised_user_circle,color: Colors.deepOrangeAccent,size: 18,),
                            hintText: "Nama Lengkap",
                            border: InputBorder.none,
                            fillColor: Colors.grey,
                            hintStyle:  TextStyle(color: Colors.deepOrangeAccent,fontSize: 12)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      margin: EdgeInsets.only(
                          top: 4,left: 16,bottom: 1,right: 16
                      ),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                            bottom: BorderSide(
                                width:1,
                                color: Colors.deepOrangeAccent
                            ),
                          )
                      ),
                      child:
                      DropdownButtonHideUnderline(
                        child: new DropdownButton(
                          isExpanded: true,
                          iconEnabledColor: Colors.deepOrangeAccent,
                          style: TextStyle(color: Colors.grey,fontSize: 14,decorationColor: Colors.deepOrangeAccent),
                          elevation: 0,
                          hint: Text("Kategori Komunitas",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 12),),
                          items:  _dropdownValues
                              .map((value) => DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          )).toList(),
                          onChanged: (String value) {},
                        ),
                      )
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      margin: EdgeInsets.only(
                          top: 4,left: 16,bottom: 1,right: 16
                      ),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                            bottom: BorderSide(
                                width:1,
                                color: Colors.deepOrangeAccent
                            ),
                          )
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.grey,fontSize: 14),
                        decoration: InputDecoration(
                            icon: Icon(Icons.mail_outline,color: Colors.deepOrangeAccent,size: 18,),
                            hintText: "Email",
                            border: InputBorder.none,
                            fillColor: Colors.grey,
                            hintStyle:  TextStyle(color: Colors.deepOrangeAccent,fontSize: 12)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      margin: EdgeInsets.only(
                          top: 4,left: 16,bottom: 1,right: 16
                      ),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                            bottom: BorderSide(
                                width:1,
                                color: Colors.deepOrangeAccent
                            ),
                          )
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.grey,fontSize: 14),
                        decoration: InputDecoration(
                            icon: Icon(Icons.insert_comment,color: Colors.deepOrangeAccent,size: 18,),
                            hintText: "Deskripsi",
                            border: InputBorder.none,
                            fillColor: Colors.grey,
                            hintStyle:  TextStyle(color: Colors.deepOrangeAccent,fontSize: 12)
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:()=> Navigator.pushNamed(context, '/registerpayment'),
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
                            child:Text("Kembali Ke Sebelumnya ",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey),),),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
