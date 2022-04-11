import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hs_mobile_app/home/home.dart';

class CountryView extends StatefulWidget {
  const CountryView({Key? key}) : super(key: key);

  @override
  State<CountryView> createState() => _CountryViewState();
}

class _CountryViewState extends State<CountryView> {
  final TextEditingController _typeAheadController = TextEditingController();
  List<Country>? countryList;
  List<CountrySummary>? summaryList;

  List<String> _getSuggestions(List<Country> list, String query) {
    List<String> matches = [];

    for (final item in list) {
      matches.add(item.country!);
    }

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<HomeCubit>().state;
    countryList = state.countries ?? List.empty();
    summaryList = state.countrySummary ?? List.empty();
    _typeAheadController.text = state.selectedCountry ?? '';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          child: Text(
            'Type the country name',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: _typeAheadController,
            decoration: InputDecoration(
              hintText: 'Type here country name',
              hintStyle: const TextStyle(fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding: const EdgeInsets.all(20),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 24.0, right: 16.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ),
          suggestionsCallback: (pattern) {
            return _getSuggestions(
              countryList ?? List.empty(),
              pattern,
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          itemBuilder: (context, String suggestion) {
            return ListTile(
              title: Text(suggestion),
            );
          },
          onSuggestionSelected: (String suggestion) {
            _typeAheadController.text = suggestion;
            setState(() {
              final slug = countryList!
                  .firstWhere((element) => element.country == suggestion)
                  .slug;
              if (slug != null) {
                context.read<HomeCubit>().setSelectedCountry(suggestion);
                context.read<HomeCubit>().getCountrySummary(slug);
              }
            });
          },
        ),
        const SizedBox(
          height: 8,
        ),
        if (context.read<HomeCubit>().state.countriesLoading ||
            context.read<HomeCubit>().state.summaryLoading)
          const CountryTiles(false)
        else
          CountryStatistics(summaryList!)
      ],
    );
  }
}
