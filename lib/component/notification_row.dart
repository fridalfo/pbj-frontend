import 'package:flutter/material.dart';
import 'package:pbj_app/constant.dart';

import 'card.dart';

class NotificationRow extends StatelessWidget {
  const NotificationRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      height: 140,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:16, bottom:8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Sen, 12 Feb 2020 09:15",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'MontserratMedium',
                      fontSize: 12,
                      color: PbjAppPalette.grey,
                    )
                  ),
                ],
              ),
            ),
            RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Sekertaris Bidang",
                  style: TextStyle(
                    fontFamily: 'MontserratBold',
                    fontSize: 14,
                    color: PbjAppPalette.blue,
                  ),
                ),
                TextSpan(
                  text: " mengirimkan revisi dokumen TOR PENGGANTIAN SEA WATER DIESEL ENGINE FIRE FIGHTING PLTGU GRATI",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ]),
          ),
          ],
        ),
      ),
    );
  }
}