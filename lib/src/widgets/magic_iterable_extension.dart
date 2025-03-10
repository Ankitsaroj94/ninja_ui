import 'magic_universal_extension.dart';

/// An extension on [Iterable] that provides additional utility methods
/// for handling nullable elements and performing common operations.
extension MagicIterableExtension<E> on Iterable<E?> {
  /// Returns `true` if all non-null elements in the iterable evaluate to `true` when converted to a [bool].
  ///
  /// This method uses the [magicBool] method to convert each element to a boolean.
  /// If any non-null element evaluates to `false`, the method returns `false`.
  /// If the iterable is empty or all non-null elements evaluate to `true`, it returns `true`.
  bool magicAnd() {
    return !any((element) => element?.magicBool() == false);
  }

  /// Returns `true` if any non-null element in the iterable evaluates to `true` when converted to a [bool].
  ///
  /// This method uses the [magicBool] method to convert each element to a boolean.
  /// If any non-null element evaluates to `true`, the method returns `true`.
  /// If the iterable is empty or no non-null elements evaluate to `true`, it returns `false`.
  bool magicOr() {
    return any((element) => element?.magicBool() == true);
  }

  /// Returns a list of non-null elements in the iterable that evaluate to `true` when converted to a [bool].
  ///
  /// This method uses the [magicBool] method to convert each element to a boolean.
  /// Non-null elements that evaluate to `true` are included in the returned list.
  List<E> magicFilterTrue() {
    return where(
      (element) => element?.magicBool() == true,
    ).whereType<E>().toList();
  }

  /// Returns a list of non-null elements in the iterable that evaluate to `false` when converted to a [bool].
  ///
  /// This method uses the [magicBool] method to convert each element to a boolean.
  /// Non-null elements that evaluate to `false` are included in the returned list.
  List<E> magicFilterFalse() {
    return where(
      (element) => element?.magicBool() == false,
    ).whereType<E>().toList();
  }

  /// Returns `true` if the iterable contains an element that matches the given condition.
  ///
  /// This method uses the [magicBool] method to convert each element to a boolean.
  /// The [condition] function is used to test each element.
  bool magicContains(bool Function(E) condition) {
    return any((element) => element != null && condition(element));
  }

  /// Computes the sum of numeric elements in the iterable.
  ///
  /// This method uses the [magicDouble] method to convert each element to a `double` and then calculates the sum.
  double magicSum() {
    return fold(0.0, (sum, element) => sum + (element?.magicDouble() ?? 0.0));
  }

  /// Computes the product of numeric elements in the iterable.
  ///
  /// This method uses the [magicDouble] method to convert each element to a `double` and then calculates the product.
  /// If the iterable is empty, it returns `1.0`.
  double magicProduct() {
    return fold(
      1.0,
      (product, element) => product * (element?.magicDouble() ?? 1.0),
    );
  }

  /// Joins the string representation of all elements into a single [String] with a specified delimiter.
  ///
  /// This method uses the [magicString] method to convert each element to a `String`.
  /// The [delimiter] specifies the character(s) to separate each element in the resulting string.
  String magicJoin({String delimiter = ', '}) {
    return map((element) => element?.magicString() ?? '').join(delimiter);
  }

  /// Filters elements based on the given condition and returns a new iterable.
  ///
  /// This method uses the [magicBool] method to convert each element to a boolean.
  /// The [condition] function is used to test each element.
  Iterable<E?> magicFilter(bool Function(E) condition) {
    return where((element) => element != null && condition(element));
  }

  /// Returns a list of elements converted to strings by the [magicString] method.
  ///
  /// This method uses the [magicString] method to convert each element to a string.
  /// The [defaultValue] parameter is used for conversion if the element is `null`.
  List<String> magicToStrings({String defaultValue = ''}) {
    return map(
      (element) =>
          element?.magicString(defaultValue: defaultValue) ?? defaultValue,
    ).toList();
  }

  /// Returns a list of elements converted to integers by the [magicInt] method.
  ///
  /// This method uses the [magicInt] method to convert each element to an integer.
  /// The [defaultValue] parameter is used for conversion if the element is `null`.
  List<int> magicToIntegers({int defaultValue = 0}) {
    return map(
      (element) =>
          element?.magicInt(defaultValue: defaultValue) ?? defaultValue,
    ).toList();
  }

  /// Returns a list of elements converted to doubles by the [magicDouble] method.
  ///
  /// This method uses the [magicDouble] method to convert each element to a double.
  /// The [defaultValue] parameter is used for conversion if the element is `null`.
  List<double> magicToDoubles({double defaultValue = 0}) {
    return map(
      (element) =>
          element?.magicDouble(defaultValue: defaultValue) ?? defaultValue,
    ).toList();
  }

  /// Returns a list of elements converted to booleans by the [magicBool] method.
  ///
  /// This method uses the [magicBool] method to convert each element to a boolean.
  /// The [defaultValue] parameter is used for conversion if the element is `null`.
  List<bool> magicToBooleans({bool defaultValue = false}) {
    return map(
      (element) =>
          element?.magicBool(defaultValue: defaultValue) ?? defaultValue,
    ).toList();
  }
}
