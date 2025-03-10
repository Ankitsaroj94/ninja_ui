import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:ninja_ui/ninja_ui.dart';

/// Extension methods for handling nullable [String] objects.
extension NinjaUiNullStringExtension on String? {
  /// Checks if the nullable [String] is neither null nor empty.
  bool get isNotNullAndNotEmpty => this != null && this!.isNotEmpty;

  /// Returns a non-null, trimmed version of the string.
  ///
  /// - If the string is `null` or empty, the function returns:
  ///   - `"Lorem Ipsum"` when in debug mode and `nonEmptyInDebug` is `true`.
  ///   - The provided [defaultValue] in release mode or when `nonEmptyInDebug` is `false`.
  /// - If the string is not `null` or empty, the trimmed version of the string is returned.
  String validString({String defaultValue = '', bool nonEmptyInDebug = false}) {
    if (this == null || this!.trim().isEmpty) {
      return (nonEmptyInDebug && kDebugMode)
          ? 'Lorem Ipsum'
          : defaultValue.trim();
    }
    return this!.trim();
  }

  /// Adds a comma to the end of the [String].
  ///
  /// Returns an empty string if the [String] is null or empty.
  String get withComma => (this == null || this!.isEmpty) ? '' : '$this ,';

  /// Adds a prefix to the start of the [String].
  ///
  /// Returns the [placeholder] if the [String] is null or empty.
  ///
  /// [prefix] is the string to be added before the current [String].
  /// [placeholder] is returned if the [String] is null.
  String withPrefix({required String prefix, String placeholder = ''}) =>
      (this == null || this!.isEmpty) ? placeholder : '$prefix$this';

  /// Adds a suffix to the end of the [String].
  ///
  /// Returns the [placeholder] if the [String] is null or empty.
  ///
  /// [suffix] is the string to be added after the current [String].
  /// [placeholder] is returned if the [String] is null.
  String withSuffix({required String suffix, String placeholder = ''}) =>
      (this == null || this!.isEmpty) ? placeholder : '$this$suffix';

  /// Converts the [String] to a [DateTime] object.
  ///
  /// Returns null if the [String] is null, empty, or cannot be parsed into a [DateTime].
  DateTime? get toDateTime =>
      (this == null || this!.isEmpty) ? null : DateTime.tryParse(this!);

  /// Adds a line break to the end of the [String].
  ///
  /// Returns an empty string if the [String] is null or empty.
  String withLineBreak() => (this == null || this!.isEmpty) ? '' : '$this\n';

  /// An extension on `String?` to parse a string into a `DateTime?`
  /// using a custom date format.
  ///
  /// Example usage:
  /// ```dart
  /// String? dateString = "10 Aug 2024 08:00 AM";
  /// String dateFormat = "d MMM yyyy hh:mm a";/// An extension on `String?` to parse a string into a `DateTime?`
  /// using a custom date format.
  ///
  /// Example usage:
  /// ```dart
  /// String? dateString = "10 Aug 2024 08:00 AM";
  /// String dateFormat = "d MMM yyyy hh:mm a";
  /// DateTime? parsedDate = dateString.parseDate(dateFormat);
  /// print(parsedDate); // Output: 2024-08-10 08:00:00.000Z
  /// ```
  ///
  /// If the string is null or the format is invalid, this method returns null.
  /// DateTime? parsedDate = dateString.parseDate(dateFormat);
  /// print(parsedDate); // Output: 2024-08-10 08:00:00.000Z
  /// ```
  ///
  /// If the string is null or the format is invalid, this method returns null.
  DateTime? parseDate(String dateFormat) =>
      this == null ? null : DateFormat(dateFormat).tryParse(this!);

  /// Replaces the [String] with a [placeholder] if it is null or empty.
  ///
  /// [placeholder] is returned if the [String] is null or empty.
  String replaceIfEmptyOrNull(String placeholder) =>
      (this == null || this!.isEmpty) ? placeholder : this!;

