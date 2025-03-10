import 'dart:collection';
import 'dart:developer';

import 'magic_string_extension.dart';

/// Extension methods for nullable values of any type.
extension MagicUniversalExtension<T> on T? {
  /// Checks if the value is `null`.
  bool get isNull => this == null;

  /// Logs the value and its type to the console.
  ///
  /// - [name]: The name of the log entry.
  void console({String name = 'MAGIC EXTENSION'}) {
    log(
      'value: ${this?.toString()}, type: ${this?.runtimeType.toString()}',
      name: name,
    );
  }

  /// Logs detailed information about the value.
  ///
  /// If the value is a [Map], logs each key-value pair.
  /// If the value is an [Iterable], logs each item.
  /// Otherwise, falls back to the [console] method.
  ///
  /// - [name]: The name of the log entry.
  void detailedConsole({String name = 'MAGIC EXTENSION'}) {
    if (this is Map) {
      (this as Map).forEach((key, value) {
        log('$key: $value', name: name);
      });
    } else if (this is Iterable) {
      for (var item in this as Iterable) {
        log(item.toString(), name: name);
      }
    } else {
      console(name: name);
    }
  }

  /// Converts the value to a [double].
  ///
  /// - [defaultValue]: The value to return if the conversion fails or the value is `null`.
  double magicDouble({double defaultValue = 0}) {
    if (isNull) return defaultValue;

    if (this is double) return this as double;

    if (this is int) return (this as int).toDouble();

    if (this is String) {
      return double.tryParse(this as String) ?? defaultValue;
    }

    if (this is bool) return (this as bool) ? 1 : 0;

    if (this is List) {
      double sum = 0;
      for (var element in this as List) {
        if (element is num) {
          sum += element.toDouble();
        }
      }
      return sum;
    }

    if (this is Map) {
      double sum = 0;
      for (var value in (this as Map).values) {
        if (value is num) {
          sum += value.toDouble();
        }
      }
      return sum;
    }

    if (this is DateTime) {
      return (this as DateTime).millisecondsSinceEpoch.toDouble();
    }

    if (this is Set) {
      double sum = 0;
      for (var element in this as Set) {
        if (element is num) {
          sum += element.toDouble();
        }
      }
      return sum;
    }

    if (this is Queue) {
      double sum = 0;
      for (var element in this as Queue) {
        if (element is num) {
          sum += element.toDouble();
        }
      }
      return sum;
    }

    log(
      'Unsupported Data Type: ${this?.runtimeType.toString()}',
      name: 'MAGIC EXTENSION',
    );
    return defaultValue;
  }

  /// Converts the value to an [int].
  ///
  /// - [defaultValue]: The value to return if the conversion fails or the value is `null`.
  int magicInt({int defaultValue = 0}) {
    if (isNull) return defaultValue;

    if (this is double) return this as int;

    if (this is int) return this as int;

    if (this is String) {
      return int.tryParse(this as String) ?? defaultValue;
    }

    if (this is bool) return (this as bool) ? 1 : 0;

    if (this is List) {
      double sum = 0;
      for (var element in this as List) {
        if (element is num) {
          sum += element;
        }
      }
      return sum.toInt();
    }

    if (this is Map) {
      double sum = 0;
      for (var value in (this as Map).values) {
        if (value is num) {
          sum += value;
        }
      }
      return sum.toInt();
    }

    if (this is DateTime) {
      return (this as DateTime).millisecondsSinceEpoch;
    }

    if (this is Set) {
      double sum = 0;
      for (var element in this as Set) {
        if (element is num) {
          sum += element;
        }
      }
      return sum.toInt();
    }

    if (this is Queue) {
      double sum = 0;
      for (var element in this as Queue) {
        if (element is num) {
          sum += element.toDouble();
        }
      }
      return sum.toInt();
    }

    log(
      'Unsupported Data Type: ${this?.runtimeType.toString()}',
      name: 'MAGIC EXTENSION',
    );
    return defaultValue;
  }

