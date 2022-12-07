import 'package:flutter/material.dart';
import 'package:guard/sign_in_work_selfie.dart';

class sign_in_work extends StatelessWidget {
  const sign_in_work({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 100),
            child: Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://imgs.search.brave.com/YHTIBLDJXyd4LCyHsvd5vJlbDuWzJ1Jv_g5R1n0-1IM/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5N/c1lFNzMtZHpyTlZ0/anAzTGhaWnBnSGFI/YSZwaWQ9QXBp'),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 150,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 50, 48, 48),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 20),
                  child: Text(
                    '''Tower 2 , Trinity World
                  Kakkanad''',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 40),
                        backgroundColor: Color.fromARGB(255, 60, 54, 54),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: (() => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: ((context) => sign_in_selfie())))),
                    child: Text(
                      'Start Work',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
