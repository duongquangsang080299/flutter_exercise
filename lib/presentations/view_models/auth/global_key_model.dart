import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class GlobalKeyConverter
    implements JsonConverter<GlobalKey<FormState>, Object> {
  const GlobalKeyConverter();
  @override
  GlobalKey<FormState> fromJson(Object? object) {
    return object as GlobalKey<FormState>;
  }

  @override
  Object toJson(GlobalKey<FormState> key) => key;
}
