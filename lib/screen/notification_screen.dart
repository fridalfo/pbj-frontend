import 'package:flutter/material.dart';
import 'package:pbj_app/component/card.dart';
import 'package:pbj_app/component/notification_row.dart';
import 'package:pbj_app/constant.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PbjAppPalette.background,
      child: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Notifikasi",
                style: TextStyle(
                  fontFamily: 'MontserratBold',
                  fontSize: 24,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: NotificationRow(),
            ),
          ],
        ),
      ),
    );
  }
}

