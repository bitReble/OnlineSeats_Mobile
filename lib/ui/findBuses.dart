import 'package:flutter/material.dart';

class FindBuses extends StatefulWidget {
  createState() {
    return FindBusesState();
  }
}

class FindBusesState extends State<FindBuses> {
  String dropdownValue = 'Kandy';
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Find Buses',
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          margin: EdgeInsets.all(25.5),
          child: ListView(
            children: <Widget>[
              Text(
                "FROM",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              DropdownButton(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 20,
                hint: Text('Enter your depature station'),
                isExpanded: true,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  width: 100,
                  color: Colors.deepPurpleAccent,
                ),
                items: <String>[
                  'Kandy',
                  'Kurunegala',
                  'Anuradhapura',
                  'Kanduruwela',
                  'Badulla',
                  'Nuwara Eliya',
                  'Bandarawela',
                  'Monaragala',
                  'Hambantota',
                  'Jafna',
                  'Vaunia',
                  'Puttalam',
                  'Negombo',
                  'Ampara',
                  'Welimada',
                  'Tangalle',
                  'Kataragama',
                  'Galle',
                  'Matara',
                  'Chilaw',
                  'baticaloe'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
              Text(
                "To",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              DropdownButton(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 20,
                hint: Text('Enter your arrival station'),
                isExpanded: true,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  width: 100,
                  color: Colors.deepPurpleAccent,
                ),
                items: <String>[
                  'Kandy',
                  'Kurunegala',
                  'Anuradhapura',
                  'Kanduruwela',
                  'Badulla',
                  'Nuwara Eliya',
                  'Bandarawela',
                  'Monaragala',
                  'Hambantota',
                  'Jafna',
                  'Vaunia',
                  'Puttalam',
                  'Negombo',
                  'Ampara',
                  'Welimada',
                  'Tangalle',
                  'Kataragama',
                  'Galle',
                  'Matara',
                  'Chilaw',
                  'baticaloe'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "${selectedDate.toLocal()}".split(' ')[0],
                style: TextStyle(color: Colors.deepPurple, fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () => _selectDate(context),
                child: Text('Select journey Date'),
                color: Colors.red,
              ),
              SizedBox(
                height: 30.0,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FindBuses()),
                  );
                },
                child: Text(
                  'Find Available Buses',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
              ),
            ],
          ),
        ));
  }
}
