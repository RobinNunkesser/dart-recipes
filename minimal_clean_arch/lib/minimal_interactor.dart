import 'package:basic_clean_arch/basic_clean_arch.dart';
import 'package:minimal_clean_arch/minimal_clean_arch.dart';

class MinimalInteractor extends UseCase<dynamic,int,String> {
  @override
  var presenter = MinimalPresenter();

  @override
  void execute({request, Displayer displayer, resultCode = 0}) {
    const model = 42;
    var viewModel = presenter.present(model);
    displayer.display(result: viewModel);
  }
}