// ActionScript file
package utils
{
	import mx.collections.IList;
	
	import valueObjects.Costumer;
	
	public class DataUtils
	{
	
		public static function transformCostumers(collection:IList):void
		{
			for (var i:int = 0; i < collection.length; i++)
			{
				var obj:Object = collection.getItemAt(i);
				var vo:Costumer = new Costumer(obj);
				collection.setItemAt(vo, i);
			}
		}
	}
}