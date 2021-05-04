import 'package:grokking_algorithms/ch-01/binary_search.dart';
import 'package:test/test.dart';

void main() {
  late BinarySearch sut;

  const list = [1, 5, 8, 9, 23, 45, 68, 95, 124, 251];

  setUp(() {
    sut = BinarySearch();
  });

  test(
    'should return an index when item is found',
    () async {
      // arrange
      const idx = 3;
      final item = list[idx];

      // act
      final result = sut.execute(list, item);

      // assert
      expect(result, idx);
    },
  );
  test(
    'should return null when item is not found',
    () async {
      // arrange
      const item = -455;

      // act
      final result = sut.execute(list, item);

      // assert
      expect(result, isNull);
    },
  );
}
