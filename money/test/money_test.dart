import 'package:money/bank.dart';
import 'package:money/money.dart';
import 'package:test/test.dart';

void main() {
  group('Money', () {
    test('currency', () {
      expect(Money.dollar(1).currency, "USD");
      expect(Money.franc(1).currency, "CHF");
    });

    test('dollar multiplication', () {
      final five = Money.dollar(5);
      expect(five * 2, Money.dollar(10));
    });

    test('equality', () {
      expect(Money.dollar(5), Money.dollar(5));
      expect(Money.dollar(5), isNot(Money.dollar(6)));
      expect(Money.dollar(5), isNot(Money.franc(5)));
    });
  });

  group('Bank', () {
    test('reduce money', () {
      final bank = Bank();
      final result = bank.reduce(Money.dollar(1), "USD");
      expect(result, Money.dollar(1));
    });

    test('simple addition', () {
      final five = Money.dollar(5);
      final ten = five + five;
      final bank = Bank();
      final result = bank.reduce(ten, "USD");
      expect(result, Money.dollar(10));
    });

    test('reduce money different currency', () {
      final bank = Bank();
      bank.addRate("CHF", "USD", 2);
      final result = bank.reduce(Money.franc(2), "USD");
      expect(result, Money.dollar(1));
    });

    test('identity rate', () {
      expect(Bank().rate("USD", "USD"), 1);
    });
  });
}
