```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
    } else {
      // Handle error responses appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network calls
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it based on your app's needs
  }
}
```