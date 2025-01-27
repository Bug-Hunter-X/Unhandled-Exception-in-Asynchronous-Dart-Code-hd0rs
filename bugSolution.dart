```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle error responses appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network calls
    print('Error fetching data: $e');
    // Display a user-friendly error message
    // Consider retrying the request after a delay (using a package like retry)
  }
}
```