import 'package:basic_clean_arch/basic_clean_arch.dart';
import 'package:rest/rest.dart';

class GetHttpRequestInteractor
    implements UseCase<dynamic, HttpRequestModel, String> {
  @override
  Presenter<HttpRequestModel, String> presenter = HttpRequestPresenter();
  HttpBinGateway gateway = HttpBinGateway();

  @override
  void execute({request, Displayer displayer, resultCode = 0}) {
    gateway.fetchData().then((value) {
      var viewModel = presenter.present(value);
      displayer.display(result: viewModel, resultCode: resultCode);
    }).catchError((error) => displayer.displayError(error as Exception));
  }
}

