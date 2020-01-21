import 'package:flutter/material.dart';
import 'package:proliga/utils/fragment/loginclipper.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                      Image.asset("assets/images/back-register.png",fit: BoxFit.fill,),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child:
                      Image.asset("assets/images/register.png",fit: BoxFit.fill,),
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
                            icon: Icon(Icons.person_pin,color: Colors.deepOrangeAccent,size: 18,),
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
                      child: TextField(
                        style: TextStyle(color: Colors.grey,fontSize: 14),
                        decoration: InputDecoration(
                            icon: Icon(Icons.phone_android,color: Colors.deepOrangeAccent,size: 18,),
                            hintText: "Nomor Handphone",
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
                        obscureText: true,
                        style: TextStyle(color: Colors.grey,fontSize: 14),
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock,color: Colors.deepOrangeAccent,size: 18,),
                            hintText: "Password",
                            border: InputBorder.none,
                            fillColor: Colors.grey,
                            hintStyle:  TextStyle(color: Colors.deepOrangeAccent,fontSize: 12)
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=>Navigator.pushNamed(context, "/registerkomunitas"),
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
                            "Selanjutanya".toUpperCase(),
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
                          Text("Sudah Memiliki akun ? ",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey),),
                          InkWell(
                            onTap: ()=>Navigator.pushNamed(context, "/"),
                            child:Text("Login Sekarang ",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),),),
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
