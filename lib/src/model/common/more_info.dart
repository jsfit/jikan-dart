library more_info;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'more_info.g.dart';

abstract class MoreInfo implements Built<MoreInfo, MoreInfoBuilder> {
  MoreInfo._();

  factory MoreInfo([updates(MoreInfoBuilder b)]) = _$MoreInfo;

  @BuiltValueField(wireName: 'moreinfo')
  @nullable
  String get moreinfo;

  String toJson() {
    return json.encode(serializers.serializeWith(MoreInfo.serializer, this));
  }

  static MoreInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        MoreInfo.serializer, json.decode(jsonString));
  }

  static Serializer<MoreInfo> get serializer => _$moreInfoSerializer;
}
