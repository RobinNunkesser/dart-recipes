import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PlatformListTile extends PlatformWidgetBase<MergeSemantics, MergeSemantics> {

  final String title;
  final String subtitle;

  PlatformListTile({this.title, this.subtitle});


  @override
  MergeSemantics createAndroidWidget(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        dense: false,
      ),
    );
  }

  @override
  MergeSemantics createIosWidget(BuildContext context) {
    return MergeSemantics(
        child: SafeArea(
          top: false,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0, right: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(title),
                        const Padding(padding: EdgeInsets.only(top: 8.0)),
                        Text(subtitle,
                          style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )//Text('$title\n$subtitle')
    );
  }
}

