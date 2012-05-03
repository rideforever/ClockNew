package controller 
{
	import org.robotlegs.mvcs.Command;
	import view.AnalogClock;
	import view.ControlPanel;
	import view.DigitalClock;
	
	/**
	 * ...
	 * @author 
	 */
	public class AddClocks extends Command 
	{
		
		override public function execute():void 
		{
			
			contextView.addChild(new AnalogClock());
			contextView.addChild(new DigitalClock());
			
			contextView.addChild(new ControlPanel());
		}
		
	}

}