package states;

import flash.system.System;
import flixel.FlxG;

class Util {
  public static function checkQuitKey(): Void {
    if (FlxG.keys.pressed.ESCAPE) {
      trace('quit!');
      System.exit(0);
    }
  }
}