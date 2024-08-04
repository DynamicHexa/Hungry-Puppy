package gameplay;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;

class TestLoader extends FlxState
{
	override public function create()
	{
		FlxG.switchState(new PlayState(1, [[FlxKey.LEFT, FlxKey.RIGHT, FlxKey.SPACE]]));
		super.create();
	}
}