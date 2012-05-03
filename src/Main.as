package 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author I am the author
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