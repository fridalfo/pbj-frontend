import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pbj_app/component/appbar.dart';
import 'package:pbj_app/component/button.dart';
import 'package:pbj_app/component/card.dart';
import 'package:pbj_app/component/chips.dart';
import 'package:pbj_app/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pbj_app/screen/dokumen_screen.dart';
import 'package:pbj_app/screen/pengadaan_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;
  
  int _selectedTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if(!_tabController.indexIsChanging){
        setState(() {
          _selectedTab = _tabController.index;
          print(_tabController.index);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PbjAppPalette.background,
      body: DefaultTabController(
        length: 2,
              child: Column(
          children :[
            buildAppBarCard(),
            Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: [
                    PengadaanPage(),
                    DokumenPage()

                  ],
                ),
              ),
            
          ]
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 8.0, bottom: 16.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            tambahPengadaan(context,Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Text("TAMBAH PENGADAAN",
                              style: TextStyle(
                                fontFamily: "MontserratBold",
                                color: Colors.black,
                                fontSize: 16),
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 24.0, left: 24.0),
                            child: Text("Masukkan Judul Pengadaan",
                            style: TextStyle(
                              fontFamily: "MontserratMedium",
                              color: Colors.black,
                              fontSize: 14),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Container(
                            
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                              boxShadow: [new BoxShadow(
                                color: Color.fromRGBO(152, 152, 152, 0.12),
                                offset: new Offset(0, 10),
                                blurRadius: 10
                              )],
                              ),
                              width: double.infinity,
                              height: 60,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 16.0, right: 16),
                                child: Text(
                                  "Masukkan atau pilih pengadaan",
                                  style: TextStyle(
                                    fontFamily: "MontserratMedium",
                                    color: PbjAppPalette.grey,
                                    fontSize: 14 )
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0, bottom: 8.0, right: 24.0, left: 24.0),
                            child: Text("Pilih Jenis Pengadaan",
                            style: TextStyle(
                              fontFamily: "MontserratMedium",
                              color: Colors.black,
                              fontSize: 14),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0, top: 6.0),
                                child: GestureDetector(
                                  onTap: (){
                                    print("pilih barang");
                                  },
                                  child: Container(
                                    width: 150,
                                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                        decoration: BoxDecoration(
                                          color: PbjAppPalette.blue,
                                          border: Border.all(
                                            color: PbjAppPalette.blue
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(12),),
                                          ),
                                          
                                        child: Center(
                                          child: Text(
                                            "Barang",
                                            style: TextStyle(
                                            fontFamily: "MontserratBold",
                                            fontSize: 14,
                                            color: Colors.white),
                                          ),
                                        ),
                                    ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 24.0, top: 6.0, left:8.0),
                                child: GestureDetector(
                                  onTap: (){
                                      print("pilih jasa");
                                    },
                                  child: Container(
                                    width: 150,
                                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: PbjAppPalette.blue
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(12),),
                                        ),
                                      child: Center(
                                        child: Text(
                                          "Jasa",
                                          style: TextStyle(
                                          fontFamily: "MontserratMedium",
                                          fontSize: 14,
                                          color: PbjAppPalette.blue),
                                        ),
                                      ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0, bottom: 8.0, right: 24.0, left: 24.0),
                            child: Text("Pilih Direksi Pekerjaan",
                            style: TextStyle(
                              fontFamily: "MontserratMedium",
                              color: Colors.black,
                              fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Container(
                            
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                              boxShadow: [new BoxShadow(
                                color: Color.fromRGBO(152, 152, 152, 0.12),
                                offset: new Offset(0, 10),
                                blurRadius: 10
                              )],
                              ),
                              width: double.infinity,
                              height: 60,
                              child: Row(
                                children: <Widget> [
                                  Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 16.0, right: 16),
                                      child: Text(
                                        "Pilih direksi pekerjaan",
                                        style: TextStyle(
                                          fontFamily: "MontserratMedium",
                                          color: PbjAppPalette.grey,
                                          fontSize: 14 )
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 16.0, right: 16),
                                    child: SvgPicture.asset(
                                      "assets/dropdown.svg",
                                      color: PbjAppPalette.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0, bottom: 8.0, right: 24.0, left: 24.0),
                            child: Text("Pilih Jenis Anggaran",
                            style: TextStyle(
                              fontFamily: "MontserratMedium",
                              color: Colors.black,
                              fontSize: 14),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0, top: 6.0),
                                child: GestureDetector(
                                  onTap: (){
                                    print("pilih AI");
                                  },
                                  child: Container(
                                    width: 100,
                                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                        decoration: BoxDecoration(
                                          color: PbjAppPalette.blue,
                                          border: Border.all(
                                            color: PbjAppPalette.blue
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(12),),
                                          ),
                                          
                                        child: Center(
                                          child: Text(
                                            "AI",
                                            style: TextStyle(
                                            fontFamily: "MontserratBold",
                                            fontSize: 14,
                                            color: Colors.white),
                                          ),
                                        ),
                                    ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6.0, left:8.0),
                                child: GestureDetector(
                                  onTap: (){
                                      print("pilih AO");
                                    },
                                  child: Container(
                                    width: 100,
                                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: PbjAppPalette.blue
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(12),),
                                        ),
                                      child: Center(
                                        child: Text(
                                          "AO",
                                          style: TextStyle(
                                          fontFamily: "MontserratMedium",
                                          fontSize: 14,
                                          color: PbjAppPalette.blue),
                                        ),
                                      ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 24.0, top: 6.0, left:8.0),
                                child: GestureDetector(
                                  onTap: (){
                                      print("pilih APO");
                                    },
                                  child: Container(
                                    width: 100,
                                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: PbjAppPalette.blue
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(12),),
                                        ),
                                      child: Center(
                                        child: Text(
                                          "APO",
                                          style: TextStyle(
                                          fontFamily: "MontserratMedium",
                                          fontSize: 14,
                                          color: PbjAppPalette.blue),
                                        ),
                                      ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ));
          },
          
          label: Text('PENGADAAN',
          style: TextStyle(
            fontFamily: "MontserratBold",
            fontSize: 12,
            color: Colors.white,
            ),
          ),
          icon: SvgPicture.asset("assets/add.svg"),
          backgroundColor: PbjAppPalette.blue,
        ),
      ),
    );
  }

  AppBarCard buildAppBarCard() {
    return AppBarCard(
          color: PbjAppPalette.blue,
          height :190,
          child: SafeArea(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 24.0),
                child: Text(
                  "Selamat Pagi,",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 24.0),
                child: Text(
                  "Jason Mamoa",
                  style: TextStyle(
                    fontFamily: "MontserratMedium",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 24.0),
                child: Text(
                  "Rendal Har. Unit",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 16.0),),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
                 child: Material(
                    color: Colors.transparent,
                    child: TabBar(
                     unselectedLabelColor: Colors.blue,
                     labelColor: Colors.blue,
                     indicator: BoxDecoration(),
                     controller: _tabController,
                     labelPadding: const EdgeInsets.all(0.0),
                     tabs: [
                      buildTab(0,"Pengadaan"),
                      buildTab(1,"Dokumen")
                     ],
                   ),
                 ),
               ),
              
            ],
              ),
          ),
        );
  }

  Tab buildTab(index, String name) {
    return Tab(
    child: Container(
    decoration: BoxDecoration(
      color:  (_selectedTab == index ? Color.fromRGBO(255, 255, 255, 0.39) : Colors.transparent) ,
      borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Center(
      
      child: Text(name,
      style: TextStyle(
        fontFamily: "Montserrat",
        color: Colors.white
      ),
    )
    ),
  ),
);
  }
}





