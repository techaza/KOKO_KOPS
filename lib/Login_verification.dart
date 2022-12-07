import 'package:flutter/material.dart';
import 'profile.dart';

class Login_verification extends StatelessWidget {
  const Login_verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text('VERIFICATION CODE',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 40,
          ),
          Text('''We won't read your messages as we value
your privacy. Please enter the verification
          code we sent to +989785436''',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' 9 ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              Text(' 1 ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline)),
              Text(' 9 ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline)),
              Text(' 1 ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline)),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text('Resend OTP'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return profile();
              }));
            }),
            child: Text('VERIFY'),
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
