# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: forgetting to handle exceptions during asynchronous operations. The `bug.dart` file contains code that fetches data from a URL. If the network request fails, it throws an exception. The `bugSolution.dart` file shows how to properly handle this exception.

## Problem

The original code lacks robust error handling. It catches exceptions but doesn't perform any meaningful action, such as displaying an error message to the user or retrying the request. This could lead to unexpected behavior or app crashes.

## Solution

The solution provides a more robust way of handling exceptions, including displaying user-friendly error messages and potentially retrying the network request.  This ensures a more graceful handling of network errors and a better user experience.
