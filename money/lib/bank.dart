import 'money.dart';
import 'pair.dart';

class Bank {
  Map<Pair, int> rates = Map();

  Money? reduce(Money source, String to) {
    return source.reduce(this, to);
  }

  void addRate(String from, String to, int rate) {
    rates[Pair(from, to)] = rate;
  }

  int? rate(String from, String to) {
    if (from == to) return 1;
    return rates[Pair(from, to)];
  }
}
