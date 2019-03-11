import 'package:rest/rest.dart';
import 'package:rest/clean_arch/clean_arch.dart';

class GetHttpRequestInteractor implements UseCase {
  @override
  void execute({dynamic request, Displayer displayer}) async {
    var response = HttpBinGateway().fetchData()
    .then((value) => HttpRequestPresenter().present(value));
    displayer.display(result: response);
  }
}
