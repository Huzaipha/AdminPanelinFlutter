// ignore_for_file: sort_child_properties_last

import 'package:adminvessel/AdminSide/AdminSidePanel/Complaints.dart';
import 'package:adminvessel/AdminSide/AdminSidePanel/HomeOwner.dart';
import 'package:adminvessel/AdminSide/AdminSidePanel/Order.dart';
import 'package:adminvessel/AdminSide/AdminSidePanel/Worker.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  String _displayText = 'Hello';
  final adminTextStyle = TextStyle(color: Colors.white);

  void _handleMenuTap(String option) {
    setState(() {
      if (option == 'Home Owner') {
        _displayText = "Users Online";
      } else if (option == 'Workers Online') {
        _displayText = "Worker Online";
      } else if (option == 'Complaints') {
        _displayText = "User's Complaints";
      } else if (option == 'Orders') {
        _displayText = "Order";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF191725),
        title: Text(
          'Admin Dashboard',
          style: adminTextStyle,
        ),
      ),
      body: Row(
        children: [
          SizedBox(
            width: 250,
            child: Drawer(
              shape: BeveledRectangleBorder(),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text(
                      'Admin Panel',
                      style: adminTextStyle,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF191725),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Home Owner',
                      style: adminTextStyle,
                    ),
                    onTap: () {
                      _handleMenuTap('Home Owner');
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Workers Online',
                      style: adminTextStyle,
                    ),
                    onTap: () {
                      _handleMenuTap('Workers Online');
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Complaints',
                      style: adminTextStyle,
                    ),
                    onTap: () {
                      _handleMenuTap('Complaints');
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Orders',
                      style: adminTextStyle,
                    ),
                    onTap: () {
                      _handleMenuTap('Orders');
                    },
                  ),
                ],
              ),
              backgroundColor: Color(0xFF191725),
            ),
          ),
          // Main content (right side)
          Expanded(
            child: Center(
                child: _displayText == "Users Online"
                    ? CurrentUserScreen()
                    : _displayText == "Worker Online"
                        ? CurrentWorkerScreen()
                        : _displayText == "User's Complaints"
                            ? ComplaintsScreen()
                            : _displayText == "Order"
                                ? OrdeersScreen()
                                : null),
          ),
        ],
      ),
    );
  }
}
