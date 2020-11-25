import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;
import 'dart:io';
import 'dart:convert';
import '../model/upcoming_response.dart';

class HttpHelper {
  static const String urlKey = 'api_key=6ba036476696b6b1c9765ddb56219ae9';
  static const String urlBase = 'https://api.themoviedb.org/3/movie';
  static const String urlUpcoming = '/upcoming?';
  static const String urlLanguage = '&language=de-DE';
  static const String urlSearchBase = 'https://api.themoviedb.org/3/search/movie?api_key=6ba036476696b6b1c9765ddb56219ae9&query=';
  static const String jsonResultKey = 'results';

  Future<List> getUpcoming() async {
    String upcomingURL = urlBase + urlUpcoming + urlKey + urlLanguage;
    developer.log('$upcomingURL', name: 'HttpHelper');
    http.Response result = await http.get(upcomingURL);
    if(result.statusCode == HttpStatus.ok){
      final Map<String, dynamic> jsonResponse = json.decode(result.body);
      UpcomingResponse upcomingResponse = UpcomingResponse.fromJson(jsonResponse);
      List movies = upcomingResponse.results;
      return movies;
    } else if(result.statusCode == HttpStatus.unauthorized) {
      // Show Snackbar: invalid credentials
      return null;
    } else if(result.statusCode == HttpStatus.internalServerError) {
      // Show Snackbar: machine kaputt
      return null;
    }
  }

}