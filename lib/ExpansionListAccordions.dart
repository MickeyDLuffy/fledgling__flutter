import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/AccordionItem.dart';

class ExpansionAccordions extends StatefulWidget {
  const ExpansionAccordions({Key key}) : super(key: key);

  @override
  _ExpansionAccordionsState createState() => _ExpansionAccordionsState();
}

class _ExpansionAccordionsState extends State<ExpansionAccordions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel Information'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: buildListPanel(),
        ),
      ),
    );
  }

  Widget buildListPanel() {
    return ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            data[index].isExpanded = !isExpanded;
          });
        },
        children: data.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExapnded) {
                return ListTile(
                  title: Text(item.headerValue),
                );
              },
              body: ListTile(
                title: Text(item.expandedValue),
                subtitle: Text('To delete this panel ,tap the trash icon'),
                trailing: Icon(Icons.delete),
                onTap: () {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text('${item.headerValue} deleted successfully')));
                    data.removeWhere((element) => item == element);
                  });
                },
              ),
              isExpanded: item.isExpanded);
        }).toList());
  }
}

List<Item> data = generateItems(10);

// List<Item> generateItems(int numberOfItems) {
//   return List.generate(numberOfItems, (index) => {
//       //
//       // return Item(headerValue: 'Panel $index',
//       // expandedValue: 'This is item number $index')
//
//     return Item(
//       headerValue: 'Panel $index',
//       expandedValue: 'This is item number $index'
//   )
//
// });
// }

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (index) {
    return Item(
        headerValue: 'Panel $index',
        expandedValue: 'This is item number $index');
  });
}
