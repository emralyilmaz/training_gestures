import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Temel(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    ));

class Temel extends StatefulWidget {
  @override
  _TemelState createState() => _TemelState();
}

class _TemelState extends State<Temel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("Container Tıklandı...");
          },
          onHorizontalDragStart: (DragStartDetails detay) {
            print("Sürükleniyor...");
          },
          onLongPress: () {
            print("Uzun süre basıldı...");
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 2),
                color: Theme.of(context).primaryColor),
            child: Center(child: Text("Tıkla")),
          ),
        ),
      ),
    );
  }
}
