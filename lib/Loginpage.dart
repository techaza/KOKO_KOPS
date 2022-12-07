import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guard/Login_verification.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text('K O K O',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                )),
          ),
          Text('K O P S',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              )),
          SizedBox(
            height: 40,
          ),
          Text('''YOU ARE ONE STEP AWAY
               FROM KOKO !''',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(50),
            child: TextFormField(
              decoration:
                  InputDecoration(hintText: '+91   Enter Mobile Number'),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: (() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Login_verification();
              }));
            }),
            child: Text('SIGN UP/IN'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(MediaQuery.of(context).size.width / 1.5, 45)),
          )
        ],
      ),
    );
  }
}
