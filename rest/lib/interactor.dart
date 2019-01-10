import 'common/input_boundary.dart';
import 'common/output_boundary.dart';
import 'http_bin_gateway.dart';
import 'response_presenter.dart';

class Interactor implements InputBoundary {
  @override
  send({request, OutputBoundary outputBoundary}) async {
    var response = HttpBinGateway().fetchData()
    .then((value) => ResponsePresenter().present(value));
    outputBoundary.receive(response: response);
  }
}
