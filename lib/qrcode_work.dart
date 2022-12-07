import 'package:flutter/material.dart';
import 'package:guard/home.dart';

class qrcode_work extends StatelessWidget {
  const qrcode_work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onTap: (() => Navigator.pop(context))),
          title: Text(
            'SIGN IN WORK',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: Center(
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 40, 36, 36)),
                child: Center(
                    child: Icon(
                  Icons.qr_code_outlined,
                  color: Colors.white,
                  size: 200,
                )),
              ),
            ),
          ),
          Text('''Please scan QR Code at
          your work location''',
              style: TextStyle(color: Colors.white, fontSize: 15)),
          TextButton(
              onPressed: (() => Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => Guard())))),
              child: Text('Next'))
        ]));
  }
}
