import 'package:lombok/lombok.dart';

@data
class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({this.expandedValue, this.headerValue, this.isExpanded = false});
}
