package;

import flixel.FlxGame;
import openfl.display.Sprite;
import states.PlayState;
import states.MainMenuState;

class Main extends Sprite {
	public function new() {
		super();
		addChild(new FlxGame(800, 480, MainMenuState, 1, 60, 60, true));
	}
}