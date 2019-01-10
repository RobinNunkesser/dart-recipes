import 'package:rest/common/presenter.dart';
import 'response_entity.dart';

class ResponsePresenter implements Presenter<ResponseEntity, String> {
  @override
  String present(ResponseEntity entity) =>
      'origin: ${entity.origin}, url: ${entity.url}';
}
