import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pbj_app/component/button.dart';
import 'package:pbj_app/component/pengadaan_row.dart';
import 'package:pbj_app/constant.dart';
import 'package:pbj_app/landing/landingpage_view.dart';

class PengadaanPage extends StatelessWidget {
  const PengadaanPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildFilterBox(context),
        PengadaanRow(),
      ],
    );
  }
   Padding buildFilterBox(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(top: 24, left:16, right: 16, bottom: 16,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [new BoxShadow(
                    color: Color.fromRGBO(152, 152, 152, 0.12),
                    offset: new Offset(0, 10),
                    blurRadius: 10
                  )],
                  ),
                  height: 50,
                  child: Row(
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.search,
                          color: PbjAppPalette.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0, bottom: 16.0, right: 16),
                        child: Text(
                          "Pencarian",
                          style: TextStyle(
                            fontFamily: "MontserratMedium",
                            color: PbjAppPalette.grey,
                            fontSize: 16 )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 16.0),),
              GestureDetector(
                onTap: () {
                    filterPengadaan(context);
                  },
                child: Container(
                  
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  boxShadow: [new BoxShadow(
                    color: Color.fromRGBO(152, 152, 152, 0.12),
                    offset: new Offset(0, 10),
                    blurRadius: 10
                  )],
                  ),
                  height: 50,
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      "assets/filter.svg",
                      color: PbjAppPalette.grey,

                    ),
                  )
                ),
              )
            ],
          ), 
        );
  } 
}

Future filterPengadaan(context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext bc){
        return GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
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
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 24.0),
                child: Text("Filter",
                style: TextStyle(
                  fontFamily: "MontserratBold",
                  color: Colors.black,
                  fontSize: 18),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0, right: 24.0, left: 24.0),
                child: Text("Jenis Pengadaan",
                style: TextStyle(
                  fontFamily: "MontserratMedium",
                  color: Colors.black,
                  fontSize: 14),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 6.0),
                    child: GestureDetector(
                      onTap: (){
                        print("pilih barang");
                      },
                      child: Container(
                        width: 120,
                          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: PbjAppPalette.blue
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(25),),
                              ),
                              
                            child: Center(
                              child: Text(
                                "Barang",
                                style: TextStyle(
                                fontFamily: "MontserratBold",
                                fontSize: 14,
                                color: PbjAppPalette.blue,),
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
                        width: 120,
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: PbjAppPalette.grey
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(25),),
                            ),
                          child: Center(
                            child: Text(
                              "Jasa",
                              style: TextStyle(
                              fontFamily: "MontserratMedium",
                              fontSize: 14,
                              color: PbjAppPalette.grey),
                            ),
                          ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0, bottom: 8.0, right: 24.0, left: 24.0),
                child: Text("Direksi Pekerjaan",
                style: TextStyle(
                  fontFamily: "MontserratMedium",
                  color: Colors.black,
                  fontSize: 14),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 6.0),
                    child: GestureDetector(
                      onTap: (){
                        print("pilih MHAR");
                      },
                      child: Container(
                        width: 100,
                          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: PbjAppPalette.blue
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(25),),
                              ),
                              
                            child: Center(
                              child: Text(
                                "MHAR",
                                style: TextStyle(
                                fontFamily: "MontserratBold",
                                fontSize: 14,
                                color: PbjAppPalette.blue,),
                              ),
                            ),
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, left:8.0),
                    child: GestureDetector(
                      onTap: (){
                          print("pilih MOPN");
                        },
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: PbjAppPalette.grey
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(25),),
                            ),
                          child: Center(
                            child: Text(
                              "MOPN",
                              style: TextStyle(
                              fontFamily: "MontserratMedium",
                              fontSize: 14,
                              color: PbjAppPalette.grey),
                            ),
                          ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0, top: 6.0, left:8.0),
                    child: GestureDetector(
                      onTap: (){
                          print("pilih MENG");
                        },
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: PbjAppPalette.grey
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(25),),
                            ),
                          child: Center(
                            child: Text(
                              "MENG",
                              style: TextStyle(
                              fontFamily: "MontserratMedium",
                              fontSize: 14,
                              color: PbjAppPalette.grey),
                            ),
                          ),
                      ),
                    ),
                  )
                ],
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
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 28, left: 32, right: 32),
                child: Center(
                  child: PbjButton(
                    height: 40,
                    width: double.infinity,
                    onPress: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage()),
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