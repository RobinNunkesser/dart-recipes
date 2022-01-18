import 'item.dart';

class Group {
  String title;
  List<Item> items;

  Group({required this.title, required this.items});
}

List<Group> groups = [
  Group(title: "Group 1", items: [
    Item(title: "Group 1, Title 1", subtitle: "Subtitle 1"),
    Item(title: "Group 1, Title 2", subtitle: "Subtitle 2"),
  ]),
  Group(title: "Group 2", items: [
    Item(title: "Group 1, Title 1", subtitle: "Subtitle 1"),
  ])
];
