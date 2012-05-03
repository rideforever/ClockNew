package view 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author 
	 */
	public class DigitalClock extends Sprite  implements Clock 
	{
		
		[Embed(source = "../../bin/skins/DigitalClockSkin.swf", symbol="clock")]
        private var skinClass:Class;
		
		private var skin:Sprite;
		private var hourHand:Sprite;
        private var minutesHand:Sprite;
        private var secondsHand:Sprite;
		
		public function DigitalClock() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, onAddToStage);
		}
		
		public function onAddToStage(e:Event) : void {
			
			this.removeEventListener(Event.ADDED_TO_STAGE, this.onAddToStage);
			
			this.skin = new skinClass();
			this.hourHand = this.skin.getChildByName("hours") as Sprite;
			this.minutesHand = this.skin.getChildByName("minutes") as Sprite;
			this.secondsHand = this.skin.getChildByName("seconds") as Sprite;
			
			this.addChild(skin);
			trace("Digital  clock init");
		}
		
		 private function set hour(hour:int):void
        {
            setDigits(hourHand, hour);
        }

        private function setDigits(digits:Sprite, n:int):void
        {
            var dec:MovieClip = digits.getChildByName("dec") as MovieClip;
            var uni:MovieClip = digits.getChildByName("uni") as MovieClip;

            dec.gotoAndStop(int(n/10) + 1);
            uni.gotoAndStop(int(n%10) + 1);

        }

        private function set minutes(minutes:int):void
        {
            setDigits(minutesHand, minutes);
        }

        private function set seconds(seconds:int):void
        {
            setDigits(secondsHand, seconds);
        }

        public function set time(time:Date):void
        {
            hour = time.hours;
            minutes = time.minutes;
            seconds = time.seconds;
        }
       		
		
		
		
		
		
	}

}