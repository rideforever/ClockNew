package controller 
{
	import model.ClockModel;
	import org.robotlegs.mvcs.Command;
	
	/**
	 * ...
	 * @author 
	 */
	public class StartClock extends Command 
	{
		
		[Inject]
		public var clockModel:ClockModel;
		
		public function StartClock() 
		{
			
		}
		
		override public function execute():void 
		{
			this.clockModel.start();
			super.execute();
		}
	}

}