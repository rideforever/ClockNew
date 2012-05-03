package  
{
	import controller.AddClocks;
	import controller.AlignClocks;
	import controller.StartClock;
	import flash.display.DisplayObjectContainer;
	import model.ClockModel;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	import view.AnalogClock;
	import view.Clock;
	import view.ClockMediator;
	import view.ControlPanel;
	import view.ControlPanelMediator;
	import view.DigitalClock;
	
	/**
	 * ...
	 * @author 
	 */
	public class ClockContext extends Context 
	{
		
		public function ClockContext(contextView:DisplayObjectContainer = null, autoStartup:Boolean = true)
        {
            super(contextView, autoStartup);
        }		
			
		override public function startup():void 
		{
			
			trace("startup void");
			
			commandMap.mapEvent( ContextEvent.STARTUP_COMPLETE, AddClocks);
			commandMap.mapEvent( ContextEvent.STARTUP_COMPLETE, AlignClocks);
			commandMap.mapEvent( ContextEvent.STARTUP_COMPLETE, StartClock);
			
			
			injector.mapSingleton(ClockModel);
			
			mediatorMap.mapView( Main, AppMediator);
			mediatorMap.createMediator( contextView );
			
			mediatorMap.mapView( AnalogClock, ClockMediator, Clock);
			mediatorMap.mapView( DigitalClock, ClockMediator, Clock);
			mediatorMap.mapView( ControlPanel, ControlPanelMediator);
			
			
			super.startup();
		}
		
	}

}