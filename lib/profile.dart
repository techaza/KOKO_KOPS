import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              'PROFILE',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://imgs.search.brave.com/qocgXndv1M5jtUlU8HajNb_YXL3gPJg39AG2qgAbm4c/rs:fit:592:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5J/aEFXdk5FTXQxdUdC/UkFDZE9kQnR3SGFG/NyZwaWQ9QXBp'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 60, right: 60),
            child: TextField(
              decoration: InputDecoration(hintText: '*Name'),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
            child: TextField(
              decoration: InputDecoration(hintText: '*Password'),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: TextField(
              decoration: InputDecoration(hintText: '*Confirm Password'),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text('''By registering, you are accepting the
KOKO terms of use and privacy policy'''),
          ),
          ElevatedButton(
            onPressed: (() {}),
            child: Text('REGISTER'),
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
