import 'package:data_repository/data_repository.dart';

/// {@template i_data_repository}
/// Storage Interface which manages user CRUD operations.
/// {@endtemplate}
abstract class IDataRepository {
  Future<GlobalSummary> getGlobalSummary();
  Future<List<CountrySummary>> getCountrySummary(String slug);
  Future<List<Country>> getCountryList();
}
