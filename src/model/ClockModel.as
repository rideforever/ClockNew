package model 
{
	import controller.ClockEvent;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * ...
	 * @author 
	 */
	public class ClockModel extends Actor 
	{
		
		private var timer:Timer;
		private var offsetHour:Number;
		
		public function ClockModel() 
		{
			this.offsetHour = 0;
			super();
			createTimer();
		}
		
		public function start():void {
			this.timer.start();
		}
		
		public function changeClock():void {
			this.offsetHour = Math.ceil( Math.random() * 10 );
			this.onTimer();
		}
		
		public function get time():Date {
			return this.changeDateByOffset( new Date() );
		}
		
		
		private function createTimer(): void{
			this.timer = new Timer(1000, 0);
			this.timer.addEventListener(TimerEvent.TIMER, onTimer);
			
		}
		private function onTimer(e:TimerEvent = void) :void {			
			dispatch(new ClockEvent(ClockEvent.TICK, this.changeDateByOffset(new Date())  ));
		}
		
		
		private function changeDateByOffset(   date:Date ):Date {			
			date.setHours( date.getHours() - this.offsetHour);				
			return date;
		}
		
		
	}

}