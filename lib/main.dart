import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'components/jogo.dart';

void main() async {
  // Garante que todos nossos widgets sejam carregados antes do jogo iniciar
  WidgetsFlutterBinding.ensureInitialized();

  // Preencher a tela do dipositivo
  await Flame.device.fullScreen();

  Jogo jogo = Jogo();
  runApp(GameWidget(game: jogo));
}
