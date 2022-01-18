import 'package:money/bank.dart';

class Money {
  int amount;
  String currency;

  Money(this.amount, this.currency);

  static dollar(int amount) => Money(amount, "USD");

  static franc(int amount) => Money(amount, "CHF");

  Money operator *(int multiplier) => new Money(amount * multiplier, currency);

  Money? operator +(Money addend) {
    if (addend.currency != currency) return null;
    return new Money(amount + addend.amount, currency);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Money &&
          runtimeType == other.runtimeType &&
          amount == other.amount &&
          currency == other.currency;

  @override
  int get hashCode => amount.hashCode ^ currency.hashCode;

  Money? reduce(Bank bank, String to) {
    final rate = bank.rate(currency, to);
    if (rate == null) return null;
    return Money(amount ~/ rate, to);
  }
}
