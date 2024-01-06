import 'package:flutter/material.dart';
class notify extends StatefulWidget {
  const notify({super.key});

  @override
  State<notify> createState() => _notifyState();
}

class _notifyState extends State<notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      appBar: AppBar(
        title: Text("Notifications", style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      ),

    );
  }
}
