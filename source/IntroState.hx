package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxBasic;
import openfl.display.Sprite;
import openfl.Lib;
import flixel.text.FlxText;

/**
 *  @MegaGamerOtario(coder)
 *  this game is inspired on Friday Night Funkin'
**/

class IntroState extends FlxState {
    // the first state starts here
    private var menu:Class<FlxState> = TitleState;
    private var msg:String;
    
    override public function create():Void {
        initIntro("hello!");
    }
    
    override public function update(elapsed:Float):Void {
        
    }
    
    private function skipIntro():Void {
        FlxG.switchTo(menu);
    }
    
    private function initIntro(msgText:String):Void {
        var text:FlxText = new(0, 0, 0, msgText, 8, true);
    }
}