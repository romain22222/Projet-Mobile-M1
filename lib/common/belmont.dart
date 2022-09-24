import 'dart:ui';

import 'package:flame/assets.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:projet_mobile_m1/game_manager.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';

class Belmont extends SpriteAnimationComponent with HasGameRef<GameManager> {
  double belmontScaleFactor = 2;
  int state = 0;
  final attack_01 = Images().load('belmont_attack_01.png');
  final attack_02 = Images().load('belmont_attack_02.png');
  final attack_03 = Images().load('belmont_attack_03.png');
  final attack_04 = Images().load('belmont_attack_04.png');
  sprites = [attack_01, attack_02, attack_03, attack_04];
  // final sheet = Images().load("belmont.png");
  late Sprite belmontState;
  late SpriteAnimation a;
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    // final belmontSheet = await Images().load(
    //     'belmont.png'); // Note that you could also use Sprite.load for this
    // SpriteComponent belmontSprite =
    //     SpriteComponent.fromImage(belmontSheet, srcSize: Vector2(402, 478))
    //       ..size = Vector2(402 * belmontScaleFactor, 478 * belmontScaleFactor);
    // add(belmontSprite);

    var spritesheet = SpriteSheet(
        srcSize: Vector2(113, 37), image: await Images().load('belmont.png'));
    final animation = spritesheet.createAnimation(stepTime: 0.1, row: state);
    // belmont = spritesheet.getSprite(0, 0);
    animation.loop = true;
    this.animation = animation;
    this.size = Vector2(113 * belmontScaleFactor, 37 * belmontScaleFactor);
    this.anchor = Anchor.center;
    this.position = gameRef.size / 2;
  }
}
