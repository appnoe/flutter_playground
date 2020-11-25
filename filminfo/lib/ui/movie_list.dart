import 'package:flutter/material.dart';
import '../api/http_helper.dart';
import 'dart:developer' as developer;

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  HttpHelper httpHelper;
  String response;
  List upcomingMovies;
  // Poster: https://image.tmdb.org/t/p/w1280
  // Thumbnail: https://image.tmdb.org/t/p/w92/

  // anzuzeigen:
  // Thumbnail, Titel, Releasedatum, vote_average

  @override
  void initState() {
    httpHelper = HttpHelper();
    getUpcomingFilms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
    );
  }

  Future getUpcomingFilms() async {
    upcomingMovies = List();
    upcomingMovies = await httpHelper.getUpcoming();
    setState(() {
      upcomingMovies = upcomingMovies;
    });
  }
}
