package objects;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;

class Minawan extends FlxSprite
{
	// Keybinds
	public var LEFT_BIND = FlxKey.LEFT;
	public var RIGHT_BIND = FlxKey.RIGHT;
	public var FEED_BIND = FlxKey.SPACE;

	public function new()
	{
		super();
		loadGraphic("assets/images/minawan.png");
	}

	public function tick()
	{
		if (FlxG.keys.checkStatus(LEFT_BIND, PRESSED))
		{
			x -= 10;
			flipX = false;
		}

		if (FlxG.keys.checkStatus(RIGHT_BIND, PRESSED))
		{
			x += 10;
			flipX = true;
		}
	}
}