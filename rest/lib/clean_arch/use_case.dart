import 'displayer.dart';

abstract class UseCase<T> {
  void execute({T request,Displayer displayer});
}