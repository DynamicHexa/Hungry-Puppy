package;

import flixel.FlxGame;
import flixel.input.keyboard.FlxKey;
import gameplay.TestLoader;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, TestLoader, 60, 60, true));
	}
}
