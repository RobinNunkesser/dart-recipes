library common;

/// Executes the business logic of the use case.
abstract class CommandHandler<InDTOType, OutDTOType> {
  /// Executes the use case.
  Future<OutDTOType> execute({InDTOType inDTO});
}
