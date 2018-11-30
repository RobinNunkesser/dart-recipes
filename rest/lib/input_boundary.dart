import 'output_boundary.dart';

abstract class InputBoundary {
  send({request = null,OutputBoundary outputBoundary});
}