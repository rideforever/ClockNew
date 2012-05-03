package controller 
{
	import org.robotlegs.mvcs.Command;
	
	/**
	 * ...
	 * @author 
	 */
	public class AlignClocks extends Command 
	{			
		
		public function AlignClocks() 
		{
			
		}
		
		override public function execute():void 
		{
			eventDispatcher.dispatchEvent( new AlignClockEvent( AlignClockEvent.ALIGNCLOCKS));
			super.execute();
		}
		
	}

}