package controller 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author 
	 */
	public class ClockEvent extends Event 
	{

		public static const START:String = "START";
		public static const TICK:String = "TICK";
		
		public var time:Date;
		
		public function ClockEvent(type:String, time:Date=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.time = time;
			super(type, bubbles, cancelable);
		}
		
	}

}