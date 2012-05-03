package view 
{
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author 
	 */
	public class ControlPanel  extends Sprite
	{
		
		[Embed(source = "../../bin/skins/bits.swf", symbol = "button1")]
		private var buttonClass:Class;
		public  var button:SimpleButton;
		
		public function ControlPanel() 
		{
			this.button = new buttonClass() as SimpleButton;
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			super();
		}
		
		private function onAddedToStage( e:Event ):void {
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);			
			this.addChild( this.button);		
			
		}		
	}
}