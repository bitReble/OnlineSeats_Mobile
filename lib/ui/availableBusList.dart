import 'package:flutter/material.dart';

class AvailableBusList extends StatefulWidget {
  AvailableBusList({Key key}) : super(key: key);
  createState() {
    return AvailableBusListState();
  }
}

class AvailableBusListState extends State<AvailableBusList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Available Buses',
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          margin: EdgeInsets.all(25.5),
          child: ListView(
            children: <Widget>[
              DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'BusName',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Type',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'ContactNo',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Weerasighe Tours')),
                      DataCell(Text('luxury')),
                      DataCell(Text('0759563123')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Jaya Travels')),
                      DataCell(Text('semi-luxury')),
                      DataCell(Text('0728976453')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Dakshina')),
                      DataCell(Text('Normal')),
                      DataCell(Text('0779087654')),
                    ],
                  ),
                ],
              ),
              RaisedButton(
                onPressed: null,
                child: Text(
                  'Select',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              )
            ],
          ),
        ));
  }
}
