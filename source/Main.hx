package;

import flixel.FlxGame;
import openfl.display.Sprite;
import states.PlayState;
import states.MainMenuState;

class Main extends Sprite {

  private var startWithMenu: Bool = true;

  public function new() {
    super();

    if (startWithMenu) {
      addChild(new FlxGame(800, 480, PlayState, 1, 60, 60, true));
    } else {
      addChild(new FlxGame(800, 480, MainMenuState, 1, 60, 60, true));
    }
  }
}