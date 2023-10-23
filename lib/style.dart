import 'package:flutter/material.dart';

InputDecoration appInputStyle(label) {
  return InputDecoration(
    border: OutlineInputBorder(),
    labelText: label,
  );
}

ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minimumSize: Size(0, 40),
      textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      elevation: 5,
      shadowColor: Colors.black);
}

SizedBox sizedBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Card(
      elevation: 5,
      shadowColor: Colors.green,
      child: child,
    ),
  );
}