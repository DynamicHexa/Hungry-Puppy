package gameplay;

import flixel.FlxG;

class FoodManager
{
	public static var foodIds = ["pizza"];

	public function returnRandomFood():String
	{
		return foodIds[FlxG.random.int(0, foodIds.length - 1)];
	}
}