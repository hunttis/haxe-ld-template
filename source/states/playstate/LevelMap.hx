package states.playstate;

import flixel.addons.editors.tiled.TiledLayer.TiledLayerType;
import flixel.group.FlxGroup;
import flixel.addons.editors.tiled.TiledMap;
import flixel.addons.editors.tiled.TiledTileLayer;
import flixel.tile.FlxTilemap;

class LevelMap extends FlxGroup {

  private var foregroundLayer: FlxTilemap;
  private var backgroundLayer: FlxTilemap;

  public function new(levelNumber: Int) {
    super();
    var tiledData: TiledMap = new TiledMap("assets/level" + levelNumber + ".tmx", "assets/");

    var tileSize = tiledData.tileWidth;
    var mapWidth = tiledData.width;
    var mapHeight = tiledData.height;

    @SuppressWarning("checkstyle:Trace")
    trace("Loaded map with: " + tileSize + " size tiles and " + mapWidth + "x" + mapHeight + " map");

    for (layer in tiledData.layers) {
      if (layer.type == TiledLayerType.TILE) {
        var tileLayer = cast(layer, TiledTileLayer);

        // trace("Loading TILE LAYER: " + layer.name);

        if (tileLayer.name == "foreground") {
          // trace("Creating foreground!");
          foregroundLayer = new FlxTilemap();
          foregroundLayer.loadMapFromCSV(tileLayer.csvData, "assets/foregroundtiles.png", 16, 16, null, 1, 1, 1);
        } else if (tileLayer.name == "background") {
          // trace("Creating background!");
          backgroundLayer = new FlxTilemap();
          backgroundLayer.loadMapFromCSV(tileLayer.csvData, "assets/backgroundtiles.png", 16, 16, null, 65, 65, 65);
        } else {
          @SuppressWarning("checkstyle:Trace")
          trace("Unknown layer, not creating! " + tileLayer.name);
        }
      } else {
        @SuppressWarning("checkstyle:Trace")
        trace("Other layer! " + layer.name);
      }
    }
  }

  public function getForegroundLayer(): FlxTilemap {
    return foregroundLayer;
  }

  public function getBackgroundLayer(): FlxTilemap {
    return backgroundLayer;
  }

}