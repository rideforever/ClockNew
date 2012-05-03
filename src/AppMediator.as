package  
{
	import controller.AlignClockEvent;
	import flash.display.Sprite;
	import flash.events.Event;
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * ...
	 * @author 
	 */
	public class AppMediator extends Mediator 
	{
		
		[Inject]
		public var view:Main;
		
		
		public function AppMediator() 
		{
			super();
			
			trace("app mediator init");
		}
		
		override public function onRegister():void 
		{
			super.onRegister();
			trace("app mediator on register");
			eventMap.mapListener( eventDispatcher, AlignClockEvent.ALIGNCLOCKS, this.alignChildren);
		}
		
		private function alignChildren( e:Event ):void {
			
			trace( "AppMeidator align children:" + contextView.numChildren);
			
			var i:int;
			var sp:Sprite;
			
			for (i = 0; i < contextView.numChildren; i++) {
				sp = contextView.getChildAt(i) as Sprite;
				sp.x = (contextView.stage.width ) / 2;		// centering
				sp.y = i * 250;	
				
			}	
			
		}
	}

}