  /// Converts the value to a [bool].
  ///
  /// - [defaultValue]: The value to return if the conversion fails or the value is `null`.
  bool magicBool({bool defaultValue = false}) {
    if (isNull) return defaultValue;

    if (this is bool) return this as bool;

    if (this is int) return (this as int) != 0;

    if (this is double) return (this as double) != 0.0;

    if (this is String) {
      final str = (this as String).toLowerCase().trim();
      if (str == 'true' || str == 'yes' || str == '1' || str == 'y') {
        return true;
      }
      if (str == 'false' || str == 'no' || str == '0' || str == 'no') {
        return false;
      }
      return str.isNotEmpty;
    }

    if (this is List) {
      return (this as List).isNotEmpty;
    }

    if (this is Set) {
      return (this as Set).isNotEmpty;
    }

    if (this is Queue) {
      return (this as Queue).isNotEmpty;
    }

    if (this is Map) {
      return (this as Map).isNotEmpty;
    }

    if (this is DateTime) {
      return true;
    }

    log(
      'Unsupported Data Type: ${this?.runtimeType.toString()}',
      name: 'MAGIC EXTENSION',
    );
    return defaultValue;
  }

  /// Converts the value to a [String].
  ///
  /// - [defaultValue]: The value to return if the conversion fails or the value is `null`.
  /// - [nonEmptyInDebug]: If `true`, returns 'Lorem Ipsum' when the `defaultValue` is empty and the app is in debug mode.
  String magicString({String defaultValue = '', bool nonEmptyInDebug = false}) {
    if (isNull) {
      return defaultValue.validString(
        defaultValue: defaultValue,
        nonEmptyInDebug: nonEmptyInDebug,
      );
    }
    if (this is String) {
      return (this as String).validString(
        defaultValue: defaultValue,
        nonEmptyInDebug: nonEmptyInDebug,
      );
    }
    if (this is num) return toString();
    if (this is bool) return (this as bool) ? 'true' : 'false';
    if (this is List) return (this as List).join(', ');
    if (this is Map) {
      return (this as Map).entries
          .map((e) => '${e.key}: ${e.value}')
          .join(', ');
    }
    if (this is Set) return (this as Set).join(', ');
    if (this is Queue) return (this as Queue).join(', ');
    if (this is DateTime) return (this as DateTime).toIso8601String();
    return defaultValue.validString(
      defaultValue: defaultValue,
      nonEmptyInDebug: nonEmptyInDebug,
    );
  }

  /// Converts the value to a [List].
  ///
  /// - [defaultValue]: The value to return if the conversion fails or the value is `null`.
  List magicList({List defaultValue = const []}) {
    if (isNull) return defaultValue;
    if (this is List) return this as List;
    if (this is Set) return (this as Set).toList();
    if (this is Queue) return (this as Queue).toList();
    return [this];
  }

  /// Converts the value to a [Map].
  ///
  /// - [defaultValue]: The value to return if the conversion fails or the value is `null`.
  Map magicMap({Map defaultValue = const {}}) {
    if (isNull) return defaultValue;
    if (this is Map) return this as Map;
    if (this is List) {
      Map<int, dynamic> resultMap = {};
      for (var i = 0; i < (this as List).length; i++) {
        resultMap[i] = (this as List)[i];
      }
      return resultMap;
    }
    return defaultValue;
  }

  /// Checks if the value equals another value.
  ///
  /// - [other]: The value to compare with.
  /// Returns `true` if both values are equal, otherwise `false`.
  bool magicEquals(dynamic other) {
    if (isNull) return other == null;
    return this == other;
  }

  /// Compares the value with another value.
  ///
  /// - [other]: The value to compare with.
  /// Returns an integer less than, equal to, or greater than zero if this value is less than, equal to, or greater than the other value, respectively.
  int magicCompare(dynamic other) {
    if (this is Comparable && other is Comparable) {
      return (this as Comparable).compareTo(other);
    }
    return 0;
  }

  /// Returns the length of the value if it is iterable or a map.
  ///
  /// - [defaultValue]: The value to return if the length cannot be determined or the value is `null`.
  int magicLength({int defaultValue = 0}) {
    if (this is Iterable) return (this as Iterable).length;
    if (this is Map) return (this as Map).length;
    return defaultValue;
  }
}
