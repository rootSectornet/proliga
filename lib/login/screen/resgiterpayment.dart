import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:proliga/utils/fragment/loginclipper.dart';

import 'package:intl/intl.dart';

class RegisterPayment extends StatefulWidget {
  @override
  _RegisterPaymentState createState() => _RegisterPaymentState();
}

class _RegisterPaymentState extends State<RegisterPayment> {


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
                      Image.asset("assets/images/registerpayment.png",fit: BoxFit.fill,),
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
                      child: Text("Step 3/3",style: TextStyle(fontSize: 12,color: Colors.grey),),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 35,
                      child: Text("Pembayaran",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.grey,fontSize: 14),
                              decoration: InputDecoration(
                                  icon: Icon(Icons.mail_outline,color: Colors.deepOrangeAccent,size: 18,),
                                  hintText: "Nomor Kartu",
                                  alignLabelWithHint: true,
                                  border: InputBorder.none,
                                  fillColor: Colors.grey,
                                  hintStyle:  TextStyle(color: Colors.deepOrangeAccent,fontSize: 12)
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down,color: Colors.deepOrangeAccent,size: 24,),
                          Image.asset("assets/images/visa.png")
                        ],
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
                            icon: Icon(Icons.perm_contact_calendar,color: Colors.deepOrangeAccent,size: 18,),
                            hintText: "Nama Pemegang Kartu",
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
                      child: DateTimeField(
                        style: TextStyle(color: Colors.grey,fontSize: 14),
                        decoration: InputDecoration(
                            icon: Icon(Icons.calendar_today,color: Colors.deepOrangeAccent,size: 18,),
                            hintText: "Tanggal Berakhir",
                            border: InputBorder.none,
                            fillColor: Colors.grey,
                            hintStyle:  TextStyle(color: Colors.deepOrangeAccent,fontSize: 12)
                        ),
                        format: DateFormat("dd/yyyy"),
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              initialDate: currentValue ?? DateTime.now(),
                              lastDate: DateTime(2100));
                        },
                        resetIcon: Icon(Icons.close,color: Colors.deepOrangeAccent,size: 18,),
                      )
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap:()=> Navigator.pushNamed(context, '/konfirmasidata'),
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
