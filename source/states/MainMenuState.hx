package states;

import flixel.FlxState;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class MainMenuState extends FlxState {

  private var titleText: FlxText;
  private var startText: FlxText;

  override public function create(): Void {
    super.create();
    createTitle();
    createInstructions();
  }

  override public function update(elapsed: Float): Void {
    super.update(elapsed);
    Util.checkQuitKey();
    if (FlxG.keys.justPressed.SPACE) {
      FlxG.switchState(new PlayState());
    }
  }

  private function createTitle(): Void {
    titleText = new FlxText(FlxG.width / 2, 100, "Game", 64);
    titleText.x -= titleText.width / 2;
    titleText.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.GRAY, 2, 1);
    add(titleText);
  }

  private function createInstructions(): Void {
    startText = new FlxText(FlxG.width / 2, 300, "Press space to start", 16);
    startText.x -= startText.width / 2;
    add(startText);
  }

}