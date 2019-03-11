import 'package:rest/rest.dart';
import 'package:basic_clean_arch/basic_clean_arch.dart';

class HttpRequestPresenter implements Presenter<HttpRequestModel, String> {
  @override
  String present(HttpRequestModel entity) =>
      'origin: ${entity.origin}, url: ${entity.url}';
}
