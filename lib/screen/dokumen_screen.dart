import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pbj_app/component/dokumen_row.dart';
import 'package:pbj_app/constant.dart';
import 'package:pbj_app/screen/pengadaan_screen.dart';

class DokumenPage extends StatelessWidget {
  const DokumenPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildFilterBox(context),
        DokumenRow(),
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
