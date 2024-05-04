import 'package:flutter/material.dart';

class OrdeersScreen extends StatefulWidget {
  const OrdeersScreen({super.key});

  @override
  State<OrdeersScreen> createState() => _OrdeersScreenState();
}

class _OrdeersScreenState extends State<OrdeersScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Table(
          border: TableBorder.all(
            color: Colors.black,
          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.blue),
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(child: Text('Title 1')),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(child: Text('Title 1')),
                ),
              ],
            ),
            ...List.generate(
              20,
              (index) => TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(child: Text('Cell 1')),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(child: Text('Cell 2')),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
