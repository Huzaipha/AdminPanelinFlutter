import 'package:flutter/material.dart';

class ComplaintsScreen extends StatefulWidget {
  const ComplaintsScreen({super.key});

  @override
  State<ComplaintsScreen> createState() => _ComplaintsScreenState();
}

class _ComplaintsScreenState extends State<ComplaintsScreen> {
  Widget OwnerComplaint() {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.yellow,
        child: Center(
          child: Text('Complaints'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [OwnerComplaint()],
            ),
          ],
        ),
      ),
    );
  }
}
