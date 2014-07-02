package tests 
{
	import asunit.textui.TestRunner;
	import flash.display.Sprite;
	import flash.events.Event;
	import plugin.math.algebra.AVector;
	import tests.MathTests;
	
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public class Main extends Sprite 
	{
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			var unitTests: TestRunner = new TestRunner();
			stage.addChild( unitTests );
			unitTests.start( MathTests, null, TestRunner.SHOW_TRACE );
			
		}
		
	}

}