  /// Converts the [String] to a [Text] widget.
  ///
  /// Displays the [String] in a [Text] widget with customizable styling and layout options.
  ///
  /// [placeholder] is shown if the [String] is null.
  /// [style] applies styling to the [Text].
  /// [overflow], [maxLines], [textAlign], [locale], [selectionColor], [semanticsLabel],
  /// [softWrap], [strutStyle], [textDirection], [textHeightBehavior], [textScaleFactor],
  /// [textWidthBasis], [textScaler] define the appearance and behavior of the [Text].
  /// [topMargin], [bottomMargin], [leftMargin], [rightMargin] specify margins for the [Text].
  /// [marginIfNull] determines if margin should be applied if the [String] is null.
  /// [showPlaceholderIfEmpty] determines if the placeholder should be shown if the [String] is empty.
  /// [ipsumInDebug] determines if "Lorem Ipsum" should be displayed in debug mode when the [String] is null.
  Widget toText({
    String? placeholder,
    TextStyle? style,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    Locale? locale,
    Color? selectionColor,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    @Deprecated('This is a deprecated Argument, use textScaleFactor instead')
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
    TextScaler? textScaler,
    double topMargin = 0.0,
    double bottomMargin = 0.0,
    double leftMargin = 0.0,
    double rightMargin = 0.0,
    bool marginIfNull = false,
    bool showPlaceholderIfEmpty = false,
    bool ipsumInDebug = false,
  }) {
    final EdgeInsets margin = EdgeInsets.fromLTRB(
      leftMargin,
      topMargin,
      rightMargin,
      bottomMargin,
    );
    String? textToShow = this ?? placeholder;
    if (kDebugMode &&
        (textToShow == null || textToShow.isEmpty) &&
        ipsumInDebug) {
      textToShow = 'Lorem Ipsum';
    }

    if ((textToShow == null || textToShow.isEmpty) && !showPlaceholderIfEmpty) {
      return Container(
        margin: marginIfNull ? margin : null,
        child: const SizedBox.shrink(),
      );
    }

    return Container(
      margin: margin,
      child: Text(
        textToShow!,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        selectionColor: selectionColor,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        textHeightBehavior: textHeightBehavior,
        // ignore: deprecated_member_use
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        textScaler: textScaler,
      ),
    );
  }

  /// Formats the nullable [String] as a date string using the specified format.
  ///
  /// Converts the current [String] to a [DateTime] object, then formats it according to the [format] string.
  /// If the [String] is null or cannot be parsed into a [DateTime], the [placeholder] is returned.
  ///
  /// [format] specifies the date format. Defaults to 'dd MMM, yyyy'.
  /// [placeholder] is returned if the [String] is null or cannot be parsed into a [DateTime]. Defaults to an empty string.
  ///
  /// Returns the formatted date string or [placeholder] if the [String] is null or invalid.
  String formatAsDate({
    String format = 'dd MMM, yyyy',
    String placeholder = '',
  }) =>
      (this == null || toDateTime == null)
          ? placeholder
          : toDateTime!.format(format: format, placeholder: placeholder);

  /// Extracts the initials from the [String].
  ///
  /// The initials are derived from the first two words of the [String], if available.
  /// Non-alphanumeric characters are removed before extracting initials.
  ///
  /// Returns an empty string if the [String] is empty or null.
  String get initials {
    if (this == null || this!.isEmpty) return '';
    String withoutSPC = this!.replaceAll(RegExp(r'[^\w\s]'), '');
    List<String> words = withoutSPC.trim().split(RegExp(r'\s+'));
    String initials = '';
    if (words.isNotEmpty) {
      initials += words[0][0];
      if (words.length > 1) initials += words[1][0];
    }
    return initials.toUpperCase();
  }

  /// Converts the nullable [String] to a list of strings split by [delimiter] (Default ,).
  ///
  /// Returns an empty list if the [String] is null or empty.
  ///
  /// Uses the [validString] method to handle null or empty strings before splitting
  /// the resulting non-null string by commas.
  ///
  /// Returns a list of substrings obtained by splitting the [String] by commas.
  List<String> toSeparatedList({String delimiter = ','}) =>
      validString().split(delimiter);

  /// Converts the current string representation of a color to a [Color] object.
  ///
  /// If the string is null or cannot be parsed, it returns the provided
  /// [placeholder] color (default is [Colors.white]).
  ///
  /// Parameters:
  /// - [placeholder]: The color to return if parsing fails. Defaults to white.
  ///
  /// Returns:
  /// - A [Color] object corresponding to the parsed value of the string,
  ///   or the placeholder color if the string is null or invalid.
  Color toColor({Color placeholder = Colors.white}) {
    if (this == null) return placeholder;
    return Color(int.tryParse(this!) ?? placeholder.toColorInt);
  }
}

