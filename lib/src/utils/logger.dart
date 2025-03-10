import 'dart:developer';

/// Logger class provides static methods for logging messages with different log levels.
class Logger {
  /// Logs a debug message.
  ///
  /// The [message] parameter is the message to be logged.
  static void debug(String message) {
    log("[DEBUG] $message");
  }
}
