package objects;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;

class Minawan extends FlxSprite
{
	// Keybinds
	public var LEFT_BIND = FlxKey.LEFT;
	public var RIGHT_BIND = FlxKey.RIGHT;
	public var PICKUP_BIND = FlxKey.E;
	public var FEED_BIND = FlxKey.SPACE;

	public var score = 0;

	public var movementCutoffs = [0, FlxG.width]; 

	public function new()
	{
		super();
		scale.set(0.4, 0.4);
		loadGraphic("assets/images/minawan.png");
	}

	public function tick()
	{
		if (x < movementCutoffs[0])
		{
			x = movementCutoffs[1];
		}
		if (x > movementCutoffs[1])
		{
			x = movementCutoffs[0];
		}

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