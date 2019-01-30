import 'package:rest/rest.dart';
import 'package:rest/clean_arch/clean_arch.dart';

class Interactor implements InputBoundary {
  @override
  void send({dynamic request, OutputBoundary outputBoundary}) async {
    var response = HttpBinGateway().fetchData()
    .then((value) => ResponsePresenter().present(value));
    outputBoundary.receive(response: response);
  }
}
