import 'package:flutter/material.dart';
import 'package:pbj_app/component/button.dart';
import 'package:pbj_app/component/card.dart';
import 'package:pbj_app/constant.dart';
import 'package:pbj_app/landing/landingpage_view.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
     return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/bg_splash.png"),
          fit: BoxFit.fill,
        ),
      ),
      padding: EdgeInsets.only(top: 60.0, left: 34.0, right: 34.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Image.asset(
          "assets/splash_screen.png",
          height: 200,
          width: 400,
          ),
          Material(
            color: Colors.transparent,
            child: AppCard(
              color: new Color.fromRGBO(255, 255, 255, 0.7),
              width: MediaQuery.of(context).size.width - 68,
              height: 300,
              child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, bottom: 16),
                  child: Text(
                    "Masuk ke Akun Anda",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MontserratMedium',
                      fontSize: 16
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 50,
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Email Anda",
                        
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (val) {
                        if(val.length==0) {
                          return "Email tidak boleh kosong";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 50,
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Password Anda",
                        
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (val) {
                        if(val.length==0) {
                          return "Password tidak boleh kosong";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: PbjButton(
                    height: 40,
                    width: 120,
                    onPress: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage()),
                    );
                    }, 
                    shadow: new BoxShadow(
                      color: Color.fromRGBO(3, 79, 168, 0.52),
                      blurRadius: 5,
                      offset: new Offset(0, 3),
                      spreadRadius: 2
                    ),
                  child: Text(
                    'Masuk', 
                  
                    style: TextStyle(
                      fontFamily: "MontserratMedium",
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                    ),
                  ),
                  color: PbjAppPalette.blue,
                  ),
                ),
              ],
              ),
            ),
          )
        ],
      )
    );
  }
}