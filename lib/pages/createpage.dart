import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CreatePageState();
}

class CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('创作'),
      ),
      body: Text('创作页面'),
    );
  }
}