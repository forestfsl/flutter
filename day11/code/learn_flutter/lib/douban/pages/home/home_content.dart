import 'package:flutter/material.dart';

class HYHomeContent extends StatefulWidget {
  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("首页内容", style: TextStyle(fontSize: 30, color: Colors.green),),
    );
  }
}
