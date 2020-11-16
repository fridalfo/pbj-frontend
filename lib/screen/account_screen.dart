import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pbj_app/component/appbar.dart';
import 'package:pbj_app/component/card.dart';
import 'package:pbj_app/constant.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PbjAppPalette.background,
      child: Column(
        children :[
          AppBarCard(
            color: PbjAppPalette.blue,
            height :180,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Randy Adityanda",
                      style: TextStyle(
                        fontFamily: "MontserratMedium",
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Rendal Har. Unit",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      "randya@indonesiapower.co.id",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
            child: AppCard(
              color: Colors.white,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.question_answer_rounded,
                      color: Colors.green,
                    ),
                    Padding(padding: EdgeInsets.only(left: 16.0),),
                    Text("FAQ",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "MontserratMedium",
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0),
            child: AppCard(
              color: Colors.white,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.call,
                      color: Colors.purple,
                    ),
                    Padding(padding: EdgeInsets.only(left: 16.0),),
                    Text("Contact Admin",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "MontserratMedium",
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0),
            child: AppCard(
              color: Colors.white,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/logout.svg"),
                    Padding(padding: EdgeInsets.only(left: 16.0),),
                    Text("Logout",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "MontserratMedium",
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                      )
                    )
                  ],
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}