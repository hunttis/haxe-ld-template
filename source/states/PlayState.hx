package states;

import flixel.FlxG;
import flixel.FlxState;
import states.playstate.GameLevel;

class PlayState extends FlxState {

  private var currentLevel: GameLevel;
  private var currentLevelNumber: Int = 1;

	override public function create(): Void {
		super.create();
    currentLevel = loadLevel(currentLevelNumber);
    add(currentLevel);
	}
	
	override public function update(elapsed: Float): Void {
		super.update(elapsed);
    Util.checkQuitKey();
	}

  private function loadLevel(levelNumber: Int): GameLevel {
    var level = new GameLevel(levelNumber);
    return level;
  }

}
