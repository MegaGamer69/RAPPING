package;

import flixel.FlxGame;
import flixel.FlxBasic;
import flixel.FlxState;
import openfl.Assets;
import openfl.Lib;
import openfl.display.Sprite;

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
        start();
    }
    
    public function start():Void {
        addChild(new FlxGame(width, height, intro, zoom, fpsRate, skipSplash, startFull));
    }
}