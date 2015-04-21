// ActionScript file
package valueObjects
{
	[Bindable]
	public class Costumer
	{
		public var costumerId:int;
		public var firstname:String;
		public var lastname:String;
		public var street:String;
		public var city:String;

		
		public function Costumer(obj:Object=null)
		{
			if (obj != null)
			{
				this.costumerId = int(obj.costumerId);
				this.firstname = obj.firstname;
				this.lastname = obj.lastname;
				this.street = obj.street;
				this.city = obj.city;
			}
		}
	}
}