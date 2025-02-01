/*import 'package:flutter/material.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  bool isAvailable = false;
  List<bool> showDetails = [false, false, false];

  final List<Map<String, String>> patients = [
    {'name': 'John Doe', 'age': '30', 'symptoms': 'Fever, Cough', 'record': 'Past flu diagnosis'},
    {'name': 'Jane Smith', 'age': '25', 'symptoms': 'Headache, Fatigue', 'record': 'Migraine history'},
    {'name': 'Mike Johnson', 'age': '40', 'symptoms': 'Chest pain', 'record': 'Heart checkup required'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Doctor Dashboard')),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Available for consultation'),
            activeColor: Color.fromARGB(239, 28, 184, 90),
            value: isAvailable,
            onChanged: (bool value) {
              setState(() {
                isAvailable = value;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: patients.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${patients[index]['name']}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('Age: ${patients[index]['age']}'),
                        CheckboxListTile(
                          title: const Text('View Patient Profile'),
                          value: showDetails[index],
                          onChanged: (bool? value) {
                            setState(() {
                              showDetails[index] = value ?? false;
                            });
                          },
                        ),
                        if (showDetails[index]) ...[
                          Text('Symptoms: ${patients[index]['symptoms']}'),
                          Text('Previous Record: ${patients[index]['record']}'),
                        ]
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  bool _isAvailable = false;
  final Map<int, bool> _checkedPatients = {};
  final Map<int, String> _timestampRecords = {}; // Stores timestamps

  final List<Map<String, dynamic>> patients = [
    {'name': 'John Doe', 'age': 30, 'symptoms': 'Fever, Cough', 'prevRecord': 'Flu'},
    {'name': 'Jane Smith', 'age': 25, 'symptoms': 'Headache', 'prevRecord': 'Migraine'},
    {'name': 'Emily Johnson', 'age': 40, 'symptoms': 'Fatigue', 'prevRecord': 'Anemia'},
  ];

  void _handleCheckboxChanged(int index, bool? value) {
    setState(() {
      _checkedPatients[index] = value ?? false;
      if (value == true) {
        _timestampRecords[index] = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
        print('Doctor checked patient ${patients[index]['name']} at ${_timestampRecords[index]}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Dashboard'),
  
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Available'),
            value: _isAvailable,
            onChanged: (value) {
              setState(() {
                _isAvailable = value;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: patients.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(patients[index]['name']),
                    subtitle: Text('Age: ${patients[index]['age']}'),
                    trailing: Checkbox(
                      value: _checkedPatients[index] ?? false,
                      onChanged: (value) => _handleCheckboxChanged(index, value),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  bool _isAvailable = false;
  final Map<int, bool> _checkedPatients = {};
  final Map<int, String> _timestampRecords = {}; // Stores timestamps

  final List<Map<String, dynamic>> patients = [
    {
      'name': 'John Doe',
      'age': 30,
      'symptoms': 'Fever, Cough',
      'prevRecord': 'Flu'
    },
    {
      'name': 'Jane Smith',
      'age': 25,
      'symptoms': 'Headache',
      'prevRecord': 'Migraine'
    },
    {
      'name': 'Emily Johnson',
      'age': 40,
      'symptoms': 'Fatigue',
      'prevRecord': 'Anemia'
    },
  ];
/*sdfsfaerbk*/
  void _handleCheckboxChanged(int index, bool? value) {
    setState(() {
      _checkedPatients[index] = value ?? false;
      if (value == true) {
        _timestampRecords[index] =
            DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
        print(
            'Doctor checked patient ${patients[index]['name']} at ${_timestampRecords[index]}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        color: Color.fromARGB(252, 11, 32, 49),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Active Consultation',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255))),
              value: _isAvailable,
              onChanged: (value) {
                setState(() {
                  _isAvailable = value;
                });
              },
              activeColor: Colors.white,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: patients.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(patients[index]['name'],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Age: ${patients[index]['age']}'),
                          if (_checkedPatients[index] == true) ...[
                            Text('Symptoms: ${patients[index]['symptoms']}',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 218, 87, 78))),
                            Text(
                                'Previous Record: ${patients[index]['prevRecord']}',
                                style: TextStyle(color: Colors.blue)),
                          ],
                        ],
                      ),
                      trailing: Checkbox(
                        value: _checkedPatients[index] ?? false,
                        onChanged: (value) =>
                            _handleCheckboxChanged(index, value),
                        activeColor: const Color.fromARGB(252, 11, 32, 49),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
