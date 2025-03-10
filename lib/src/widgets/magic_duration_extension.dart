/// An extension on `Duration` to provide a human-readable format for the duration.
extension MagicDurationExtension on Duration? {
  /// Returns a human-readable string representation of the duration.
  ///
  /// - If the duration is less than 60 minutes, returns the duration in minutes (e.g., "5m").
  /// - If the duration is less than 1 day, returns the duration in hours (e.g., "3h").
  /// - If the duration is less than 1 week, returns the duration in days (e.g., "2d").
  /// - If the duration is less than 1 month, returns the duration in weeks (e.g., "1w").
  /// - If the duration is less than 1 year, returns the duration in months (e.g., "4mo").
  /// - Otherwise, returns the duration in years (e.g., "2y").
  ///
  /// Returns an empty string if the duration is null.
  String get formatDurationAbbreviate {
    final duration = this;
    if (duration == null) return '';

    // Calculate total minutes, hours, days, weeks, months, and years
    int minutes = duration.inMinutes;
    int hours = duration.inHours;
    int days = duration.inDays;
    int weeks = (days / 7).floor();
    int months = (days / 30).floor(); // Approximation for months
    int years = (days / 365).floor(); // Approximation for years

    // Determine the appropriate format based on the duration
    if (minutes < 60) {
      return '${minutes}m';
    } else if (hours < 24) {
      return '${hours}h';
    } else if (days < 7) {
      return '${days}d';
    } else if (weeks < 4) {
      return '${weeks}w';
    } else if (months < 12) {
      return '${months}mo';
    } else {
      return '${years}y';
    }
  }

  /// Returns a human-readable string representation of the duration.
  ///
  /// - If the duration is less than 60 minutes, returns the duration in minutes (e.g., "5 minutes").
  /// - If the duration is less than 1 day, returns the duration in hours (e.g., "3 hours").
  /// - If the duration is less than 1 week, returns the duration in days (e.g., "2 days").
  /// - If the duration is less than 1 month, returns the duration in weeks (e.g., "1 week").
  /// - If the duration is less than 1 year, returns the duration in months (e.g., "4 months").
  /// - Otherwise, returns the duration in years (e.g., "2 years").
  ///
  /// Returns an empty string if the duration is null.
  String get formatDurationFull {
    final duration = this;
    if (duration == null) return '';

    // Calculate total minutes, hours, days, weeks, months, and years
    int minutes = duration.inMinutes;
    int hours = duration.inHours;
    int days = duration.inDays;
    int weeks = (days / 7).floor();
    int months = (days / 30).floor(); // Approximation for months
    int years = (days / 365).floor(); // Approximation for years

    // Determine the appropriate format based on the duration
    if (minutes < 60) {
      return '$minutes minute${minutes > 1 ? 's' : ''}';
    } else if (hours < 24) {
      return '$hours hour${hours > 1 ? 's' : ''}';
    } else if (days < 7) {
      return '$days day${days > 1 ? 's' : ''}';
    } else if (weeks < 4) {
      return '$weeks week${weeks > 1 ? 's' : ''}';
    } else if (months < 12) {
      return '$months month${months > 1 ? 's' : ''}';
    } else {
      return '$years year${years > 1 ? 's' : ''}';
    }
  }
}
