import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';

class Nivel extends World{
  late TiledComponent nivel;

  @override
  FutureOr<void> onLoad() async {
    nivel = await TiledComponent.load('nivel01.tmx', Vector2.all(16));
    add(nivel);

    return super.onLoad();
  }

}