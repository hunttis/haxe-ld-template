package states.playstate;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class TileCursor extends FlxSprite {

  public function new() {
    super(0, 0);
    makeGraphic(16, 16, FlxColor.GRAY);
    alpha = 0.5;
  }

  override public function update(elapsed: Float): Void {
    super.update(elapsed);
    x = Math.floor(FlxG.mouse.x / 16) * 16;
    y = Math.floor(FlxG.mouse.y / 16) * 16;
  }
}