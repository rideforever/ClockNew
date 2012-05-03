package view 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author 
	 */
	public class AnalogClock extends Sprite  implements Clock 
	{
		
		[Embed(source = "../../bin/skins/AnalogClockSkin.swf", symbol="clock")]
        private var skinClass:Class;
		
		private var skin:Sprite;
		private var hourHand:Sprite;
        private var minutesHand:Sprite;
        private var secondsHand:Sprite;
		
		public function AnalogClock() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, onAddToStage);
			super();
		}
		
		public function onAddToStage(e:Event) : void {
			this.removeEventListener(Event.ADDED_TO_STAGE, this.onAddToStage);
			
			this.skin = new skinClass();
			this.hourHand = this.skin.getChildByName("hours") as Sprite;
			this.minutesHand = this.skin.getChildByName("minutes") as Sprite;
			this.secondsHand = this.skin.getChildByName("seconds") as Sprite;
			
			this.addChild(skin);
			trace("Analog clock init");
		}
		
		public function set time( time:Date):void {
			
			var hour:Number = time.hours;
            hour +=  (1/60 * time.minutes);
            this.hour = hour;

            minutes = time.minutes;
            seconds = time.seconds;
		}
		
		
		
		
		 private function set hour(hour:Number):void
        {
            if (hour > 12)
                hour -= 12;
            hourHand.rotation = 360/12 * hour;
        }

        private function set minutes(minutes:int):void
        {
            minutesHand.rotation = 360/60 * minutes;

        }

        private function set seconds(seconds:int):void
        {
            secondsHand.rotation = 360/60 * seconds;
        }

       		
		
		
		
		
		
	}

}