// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrentUserScreen extends StatefulWidget {
  const CurrentUserScreen({super.key});

  @override
  State<CurrentUserScreen> createState() => _CurrentUserScreenState();
}

class _CurrentUserScreenState extends State<CurrentUserScreen> {
  final stringTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  final numberTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14);

  Widget NumberofUserContainer() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
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
            'Number of Home Owner Registered',
            style: stringTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            '4',
            style: numberTextStyle,
          ),
        ],
      )),
    );
  }

  Widget NumberofUserContainer2() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8),
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
            'Number of Home Owner Registered',
            style: stringTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            '4',
            style: numberTextStyle,
          ),
        ],
      )),
    );
  }

  Widget NumberofUserContainer3() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(blurRadius: 0.5, spreadRadius: 0.5, color: Colors.grey)
          ]),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Number of Home Owner Registered',
            style: stringTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            '4',
            style: numberTextStyle,
          ),
        ],
      )),
    );
  }

  Widget OrderCompleteContainer() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 0.5,
              spreadRadius: 0.5,
              color: Color(0xff80cbc4),
            )
          ]),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Number of Orders Done',
            textAlign: TextAlign.center,
            style: stringTextStyle,
          ),
          Text(
            '10',
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
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NumberofUserContainer(),
                      OrderCompleteContainer(),
                      NumberofUserContainer3(),
                      NumberofUserContainer2(),
                    ],
                  ),
                  NumberofUserContainer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
