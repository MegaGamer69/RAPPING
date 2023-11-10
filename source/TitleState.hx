package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxObject;
import flixel.FlxBasic;
import flixel.util.FlxColor;
import flixel.FlxCamera;

/**
 * @MegaGamerOtario(coder)
 * this game is inspired on Friday Night Funkin'
**/

class TitleState extends FlxState {
    public var camera:FlxCamera = new FlxCamera(0, 0, 0, 0, 0);
    
    override public function create():Void {
        camera.bgColor = FlxColor.BLACK;
    }
    
    override public function update():Void {
        
    }
}