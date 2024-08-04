package gameplay;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;

class TestLoader extends FlxState
{
	override public function create()
	{
		FlxG.switchState(new PlayState(2, [
			[FlxKey.A, FlxKey.D, FlxKey.E, FlxKey.Q],
			[FlxKey.LEFT, FlxKey.RIGHT, FlxKey.DOWN, FlxKey.UP]
		], [[140, 255, 0], [140, 0, 255]]));
		super.create();
	}
}