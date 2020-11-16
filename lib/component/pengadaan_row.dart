import 'package:flutter/material.dart';
import 'package:pbj_app/component/card.dart';
import 'package:pbj_app/component/chips.dart';
class PengadaanRow extends StatelessWidget {
  const PengadaanRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16.0, right: 16.0),
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
                    Chips()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}