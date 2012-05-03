package view 
{
	import controller.ChangClockEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import model.ClockModel;
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * ...
	 * @author 
	 */
	public class ControlPanelMediator extends Mediator 
	{
		
		[Inject]
		public var clockModel:ClockModel;
		
		[Inject]
		public var controlPanelView:ControlPanel;
		
		public function ControlPanelMediator() 
		{
			super();			
		}
		
		override public function onRegister():void 
		{
			super.onRegister();			
			this.controlPanelView.button.addEventListener(MouseEvent.CLICK, onButtonClick);
		}
		
		private function onButtonClick(e:Event):void {
			this.clockModel.changeClock();
		}
	}

}