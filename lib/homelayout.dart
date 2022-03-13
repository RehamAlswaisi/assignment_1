import 'package:flutter/material.dart';

class Homelayout extends StatelessWidget {
  String label;
  String value;
  Homelayout({required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 0,
            blurRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              alignment: Alignment.center,
              width: 90,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Text(label,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54)),
            ),
          ),
          SizedBox(width: 5),
          Container(
            alignment: Alignment.center,
            width: 245,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 0,
                  blurRadius: 1,
                ),
              ],
            ),
            child: Text(value,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}
