package 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author 
	 */
	
	
	 
	public class Main extends Sprite 
	{
	
		private var clockContext:ClockContext;
		
		public function Main():void 
		{
			this.clockContext = new ClockContext(this);
		}
		
	}
	
}