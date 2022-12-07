import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    var Items = [
      'DUTIES',
      'LIGHTS',
      'KEYS',
      'AMINITIES',
      'GUEST',
      'VENDORS',
      'COURIER',
      'REPORT ISSUE'
    ];
    return Container(
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: Items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 2.8),
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: GridTile(
                  footer: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Center(
                      child: Text(
                        Items[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Icon(Icons.abc_outlined),
                ),
              ),
            );
          }),
    );
  }
}
