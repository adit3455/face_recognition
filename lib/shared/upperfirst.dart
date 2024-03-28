extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

// extension Iterables<E> on Iterable<E> {
//   Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
//       <K, List<E>>{},
//       (Map<K, List<E>> map, E element) =>
//           map..putIfAbsent(keyFunction(element), () => <E>[]).add(element));
// }
