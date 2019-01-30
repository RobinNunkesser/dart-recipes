import 'output_boundary.dart';

abstract class InputBoundary<T> {
  void send({T request,OutputBoundary outputBoundary});
}