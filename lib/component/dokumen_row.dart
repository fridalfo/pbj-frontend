import 'package:flutter/material.dart';
import 'package:pbj_app/constant.dart';

import 'card.dart';

class DokumenRow extends StatelessWidget {
  const DokumenRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16.0, right: 16.0),
      child: AppCard(
        color: Colors.white,
        height: 80,
        child: Stack(
          children: [
            SizedBox.expand(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                     
                        child: Text(
                          "Pekerjaan Retrofit dan Pemasangan Fire Alarm System di Gedung … ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'MontserratMedium',
                            fontSize: 14,
                            color: Colors.black,
                          )
                        ),
                      ),
                      Text("PR",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'MontserratBold',
                        color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
            ),
            Positioned(
              height: 5,
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(17), bottomLeft: Radius.circular(17)),
                    child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                    color: PbjAppPalette.yellow,
                    ),
                  ),
              )),
          
          ],
        ),
      ),
    );
  }
}