import 'package:flutter/material.dart';

class ScreenWidget extends StatelessWidget {
  String label;
  String value;

  ScreenWidget({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: new EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 350,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                  alignment: Alignment.center,
                  height: 309,
                  width: 107,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Text(label,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black38,
                      ))),
            ),
            SizedBox(width: 30),
            Container(
                alignment: Alignment.center,
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Text(value,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black38,
                    )))
          ],
        ),
      ),
    );
  }
}
