import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class CheckBoxRadioButtonGroup extends StatefulWidget {
  @override
  _CheckBoxRadioButtonGroupState createState() =>
      _CheckBoxRadioButtonGroupState();
}

class _CheckBoxRadioButtonGroupState extends State<CheckBoxRadioButtonGroup> {
  DateTime date1 = DateTime.now();
  TimeOfDay timeOfDay = new TimeOfDay.now();
  TimeOfDay timePicked;
  bool switchValue = false;
  var sliderValue = 0.0;
  Future<Null> selectedTime(BuildContext context) async {
    timePicked = await showTimePicker(context: context, initialTime: timeOfDay);
    setState(() {
      timeOfDay = timePicked;
    });
  }

  Future<Null> selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: date1,
        firstDate: DateTime(1960),
        lastDate: DateTime(2030));

    if (picked != null && picked != date1) {
      setState(() {
        date1 = picked;
        print(date1.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text('Select your topins',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            CheckboxGroup(
              labels: ['Lions', 'Chimps', 'Lizards', 'Panthers'],
              labelStyle: TextStyle(),
              onSelected: (List<String> checked) => print(checked.toString()),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Select pizza size',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RadioButtonGroup(
              labels: ['Huge', 'Massive', 'Gargantuan'],
              onSelected: (String selected) => print(selected.toString()),
            ),
            Row(
              children: [
                Text(
                  'Lobolo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.calendar),
                    color: Colors.red,
                    onPressed: () {
                      selectDate(context);
                    }),
                Text(
                  '${date1.year} - ${date1.month} - ${date1.day}'.toString(),
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Delivery time',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.access_time),
                  onPressed: () {
                    selectedTime(context);
                  },
                ),
                Text(
                  '${timeOfDay.hour} : ${timeOfDay.minute}',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 300,
                  child: Slider(
                    value: sliderValue,
                    label: '${sliderValue}',
                    min: 0,
                    max: 100,
                    divisions: 10,
                    activeColor: Colors.red,
                    onChanged: (newRating) {
                      setState(() {
                        sliderValue = newRating;
                      });
                    },
                  ),
                )
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Number of Pizza: $sliderValue',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Enable Location :',
                  style: TextStyle(fontSize: 20),
                ),
                Switch(
                    value: switchValue,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                    activeTrackColor: Colors.green[300],
                    onChanged: (bool value) {
                      setState(() {
                        switchValue = value;
                      });
                    }),
                Text(
                  switchValue ? 'Yes' : 'No',
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
