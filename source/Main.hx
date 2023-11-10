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
    var fpsRate:Int = 60;
    var ratioX:Float = 0;
    var ratioY:Float = 0;
    var skipSplash:Bool = false;
    var startFull:Bool = false;
    
    var intro:Class<FlxState> = IntroState;
    
    public function new() {
        super(new Main());
        start();
    }
    
    public function start():Void {
        addChild(new FlxGame(1280, 720, intro, 0, fpsRate, skipSplash, startFull));
    }
}