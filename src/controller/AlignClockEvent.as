package controller 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author 
	 */
	public class AlignClockEvent extends Event 
	{
		
		public static const ALIGNCLOCKS:String = "ALIGNCLOCKS";
		
		public function AlignClockEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{
			super(type, bubbles, cancelable);
			
		}
		
	}

}