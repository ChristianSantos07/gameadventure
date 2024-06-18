import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'nivel.dart';

class Jogo extends FlameGame {
  final mundo = Nivel();

  @override
  FutureOr<void> onLoad() async {
    camera = CameraComponent.withFixedResolution(world: mundo, width: 640, height: 368);
    camera.viewfinder.anchor = Anchor.topLeft;

    add(mundo);
    return super.onLoad();
  }

}