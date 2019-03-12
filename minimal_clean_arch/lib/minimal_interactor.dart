import 'package:minimal_clean_arch/minimal_clean_arch.dart';
import 'package:basic_clean_arch/basic_clean_arch.dart';

class MinimalInteractor extends UseCase<dynamic,int,String> {
  @override
  var presenter = MinimalPresenter();

  @override
  void execute({request, Displayer displayer}) {
    var viewModel = presenter.present(42);
    displayer.display(result: Future<String>(() => viewModel));

  }

}