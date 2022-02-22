part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.fetch() = Fetch;
  const factory NewsEvent.refresh() = Refresh;
  const factory NewsEvent.fetchMore(int index) = FetchMore;
  const factory NewsEvent.seeDetails(String id) = SeeDetails;
}
