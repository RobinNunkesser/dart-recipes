import 'package:basic_clean_arch/basic_clean_arch.dart';

class MinimalPresenter extends Presenter<int, String> {
  @override
  String present(int model) {
    return model.toString();
  }
}
