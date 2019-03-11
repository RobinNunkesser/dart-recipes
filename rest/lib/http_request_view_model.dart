import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';

class HttpRequestViewModel extends Model {
  String _description = "Loading...";
  String get description => _description;
  set description(String value) {
    _description = value;
    notifyListeners();
  }

  static HttpRequestViewModel of(BuildContext context) =>
      ScopedModel.of<HttpRequestViewModel>(context);
}