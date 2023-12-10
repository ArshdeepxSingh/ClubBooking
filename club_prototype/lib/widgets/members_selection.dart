import 'package:flutter/material.dart';

class CheckBoxListWithDropDown extends StatefulWidget {
  @override
  _CheckBoxListWithDropDownState createState() =>
      _CheckBoxListWithDropDownState();
}

class _CheckBoxListWithDropDownState extends State<CheckBoxListWithDropDown> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  bool _checkbox3 = false;
  String _dropdownValue1 = '1 person'; // Updated initial value
  int _selectedPersonCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox List with Dropdown'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: CheckboxListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_box),
                      SizedBox(width: 8),
                      Text('Group Entry'),
                    ],
                  ),
                  DropdownButton<String>(
                    value: _dropdownValue1,
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropdownValue1 = newValue!;
                        _selectedPersonCount =
                            int.parse(newValue.split(' ')[0]);
                      });
                    },
                    items: <String>[
                      '1 person',
                      '2 persons',
                      '3 persons',
                      '4 persons',
                      '5 persons',
                      '6 persons',
                      '7 persons',
                      '8 persons',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              value: _checkbox1,
              onChanged: (value) {
                setState(() {
                  _checkbox1 = value!;
                  if (_checkbox1) {
                    _checkbox2 = false;
                    _checkbox3 = false;
                  }
                });
              },
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _selectedPersonCount,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: Text('Aadhar Card Number ${index + 1}'),
                  subtitle: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Please enter the aadhar card number',
                    ),
                  ),
                ),
              );
            },
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: CheckboxListTile(
              title: Row(
                children: [
                  Icon(Icons.check_box),
                  SizedBox(width: 8),
                  Text('Couple Entry'),
                ],
              ),
              value: _checkbox2,
              onChanged: (value) {
                setState(() {
                  _checkbox2 = value!;
                  if (_checkbox2) {
                    _checkbox1 = false;
                    _checkbox3 = false;
                  }
                });
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: CheckboxListTile(
              title: Row(
                children: [
                  Icon(Icons.check_box),
                  SizedBox(width: 8),
                  Text('Stag Entry'),
                ],
              ),
              value: _checkbox3,
              onChanged: (value) {
                setState(() {
                  _checkbox3 = value!;
                  if (_checkbox3) {
                    _checkbox1 = false;
                    _checkbox2 = false;
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

