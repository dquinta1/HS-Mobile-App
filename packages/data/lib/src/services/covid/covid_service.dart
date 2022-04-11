import 'dart:async';
import 'dart:convert';

import 'package:data_repository/data_repository.dart';
import 'package:http/http.dart' as http;

class CovidService implements IDataRepository {
  @override
  Future<List<Country>> getCountryList() async {
    try {
      final data =
          await http.get(Uri.parse('https://api.covid19api.com/countries'));

      if (data.statusCode != 200) throw Exception();

      final countries = (json.decode(data.body) as List)
          .map((item) => new Country.fromJson(item))
          .toList();

      return countries;
    } catch (e) {
      return List.empty();
    }
  }

  @override
  Future<List<CountrySummary>> getCountrySummary(String slug) async {
    try {
      final data = await http.get(
          Uri.parse('https://api.covid19api.com/total/dayone/country/' + slug));

      if (data.statusCode != 200) throw Exception();

      final summaryList = (json.decode(data.body) as List)
          .map((item) => new CountrySummary.fromJson(item))
          .toList();

      return summaryList;
    } catch (e) {
      return List.empty();
    }
  }

  @override
  Future<GlobalSummary> getGlobalSummary() async {
    try {
      final res =
          await http.get(Uri.parse('https://api.covid19api.com/summary'));
      if (res.statusCode != 200) throw Exception();
      return GlobalSummary.fromJson(jsonDecode(res.body)['Global']);
    } catch (e) {
      return Future.value(null);
    }
  }
}
