package gameplay;

import flixel.FlxState;
import flixel.group.FlxSpriteGroup;
import flixel.util.FlxColor;
import objects.Minawan;

class PlayState extends FlxState
{
	var curPlayerCount = 0;
	var curControlsArray:Dynamic;
	var curColourArray:Dynamic;

	public var players:Array<Minawan> = new Array<Minawan>();

	public function new(playerCount:Int, controlsArray:Dynamic, colourArray:Dynamic)
	{
		super();
		curPlayerCount = playerCount;
		curControlsArray = controlsArray;
		curColourArray = colourArray;
	}

	override public function create()
	{
		super.create();

		var index = 0;
		while (index < curPlayerCount)
		{
			var player:Minawan = new Minawan();
			player.y = 600;
			player.LEFT_BIND = curControlsArray[index][0];
			player.RIGHT_BIND = curControlsArray[index][1];
			player.PICKUP_BIND = curControlsArray[index][2];
			player.FEED_BIND = curControlsArray[index][3];
			player.color = FlxColor.fromRGB(curColourArray[index][0], curColourArray[index][1], curColourArray[index][2], 255); // Shitty colour assignment
			players.push(player);
			add(player);
			index += 1;
		}
	}

	override public function update(elapsed)
	{
		super.update(elapsed);

		for (player in players)
		{
			player.tick();
		}
	}
}