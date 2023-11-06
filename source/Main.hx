package;

import flixel.FlxGame;
import flixel.FlxState;
import openfl.Assets;
import openfl.Lib;
import openfl.Sprite;

/**
 *  @MegaGamerOtario(coder)
 *  this game is inspired on Friday Night Funkin'
**/

class Main extends Sprite {
    // a FlxGame settings
    var width:Int = 1280;
    var height:Int = 720;
    var fpsRate:Int = 60;
    var zoom:Float = -1;
    var ratioX:Float = 0;
    var ratioY:Float = 0;
    var skipSplash:Bool = false;
    var startFull:Bool = false;
    
    var intro:Class<FlxState> = IntroState;
    
    public function new() {
        super();
        
        // check the intro state if is not null
        if(state != null) {
            init();
        }
    }
    
    public function main():Void {
        Lib.current.addChild(new Main());
    }
    
    public static function setup():Void {
        addChild(new FlxGame(width, height, intro, zoom, fpsRate, skipSplash, startFull));
        
        var stageW:Int = Lib.current.stageWidth;
        var stageH:Int = Lib.current.stageHeight;
        
        if(zoom == -1) {
            ratioX = stageW / width;
            ratioY = stageH / height;
            
            zoom = Math.min(ratioX, ratioY);
            
            width = Math.ceil(stageW / zoom);
            height = Math.ceil(stageH / zoom);
        }
    }
}