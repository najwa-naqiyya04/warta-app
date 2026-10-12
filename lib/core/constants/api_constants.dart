import 'package:flutter_dotenv/flutter_dotenv.dart';

// TODO 2: Setup API Constants
// 1. Definisikan baseUrl NewsAPI
// 2. Buat getter untuk mengambil API Key dari dotenv
// 3. Tentukan country (misal: 'us') dan language (misal: 'en')

class ApiConstants {
  ApiConstants._();

  static const String baseUrl = 'https://newsapi.org/v2'; // Isi dengan base URL NewsAPI
  
  static String get apiKey => (dotenv.maybeGet('NEWS_API_KEY') ?? '').trim();

  // untuk klafsikasi negara yang akan disampaikan beritanya di top-headline
  static const String country = 'us';

  //languange untuk bahsa yang akan di tampilkan ketika proses pencarian 
  static const String language = 'en';

  //untuk memberitahu berapa banyak berita yang akan di tampilkan dalam sekali request
  static const int pageSize = 30;

  //sebagai batas waktu berapa lama api/client dapat terhubunh dengan API
  static const Duration timeout = Duration(seconds: 15);
}
