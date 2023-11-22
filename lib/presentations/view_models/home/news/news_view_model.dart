import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_view_model.freezed.dart';
part 'news_view_model.g.dart';

@freezed

/// NewsView model
class NewsViewModel with _$NewsViewModel {
  const factory NewsViewModel({
    String? id,
    required String result,
    required String title,
    required DateTime dateTime,
    required String video,
    required String image,
    required String description,
  }) = _NewsViewModel;

  factory NewsViewModel.fromJson(Map<String, dynamic> json) =>
      _$NewsViewModelFromJson(json);
}
