import 'package:rest/rest.dart';
import 'package:rest/clean_arch/clean_arch.dart';

class HttpRequestPresenter implements Presenter<HttpRequestModel, String> {
  @override
  String present(HttpRequestModel entity) =>
      'origin: ${entity.origin}, url: ${entity.url}';
}
