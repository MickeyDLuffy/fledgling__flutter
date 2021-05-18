import 'package:falcon_wings/model/Person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTables extends StatefulWidget {
  const DataTables({Key key}) : super(key: key);

  @override
  _DataTablesState createState() => _DataTablesState();
}

class _DataTablesState extends State<DataTables> {
  List<Person> persons;
  bool sort;
  int sortColumn = 0;
  void initState() {
    sort = false;
    persons = Person.getPersonList();
    super.initState();
  }

  onSortColumn(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        persons.sort((a, b) => a.firstname.compareTo(b.firstname));
      } else {
        persons.sort((a, b) => b.firstname.compareTo(a.firstname));
      }
    } else if (columnIndex == 1) {
      if (ascending) {
        persons.sort((a, b) => a.lastname.compareTo(b.lastname));
      } else {
        persons.sort((a, b) => b.lastname.compareTo(a.lastname));
      }
    }
  }

  DataTable datatable() {
    return DataTable(
        sortAscending: sort,
        sortColumnIndex: sortColumn,
        columns: [
          DataColumn(
              label: Text('firstname'),
              tooltip: 'Firstname',
              onSort: (columnIndex, ascending) {
                setState(() {
                  sort = !sort;
                  sortColumn = columnIndex;
                });
                onSortColumn(columnIndex, ascending);
              }),
          DataColumn(
              label: Text('Last name'),
              tooltip: 'this is the lastname',
              onSort: (columnIndex, ascending) {
                setState(() {
                  sort = !sort;
                  sortColumn = columnIndex;
                });
                onSortColumn(columnIndex, ascending);
              }),
        ],
        rows: persons
            .map((person) => DataRow(cells: [
                  DataCell(Text(person.firstname),
                      onTap: () => print('aelected')),
                  DataCell(Text(person.lastname),
                      onTap: () => print('aelected')),
                ]))
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: datatable())],
        ),
      ),
    );
  }
}
