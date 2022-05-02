import 'package:appwrite/appwrite.dart';

class AppwriteClient {
  static final AppwriteClient _instance = AppwriteClient._internal();
  static late final Client appwriteClient;

  factory AppwriteClient() {
    return _instance;
  }

  AppwriteClient._internal() {
    Client client = Client();
    client
        .setEndpoint(
            'https://localhost/v1') // Your Appwrite Endpoint
        .setProject('626fbcda83fa260aa3bf') // Your project ID
        .setSelfSigned(
            status:
                true); // For self signed certificates, only use for development
    appwriteClient = client;
  }
}
