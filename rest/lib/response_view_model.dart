import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';

class ResponseViewModel extends Model {
  String _description = "Loading...";
  String get description => _description;
  set description(String value) {
    _description = value;
    notifyListeners();
  }

  static ResponseViewModel of(BuildContext context) =>
      ScopedModel.of<ResponseViewModel>(context);
}