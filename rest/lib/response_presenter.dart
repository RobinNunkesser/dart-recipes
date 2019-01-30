import 'package:rest/rest.dart';
import 'package:rest/clean_arch/clean_arch.dart';

class ResponsePresenter implements Presenter<ResponseEntity, String> {
  @override
  String present(ResponseEntity entity) =>
      'origin: ${entity.origin}, url: ${entity.url}';
}
