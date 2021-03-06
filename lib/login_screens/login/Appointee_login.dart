import 'package:Appointment_App/Appointee_login_form.dart';
import 'package:flutter/material.dart';

class AppointerLoginScreen extends StatefulWidget {
  @override
  _AppointerLoginScreenState createState() => _AppointerLoginScreenState();
}

class _AppointerLoginScreenState extends State<AppointerLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      reverse: true,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.46,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.purple.withOpacity(0.2),
                        offset: Offset(10, 10),
                        blurRadius: 10),
                    BoxShadow(
                        color: Colors.purple.withOpacity(0.7),
                        offset: Offset(-10, -10),
                        blurRadius: 10),
                  ],
                  image: DecorationImage(
                      image: AssetImage("assets/images/logopng.png"),
                      fit: BoxFit.cover)),
            ),
            Text(
              "Appoint mee!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
        AuthLoginFormAppointee(),
      ].reversed.toList(),
    ));
  }
}
