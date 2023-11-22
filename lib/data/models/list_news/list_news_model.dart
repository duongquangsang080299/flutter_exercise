import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

part 'list_news_model.freezed.dart';
part 'list_news_model.g.dart';

@freezed
class ListNewsModel with _$ListNewsModel {
  const factory ListNewsModel({
    required String id,
    required String title,
    required DateTime dateTime,
    required TeamModel teamHome,
    required TeamModel teamAway,
    required String result,
    required String image,
    required String video,
  }) = _ListNewsModel;

  factory ListNewsModel.fromJson(Map<String, Object?> json) =>
      _$ListNewsModelFromJson(json);
}
