import 'package:common_ui/common_ui.dart';
import 'package:flutter/material.dart';

class GroupedListPage extends StatelessWidget {
  GroupedListPage({Key? key}) : super(key: key);

  final sections = [
    ListSection(title: "Section 1", items: [
      ListItem(title: "Section 1, Title 1", subtitle: "Subtitle 1"),
      ListItem(title: "Section 1, Title 2", subtitle: "Subtitle 2"),
    ]),
    ListSection(title: "Section 2", items: [
      ListItem(title: "Section 2, Title 1", subtitle: "Subtitle 1"),
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grouped List'),
      ),
      body: ListView.builder(
          itemCount: sections.length,
          itemBuilder: (context, index) =>
              SectionTile(section: sections[index])),
    );
  }
}
