import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:proliga/login/screen/informasi.dart';
import 'package:proliga/login/screen/pembayaran.dart';


class Konfirmasidata extends StatefulWidget {
  @override
  _KonfirmasidataState createState() => _KonfirmasidataState();
}

class _KonfirmasidataState extends State<Konfirmasidata> with SingleTickerProviderStateMixin{


  TabController _tabController;


  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Konfirmasi Data",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    const Color(0xFFE87232),
                    const Color(0xFFFE5940),
                  ])
          ),
        ),
        bottom: new TabBar(
          controller: _tabController,
          labelStyle: TextStyle( //up to your taste
              fontWeight: FontWeight.w700
          ),
          indicatorSize: TabBarIndicatorSize.label, //makes it better
          labelColor: Colors.white, //Google's sweet blue
          unselectedLabelColor: Colors.white54, //niceish grey
          isScrollable: true, //up to your taste
          indicator: MD2Indicator( //it begins here
              indicatorHeight: 3,
              indicatorColor: Color(0xffffffff),
              indicatorSize: MD2IndicatorSize.normal //3 different modes tiny-normal-full
          ),
          tabs: <Widget>[
            Tab(text: "Infomasi"),
            Tab(text: "Pembayaran",),
          ],
        ),

      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Informasi(),
          Pembayaran()
        ],
      ),
    );
  }
}
