package controller 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author 
	 */
	public class ChangClockEvent extends Event 
	{

		public static const CHANGE_CLOCK_EVENT:String = "CHANGE_CLOCK_EVENT";
		
		public function ChangClockEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{
			super(type, bubbles, cancelable);
			
		}
		
			
		
		
	}

}