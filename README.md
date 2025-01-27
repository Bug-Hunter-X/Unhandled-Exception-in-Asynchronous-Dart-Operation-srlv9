# Unhandled Exception in Asynchronous Dart Operation

This repository demonstrates a common error in Dart: insufficient exception handling in asynchronous operations involving network requests and JSON decoding. The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a more robust solution.

## Bug

The primary issue lies in the handling of potential exceptions. While a `try-catch` block is present, simply printing the error is insufficient for production-level applications.  Exceptions should be handled gracefully, providing user-friendly messages or logging detailed error information for debugging.