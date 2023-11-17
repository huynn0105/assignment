// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_content.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JokeContentAdapter extends TypeAdapter<JokeContent> {
  @override
  final int typeId = 0;

  @override
  JokeContent read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JokeContent(
      id: fields[0] as String,
      content: fields[1] as String,
      isFunny: fields[2] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, JokeContent obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.isFunny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JokeContentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
