import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PlatformPicker extends PlatformWidgetBase<DecoratedBox, InputDecorator> {
  String label;
  final int selectedIndex;
  final List<String> items;
  final ValueChanged<String> onChanged;
  final ValueChanged<int> onSelectedItemChanged;

  PlatformPicker(
      {this.label,
      this.selectedIndex,
      this.items,
      this.onChanged,
      this.onSelectedItemChanged});

  @override
  InputDecorator createAndroidWidget(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        contentPadding: EdgeInsets.zero,
      ),
      isEmpty: false,
      child: DropdownButton<String>(
        value: items[selectedIndex],
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  @override
  DecoratedBox createIosWidget(BuildContext context) {
    var picker = CupertinoPicker(
      scrollController: FixedExtentScrollController(initialItem: selectedIndex),
      itemExtent: 32.0,
      backgroundColor: CupertinoColors.white,
      onSelectedItemChanged: onSelectedItemChanged,
      children: List<Widget>.generate(items.length, (int index) {
        return Center(
          child: Text(items[index]),
        );
      }),
    );

    var bottomPicker = Container(
      height: 216.0,
      padding: const EdgeInsets.only(top: 6.0),
      color: CupertinoColors.white,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: CupertinoColors.black,
          fontSize: 22.0,
        ),
        child: GestureDetector(
          // Blocks taps from propagating to the modal sheet and popping.
          onTap: () {},
          child: SafeArea(
            top: false,
            child: picker,
          ),
        ),
      ),
    );

    var menu = Container(
      decoration: const BoxDecoration(
        color: CupertinoColors.white,
        border: Border(
          top: BorderSide(color: Color(0xFFBCBBC1), width: 0.0),
          bottom: BorderSide(color: Color(0xFFBCBBC1), width: 0.0),
        ),
      ),
      height: 44.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          top: false,
          bottom: false,
          child: DefaultTextStyle(
            style: const TextStyle(
              letterSpacing: -0.24,
              fontSize: 17.0,
              color: CupertinoColors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label),
                Text(
                  items[selectedIndex],
                  style: const TextStyle(color: CupertinoColors.inactiveGray),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return DecoratedBox(
      decoration: const BoxDecoration(color: Color(0xFFEFEFF4)),
      child: ListView(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 32.0)),
          GestureDetector(
            onTap: () async {
              await showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return bottomPicker;
                  });
            },
            child: menu,
          ),
        ],
      ),
    );
  }
}
