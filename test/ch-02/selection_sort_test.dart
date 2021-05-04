import 'package:grokking_algorithms/ch-02/selection_sort.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  late SelectionSort sut;

  setUp(() {
    sut = SelectionSort();
  });

  test(
    "should sort the list in ascending order",
    () async {
      // arrange
      final unsortedList = [8, 2, 4, 3, 6, 7, 5, 9, 1];
      final sortedList = [1, 2, 3, 4, 5, 6, 7, 8, 9];

      // act
      final result = sut.execute(unsortedList);

      // assert
      expect(result, sortedList);
    },
  );
}
