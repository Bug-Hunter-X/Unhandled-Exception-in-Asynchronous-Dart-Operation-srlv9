```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['someKey']);
    } else {
      //Instead of throwing a generic exception, provide more context.
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Body: ${response.body}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors specifically
    print('Invalid JSON format: $e');
  } on SocketException catch (e) {
    // Handle network errors specifically
    print('Network error: $e');
  } catch (e) {
    // Handle other unexpected exceptions
    print('An unexpected error occurred: $e');
  }
}
```