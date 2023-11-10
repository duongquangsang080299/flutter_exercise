import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    required String id,
    required String result,
    required DateTime dateTime,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, Object?> json) =>
      _$HistoryModelFromJson(json);
}
