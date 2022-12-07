import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:guard/qrcode_work.dart';

class sign_in_selfie extends StatelessWidget {
  const sign_in_selfie({super.key});

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
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Work Location Details',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://imgs.search.brave.com/PVMw6aPTDRGCk_X9_u6Uh-C8FwYS1hQMwVOIDYgJHHo/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5P/SkZ1eENFWnFOYmdB/VENJVElvckFnSGFF/SyZwaWQ9QXBp'),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            '''Tower 2 , Trinity World
                  Kakkanad''',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 40),
                  backgroundColor: Color.fromARGB(255, 60, 54, 54),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: (() => Navigator.of(context).push(MaterialPageRoute(builder: ((context) => qrcode_work())))),
              child: Text(
                'Take Selfie',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
