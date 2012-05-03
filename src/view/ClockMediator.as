package view 
{
	import controller.ClockEvent;
	import flash.events.Event;
	import flash.sampler.NewObjectSample;
	import model.ClockModel;
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * ...
	 * @author 
	 */
	public class ClockMediator extends Mediator 
	{

		[Inject]
		public var clockModel:ClockModel;
		
		[Inject]
		public var clockView:Clock;
		
		
		
		public function ClockMediator() 
		{
			trace("Clock Mediator")
			super();
		}
		
		override public function onRegister():void 
		{
			super.onRegister();
			
			eventMap.mapListener( eventDispatcher, ClockEvent.TICK, onClockTick);
			eventMap.mapListener( this.clockView, Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onClockTick(e:ClockEvent):void {
			var newTime:Date = e.time;
			
			this.updateView( newTime );
		}
		private function onAddedToStage(e:Event):void {
			this.updateView(  this.clockModel.time);
		}
		
		
		private function updateView( newTime:Date ):void {
			this.clockView.time = newTime;
		}
		
	}

}