import 'package:flutter/material.dart';
class Chips extends StatelessWidget {
  const Chips({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children:<Widget> [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(152, 152, 152, 0.1),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          child: Text(
            "Jasa",
            style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 12,
            color: Colors.black),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 6.0),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(132, 197, 252, 0.42),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          child: Text(
            "MHAR",
            style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 12,
            color: Colors.black),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 6.0),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 253, 204, 1),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          child: Text(
            "APO",
            style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 12,
            color: Colors.black),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 6.0),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromRGBO(112, 112, 112, 1)
            ),
            borderRadius: BorderRadius.all(Radius.circular(15),),
            ),
          child: Text(
            "Pra-Pengadaan",
            style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 12,
            color: Colors.black),
          ),
        ),
      ],
    );
  }
}