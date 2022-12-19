import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


String homeUrl = "https://api.tvmaze.com/search/shows?q=pokemon";
String accessToken = '';


Future<http.Response> homeRequest() async {
  return http.get(
    Uri.parse(homeUrl),
  );
}

Future<void> saveTokenOnMemory() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setString("zutricsToken", accessToken);
}

Future<String> getTokenFromMemory() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  accessToken = prefs.getString("zutricsToken") ?? "";

  return accessToken;
}
