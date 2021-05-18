import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextFieldDemo extends StatefulWidget {
  const MyTextFieldDemo({Key key}) : super(key: key);

  @override
  _MyTextFieldDemoState createState() => _MyTextFieldDemoState();
}

class _MyTextFieldDemoState extends State<MyTextFieldDemo> {
  String displayResult = '';
  TextEditingController principalController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController termController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('Simple Interest Calculator')),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                child: Image(
                  width: 300,
                  height: 300,
                  image: NetworkImage(
                      'https://www.pikpng.com/pngl/m/0-7408_money-png-images-are-we-living-for-money.png'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Principal',
                      hintText: 'Enter Principal e.g 12000',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Rate of Intrest',
                      hintText: 'In Percent',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Term',
                      hintText: 'Term in Year',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool b) {
                          setState(() {
                            isChecked = b;
                          });
                        }),
                    Container(
                      child: Text('I have read and accept terms and condition'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0, top: 5.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                this.displayResult = _calculateTotalReturns();
                              });
                            },
                            child: Text('Calculate'))),
                    SizedBox(width: 5.0),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              principalController.text = '';
                              rateController.text = '';
                              termController.text = '';
                              setState(() {
                                this.displayResult = '';
                              });
                            },
                            child: Text('Reset')))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Result',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double rate = double.parse(rateController.text);
    double term = double.parse(termController.text);

    double totalAmountPayble = principal + (principal * rate * term) / 100;

    return 'After $term years, Your Investment will b worth $totalAmountPayble';
  }
}
