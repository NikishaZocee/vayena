import 'package:flutter/material.dart';
class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FemmeFlow"),
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      ),
      body: Container(
        color: Color.fromRGBO(253, 213, 200, 1),

      ),
    );
  }
}
