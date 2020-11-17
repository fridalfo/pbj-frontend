import 'package:flutter/material.dart';
import 'package:pbj_app/component/card.dart';
import 'package:pbj_app/component/chips.dart';
import 'package:pbj_app/constant.dart';
import 'package:pbj_app/screen/detail_pengadaan.dart';
class PengadaanRow extends StatelessWidget {
  const PengadaanRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16.0, right: 16.0),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push( new MaterialPageRoute(builder: (buildcontext){
            return DetailPengadaan(); 
          }));
        },
        child: AppCard(
          color: Colors.white,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:16, bottom:8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Pekerjaan Retrofit dan Pemasangan Fire Alarm System di Gedung … ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 14,
                          color: Colors.black,
                        )
                      ),
                      Padding(padding: EdgeInsets.only(top:8.0),),
                      // Chips()
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:<Widget> [
                          Chips(                            
                              color: Color.fromRGBO(152, 152, 152, 0.1),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                "Jasa",
                                style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 6.0),),
                          Chips(
                              color: Color.fromRGBO(132, 197, 252, 0.42),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                "MHAR",
                                style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 6.0),),
                          Chips(
                            color: Color.fromRGBO(255, 253, 204, 1), 
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                "APO",
                                style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 6.0),),
                          Chips(
                              color: Colors.white,
                              border: Border.all(
                                color: Color.fromRGBO(112, 112, 112, 1)
                              ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                "Pra-Pengadaan",
                                style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}