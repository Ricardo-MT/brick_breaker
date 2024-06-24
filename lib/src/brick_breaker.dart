import 'package:brick_breaker/src/utils.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'components/components.dart';

class BrickBreaker extends FlameGame {
  BrickBreaker()
      : super(
          camera: CameraComponent.withFixedResolution(
            width: GameConfig.gameWidth,
            height: GameConfig.gameHeight,
          ),
        );
  double get width => size.x;
  double get height => size.y;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    camera.viewfinder.anchor = Anchor.topLeft;
    world.add(BrickBreakerGame());
  }
}
