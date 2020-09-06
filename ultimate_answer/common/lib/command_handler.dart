library common;

/// Executes the business logic of the use case.
abstract class CommandHandler<InDTOType, OutDTOType> {
  /// Executes the use case.
  void execute(
      {InDTOType inDTO, Function(OutDTOType value) onValue, Function onError});
}
