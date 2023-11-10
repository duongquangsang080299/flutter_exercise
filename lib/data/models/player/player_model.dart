import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'player_model.freezed.dart';
part 'player_model.g.dart';

@freezed
class PlayerModel with _$PlayerModel {
  const factory PlayerModel({
    required String id,
    required String playerName,
    required String avatar,
  
  }) = _PlayerModel;

  factory PlayerModel.fromJson(Map<String, Object?> json) =>
      _$PlayerModelFromJson(json);
}

