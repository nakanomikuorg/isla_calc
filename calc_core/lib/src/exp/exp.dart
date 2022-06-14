import '../exp_element/exp_element.dart';

class Exp {
  final _expElements = <ExpElement>[];

  List<ExpElement> get expElements => _expElements;

  void addExpElement(ExpElement expElement) {
    _expElements.add(expElement);
  }

  @override
  String toString() {
    var expSB = StringBuffer();

    for (ExpElement expElement in _expElements) {
      expSB
        ..write(expElement)
        ..write('\n');
    }

    return expSB.toString();
  }
}
