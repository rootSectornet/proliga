
import 'package:flutter/material.dart';
import 'package:proliga/login/screen/konfirmasidata.dart';
import 'package:proliga/login/screen/login.dart';
import 'package:proliga/login/screen/register.dart';
import 'package:proliga/login/screen/registerkomunitas.dart';
import 'package:proliga/login/screen/resgiterpayment.dart';
final routes = {
  '/' : (BuildContext context) => new Login(),
  '/register' : (BuildContext context) => new Register(),
  '/registerkomunitas' : (BuildContext context) => new Registerkomunitas(),
  '/registerpayment' : (BuildContext context) => new RegisterPayment(),
  '/konfirmasidata' : (BuildContext context) => new Konfirmasidata(),

};