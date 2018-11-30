import 'package:rest/input_boundary.dart';
import 'package:rest/output_boundary.dart';

import 'http_bin_gateway.dart';

class Interactor implements InputBoundary {
  @override
  send({request = null, OutputBoundary outputBoundary}) async {
    var response = await HttpBinGateway().fetchData();
    outputBoundary.receive(response: response);
  }
}
