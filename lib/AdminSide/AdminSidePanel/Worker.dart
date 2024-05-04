import 'package:flutter/material.dart';

class CurrentWorkerScreen extends StatefulWidget {
  const CurrentWorkerScreen({super.key});

  @override
  State<CurrentWorkerScreen> createState() => _CurrentWorkerScreenState();
}

class _CurrentWorkerScreenState extends State<CurrentWorkerScreen> {
  final stringTextStyle =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white);
  final numberTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);

  Widget NumberofWorkerContainer() {
    return Container(
      height: 300,
      width: 300,
      margin: EdgeInsetsDirectional.symmetric(horizontal: 50, vertical: 50),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ],
            tileMode: TileMode.mirror,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 0.5,
              spreadRadius: 0.5,
              color: Color(0xffffb56b),
            )
          ]),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Number of Worker Registered',
            style: stringTextStyle,
          ),
          Text(
            '4',
            style: numberTextStyle,
          ),
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [
                Row(children: [NumberofWorkerContainer()]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