/// Extension methods for non-nullable [String] objects.
extension MagicStringExtension on String {
  /// Truncates the [String] to a specified length and adds a suffix.
  ///
  /// If the length of the [String] is less than [length], returns the [String] unchanged.
  ///
  /// [length] is the maximum length of the truncated [String].
  /// [suffix] is added to the end of the truncated [String]. Defaults to "...".
  String forceElapse({required int length, String suffix = '...'}) =>
      (this.length < length)
          ? this
          : '${substring(0, length).split(' ').first}$suffix';

  /// Converts the [String] to a [TimeOfDay] object.
  ///
  /// Parses the [String] representing a time, optionally including 'AM' or 'PM'.
  /// Returns null if the [String] cannot be parsed into a [TimeOfDay].
  TimeOfDay? get toTime {
    if (isEmpty) {
      return null;
    }

    try {
      final trimmedString = trim().toLowerCase();
      final is12HourFormat =
          trimmedString.contains('am') || trimmedString.contains('pm');
      final parts = is12HourFormat ? trimmedString.split(' ') : [trimmedString];
      final timePart = parts[0];
      final period = is12HourFormat && parts.length > 1 ? parts[1] : '';

      final timeParts = timePart.split(':');
      if (timeParts.length < 2) return null;

      int hour = int.tryParse(timeParts[0]) ?? 0;
      int minute = int.tryParse(timeParts[1].substring(0, 2)) ?? 0;

      if (is12HourFormat) {
        if (period == 'pm' && hour != 12) {
          hour += 12;
        } else if (period == 'am' && hour == 12) {
          hour = 0;
        }
      }

      return TimeOfDay(hour: hour, minute: minute);
    } catch (e) {
      return null;
    }
  }

  /// Converts the [String] representing time to a formatted time string.
  ///
  /// Converts the [String] to a [TimeOfDay] object and formats it according to the provided [format].
  ///
  /// [format] specifies the format of the time string. Defaults to 'hh:mm a'.
  /// Returns an empty string if the [String] cannot be converted to a [TimeOfDay].
  String toTimeString({String format = 'hh:mm a'}) {
    if (toTime == null) return '';

    final now = DateTime.now();
    final dateTime = DateTime(
      now.year,
      now.month,
      now.day,
      toTime!.hour,
      toTime!.minute,
    );

    return DateFormat(format).format(dateTime);
  }

  /// Converts a `String` URL from HTTP to HTTPS if it starts with 'http:'.
  ///
  /// If the URL starts with 'http:', it replaces 'http:' with 'https:'.
  /// If the URL already starts with 'https:' or does not start with 'http:', it returns the URL as-is.
  ///
  /// - If the app is in debug mode and [ignoreInDebugMode] is `true`, the method returns the original URL without modification.
  ///
  /// - [ignoreInDebugMode]: If `true`, the conversion to HTTPS is ignored when the app is in debug mode. Defaults to `true`.
  ///
  /// Returns:
  /// - A `String` URL with 'http:' replaced by 'https:', or the original URL if no conversion is applied.
  String toHttps({bool ignoreInDebugMode = false}) {
    if (kDebugMode && ignoreInDebugMode) return this;
    return (startsWith('http:')) ? 'https${substring(4)}' : this;
  }

  /// Retrieves the status color corresponding to the [String].
  ///
  /// Uses [MagicStatusColors.statusColors] to find a matching color.
  /// If no matching color is found, defaults to a transparent color.
  Color get toStatusColor =>
      NinjaUiStatusColors.statusColors[this] ??
      NinjaUiStatusColors.statusColors['default'] ??
      Colors.transparent;

  /// Retrieves a color from a map based on the current [String] value.
  ///
  /// Searches for the current [String] value as a key in the provided [colorMap].
  /// Defaults to the color associated with the key 'default' if not found.
  /// If 'default' is also not found, returns [Colors.transparent].
  ///
  /// [colorMap] is a map where keys are status labels and values are [Color] objects.
  ///
  /// Returns the color corresponding to the current [String] value or [Colors.transparent] if not found.
  Color toMyStatusColor(Map<String, Color> colorMap) =>
      colorMap[this] ?? colorMap['default'] ?? Colors.transparent;
}
