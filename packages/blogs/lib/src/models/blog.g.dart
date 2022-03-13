// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Blog _$$_BlogFromJson(Map<String, dynamic> json) => _$_Blog(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      author: json['author'] as String?,
      body: json['body'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_BlogToJson(_$_Blog instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'author': instance.author,
      'body': instance.body,
      'photo': instance.photo,
    };
