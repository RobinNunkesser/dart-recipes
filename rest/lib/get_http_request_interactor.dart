import 'package:rest/rest.dart';
import 'package:basic_clean_arch/basic_clean_arch.dart';

class GetHttpRequestInteractor implements UseCase<dynamic,HttpRequestModel,String> {
  @override
  Presenter<HttpRequestModel, String> presenter = HttpRequestPresenter();
  HttpBinGateway gateway = HttpBinGateway();

  @override
  void execute({dynamic request, Displayer displayer}) async {
    var response = gateway.fetchData()
    .then((value) => presenter.present(value));
    displayer.display(result: response);
  }

}
