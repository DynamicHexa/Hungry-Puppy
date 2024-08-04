package gameplay;

import flixel.FlxState;
import flixel.group.FlxSpriteGroup;
import objects.Minawan;

class PlayState extends FlxState
{
	var curPlayerCount = 0;
	var curControlsArray:Dynamic;

	public var players:Array<Minawan> = new Array<Minawan>();

	public function new(playerCount:Int, controlsArray:Dynamic)
	{
		super();
		curPlayerCount = playerCount;
		curControlsArray = controlsArray;
	}

	override public function create()
	{
		super.create();

		var index = 0;
		while (index < curPlayerCount)
		{
			var player:Minawan = new Minawan();
			player.LEFT_BIND = curControlsArray[index][0];
			player.RIGHT_BIND = curControlsArray[index][1];
			player.FEED_BIND = curControlsArray[index][2];
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