package states.playstate;

import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import states.playstate.LevelMap;

class GameLevel extends FlxGroup {

  private var levelMap: LevelMap;

  private var backgroundLayer: FlxGroup;
  private var foregroundLayer: FlxGroup;
  private var uiLayer: FlxGroup;

  private var player: Player;

	public function new(levelNumber): Void {
		super();
    loadLevel(levelNumber);
	}
	
	override public function update(elapsed: Float): Void {
		super.update(elapsed);
    checkControls(elapsed);
	}

  private function checkControls(elapsed: Float): Void {
    checkMouse(elapsed);
    checkCollisions(elapsed);
  }

  private function checkCollisions(elapsed: Float): Void {
    if (levelMap != null) {
      FlxG.collide(levelMap.getForegroundLayer(), player);
    }
  }

  private function checkMouse(elapsed: Float): Void {
    #if (!mobile)
      // Mouse not on mobile!
    #end
  }

  private function loadLevel(levelNumber: Int): Void {
    createLayers();

    levelMap = new LevelMap(levelNumber);
    add(levelMap);

    backgroundLayer.add(levelMap.getBackgroundLayer());

    foregroundLayer.add(levelMap.getForegroundLayer());

    player = new Player(100, 100);
    foregroundLayer.add(player);

    FlxG.camera.setScrollBoundsRect(0, 0, levelMap.getForegroundLayer().width, levelMap.getForegroundLayer().height, true);
    FlxG.camera.follow(player, PLATFORMER, 0.3);
  }

  private function createLayers(): Void {
    backgroundLayer = new FlxGroup();
    foregroundLayer = new FlxGroup();
    uiLayer = new FlxGroup();

    add(backgroundLayer);
    add(foregroundLayer);
    add(uiLayer);
  }

  public function isGameOver(): Bool {
    #if debug // This part (cheat) of the code is only active if the -debug parameter is present
      if (FlxG.keys.justPressed.ZERO) {
        return true;
      }
    #end
    // Write your game over check here
    return false;
  }

  public function isLevelComplete(): Bool {
    #if debug // Read above comment
      if (FlxG.keys.justPressed.NINE) {
        return true;
      }
    #end
    // Write your level completion terms here
    return false;
  }

}