void _settingModalBottomSheet(context){
    tambahPengadaan(context,
    Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Text("TAMBAH PENGADAAN",
                              style: TextStyle(
                                fontFamily: "MontserratBold",
                                color: Colors.black,
                                fontSize: 16),
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 24.0, left: 24.0),
                            child: Text("Masukkan Judul Pengadaan",
                            style: TextStyle(
                              fontFamily: "MontserratMedium",
                              color: Colors.black,
                              fontSize: 14),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Container(
                            
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                              boxShadow: [new BoxShadow(
                                color: Color.fromRGBO(152, 152, 152, 0.12),
                                offset: new Offset(0, 10),
                                blurRadius: 10
                              )],
                              ),
                              width: double.infinity,
                              height: 60,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 16.0, right: 16),
                                child: Text(
                                  "Masukkan atau pilih pengadaan",
                                  style: TextStyle(
                                    fontFamily: "MontserratMedium",
                                    color: PbjAppPalette.grey,
                                    fontSize: 14 )
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0, bottom: 8.0, right: 24.0, left: 24.0),
                            child: Text("Pilih Jenis Pengadaan",
                            style: TextStyle(
                              fontFamily: "MontserratMedium",
                              color: Colors.black,
                              fontSize: 14),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0, top: 6.0),
                                child: GestureDetector(
                                  onTap: (){
                                    print("pilih barang");
                                  },
                                  child: Container(
                                    width: 150,
                                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                        decoration: BoxDecoration(
                                          color: PbjAppPalette.blue,
                                          border: Border.all(
                                            color: PbjAppPalette.blue
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(12),),
                                          ),
                                          
                                        child: Center(
                                          child: Text(
                                            "Barang",
                                            style: TextStyle(
                                            fontFamily: "MontserratBold",
                                            fontSize: 14,
                                            color: Colors.white),
                                          ),
                                        ),
                                    ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 24.0, top: 6.0, left:8.0),
                                child: GestureDetector(
                                  onTap: (){
                                      print("pilih jasa");
                                    },
                                  child: Container(
                                    width: 150,
                                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: PbjAppPalette.blue
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(12),),
                                        ),
                                      child: Center(
                                        child: Text(
                                          "Jasa",
                                          style: TextStyle(
                                          fontFamily: "MontserratMedium",
                                          fontSize: 14,
                                          color: PbjAppPalette.blue),
                                        ),
                                      ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0, bottom: 8.0, right: 24.0, left: 24.0),
                            child: Text("Pilih Direksi Pekerjaan",
                            style: TextStyle(
                              fontFamily: "MontserratMedium",
                              color: Colors.black,
                              fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Container(
                            
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                              boxShadow: [new BoxShadow(
                                color: Color.fromRGBO(152, 152, 152, 0.12),
                                offset: new Offset(0, 10),
                                blurRadius: 10
                              )],
                              ),
                              width: double.infinity,
                              height: 60,
                              child: Row(
                                children: <Widget> [
                                  Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 16.0, right: 16),
                                      child: Text(
                                        "Pilih direksi pekerjaan",
                                        style: TextStyle(
                                          fontFamily: "MontserratMedium",
                                          color: PbjAppPalette.grey,
                                          fontSize: 14 )
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 16.0, right: 16),
                                    child: SvgPicture.asset(
                                      "assets/dropdown.svg",
                                      color: PbjAppPalette.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0, bottom: 8.0, right: 24.0, left: 24.0),
                            child: Text("Pilih Jenis Anggaran",
                            style: TextStyle(
                              fontFamily: "MontserratMedium",
                              color: Colors.black,
                              fontSize: 14),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0, top: 6.0),
                                child: GestureDetector(
                                  onTap: (){
                                    print("pilih AI");
                                  },
                                  child: Container(
                                    width: 100,
                                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                        decoration: BoxDecoration(
                                          color: PbjAppPalette.blue,
                                          border: Border.all(
                                            color: PbjAppPalette.blue
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(12),),
                                          ),
                                          
                                        child: Center(
                                          child: Text(
                                            "AI",
                                            style: TextStyle(
                                            fontFamily: "MontserratBold",
                                            fontSize: 14,
                                            color: Colors.white),
                                          ),
                                        ),
                                    ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6.0, left:8.0),
                                child: GestureDetector(
                                  onTap: (){
                                      print("pilih AO");
                                    },
                                  child: Container(
                                    width: 100,
                                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: PbjAppPalette.blue
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(12),),
                                        ),
                                      child: Center(
                                        child: Text(
                                          "AO",
                                          style: TextStyle(
                                          fontFamily: "MontserratMedium",
                                          fontSize: 14,
                                          color: PbjAppPalette.blue),
                                        ),
                                      ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 24.0, top: 6.0, left:8.0),
                                child: GestureDetector(
                                  onTap: (){
                                      print("pilih APO");
                                    },
                                  child: Container(
                                    width: 100,
                                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: PbjAppPalette.blue
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(12),),
                                        ),
                                      child: Center(
                                        child: Text(
                                          "APO",
                                          style: TextStyle(
                                          fontFamily: "MontserratMedium",
                                          fontSize: 14,
                                          color: PbjAppPalette.blue),
                                        ),
                                      ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ));
    filterPengadaan(context);
}

Future tambahPengadaan(context,Widget child) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext bc){
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
                color:  Color(0xFF737373), //could change this to Color(0xFF737373), 
                            //so you don't have to change MaterialApp canvasColor
                  child: Container(
            
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0)
              )
            ),
            child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(227, 227, 227, 1),
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ), 
                  ),
                ),
              ),
              child,
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 28, left: 32, right: 32),
                child: Center(
                  child: PbjButton(
                    height: 40,
                    width: double.infinity,
                    onPress: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    }, 
                    gradient: LinearGradient(
                      colors: <Color>[Color.fromRGBO(54, 159, 255, 1), Color.fromRGBO(37, 123, 201, 1)]
                    ),
                    shadow: new BoxShadow(
                      color: Color.fromRGBO(3, 79, 168, 0.52),
                      blurRadius: 5,
                      offset: new Offset(0, 3),
                      spreadRadius: 2
                    ),
                  child: Text(
                    'SIMPAN PENGADAAN', 
                    style: TextStyle(
                      fontFamily: "MontserratMedium",
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                    ),
                  ),
                  color: PbjAppPalette.blue,
            
                ),
              ),
            ),
            ],
          ),
          ),
        );
    }
  );
}

