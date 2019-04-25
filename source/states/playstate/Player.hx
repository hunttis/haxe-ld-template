package states.playstate;

import flixel.FlxSprite;
import flixel.FlxObject;
import flixel.util.FlxColor;
import flixel.FlxG;

class Player extends FlxSprite {

  public function new(xLoc: Float, yLoc: Float) {
    super(xLoc, yLoc);
    makeGraphic(16, 16, FlxColor.BLUE);
    acceleration.y = 600;
    maxVelocity.set(200, 400);
    drag.x = maxVelocity.x;
  }

  override public function update(elapsed: Float): Void {
    acceleration.x = 0;
    checkKeys(elapsed);

    // You probably want to do most of the logic before super.update(). This is because after the update, 
    // colliding objects are separated and will no longer be touching.
    super.update(elapsed);
  }

  private function checkKeys(elapsed: Float): Void {
    #if (!mobile) // Keys are not available on mobile

      // FlxG.keys.pressed is true while the key is down
      if (FlxG.keys.pressed.UP && isTouching(FlxObject.FLOOR)) {
        velocity.y = -maxVelocity.y;
      }
      
      // FlxG.keys.justPressed is true only once per press
      if (FlxG.keys.justPressed.DOWN && !isTouching(FlxObject.FLOOR)) {
        velocity.y = maxVelocity.y;
      }

      if (FlxG.keys.pressed.LEFT) {
        acceleration.x = -maxVelocity.x * 2;
        facing = FlxObject.LEFT;
      } else if (FlxG.keys.pressed.RIGHT) {
        acceleration.x = maxVelocity.x * 2;
        facing = FlxObject.RIGHT;
      }

      if (FlxG.keys.justPressed.SPACE) {
        trace("Space!");
      }
    #end
  }

  


}