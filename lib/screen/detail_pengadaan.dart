import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pbj_app/component/button.dart';
import 'package:pbj_app/component/card.dart';
import 'package:pbj_app/constant.dart';
class DetailPengadaan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PbjAppPalette.blue,
        title: Text("Detail Pengadaan",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'MontserratBold',
            fontSize: 18
          )
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppCard(
              color: Colors.white,
              height: 280,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Text("Judul Pengadaan",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: PbjAppPalette.grey,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top: 4),),
                    Text("PENGGANTIAN SEA WATER DIESEL ENGINE FIRE FIGHTING PLTGU GRATI",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top:12),),
                    Text("Jenis Pengadaan",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: PbjAppPalette.grey,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top: 4),),
                    Text("Pengadaan Jasa",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top:12),),
                    Text("Direksi Pekerjaan",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: PbjAppPalette.grey,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top: 4),),
                    Text("MHAR",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top:12),),
                    Text("Jenis Anggaran",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: PbjAppPalette.grey,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top: 4),),
                    Text("APO",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top:12),),
                    Text("Status Pengadaan",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: PbjAppPalette.grey,
                        fontSize: 14
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top: 4),),
                    Text("Pra Pengadaan",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 14
                      )
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top:22),),
            Text("Dokumen",
              style: TextStyle(
                fontFamily: 'MontserratBold',
                color: Colors.black,
                fontSize: 20
              )
            ),
            Padding(padding: EdgeInsets.only(top:18),),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: PbjAppPalette.blue,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Jenis",
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      color: Colors.white,
                    ),),
                  Text("Status Dokumen",
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      color: Colors.white,
                    ),
                  ),
                  Text("Posisi",
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:16),),
            AppCard(
              color: Colors.white,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("TOR",
                        style: TextStyle(
                          fontFamily: 'MontserratBold',
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 8),),
                      SvgPicture.asset("assets/verified.svg")
                    ],
                  ),
                  Text("Approved PBJ",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                  ),
                  Text("PBJ",
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:8),),
            AppCard(
              color: Colors.white,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("DMR",
                        style: TextStyle(
                          fontFamily: 'MontserratBold',
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 8),),
                      SvgPicture.asset("assets/verified.svg")
                    ],
                  ),
                  Text("Approved PBJ",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                  ),
                  Text("PBJ",
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:8),),
            AppCard(
              color: Colors.white,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("PR",
                        style: TextStyle(
                          fontFamily: 'MontserratBold',
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 8),),
                      SvgPicture.asset("assets/verified.svg")
                    ],
                  ),
                  Text("Approved PBJ",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                  ),
                  Text("PBJ",
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 24),),
            PbjButton(
              height: 40,
              width: double.infinity,
              // onPress: () {
              //   Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePage()),
              // );
              // }, 
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
              'NEXT', 
              style: TextStyle(
                fontFamily: "MontserratMedium",
                fontWeight: FontWeight.w800,
                color: Colors.white
              ),
            ),
            color: PbjAppPalette.blue,
      
          ),
          ],
        ),
      )
      
    );
  }
}