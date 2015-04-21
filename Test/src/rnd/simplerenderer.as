package rnd
{
	import mx.events.FlexEvent;
	
	import spark.components.Image;
	import spark.components.LabelItemRenderer;
	import spark.components.RadioButton;
	import spark.components.IItemRenderer;
	
	public class simplerenderer extends LabelItemRenderer
	{
		
		protected var radioButton : RadioButton;
		//protected var label1 : Image; 
		
		
		public function simplerenderer()
		{
			super();
			this.addEventListener(FlexEvent.DATA_CHANGE, onDataChange);
		}
		
		
		
		override protected function createChildren():void{
			super.createChildren();
			this.radioButton = new RadioButton();
			//this.label1 = new Image(); 
			this.addChild(this.radioButton);
			//this.addChild(this.label1);
		}
		
		
		override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void{
			
			
			var radioButtonWidth : Number = this.getElementPreferredWidth(this.radioButton);
			var radioButtonHeight : Number = this.getElementPreferredHeight(this.radioButton);
			
			var imageWidth : Number = this.getElementPreferredWidth(this.radioButton);
			var imageHeight : Number = this.getElementPreferredHeight(this.radioButton);
			
			setElementSize(this.radioButton, radioButtonWidth, radioButtonHeight);    
			//setElementSize(this.label1, imageWidth, imageHeight);
			
			var labelWidth:Number = unscaledWidth-radioButtonWidth*2;
			var labelHeight:Number = getElementPreferredHeight(labelDisplay);;            
			setElementSize(this.labelDisplay, labelWidth, labelHeight);    
			
			this.setElementPosition(this.labelDisplay, radioButtonWidth ,0);
			this.setElementPosition(this.radioButton,this.labelDisplay.x + this.labelDisplay.width ,0);
			//this.setElementPosition(this.label1,0,0);
		}
		
		protected function onDataChange(event:FlexEvent):void{
			this.radioButton.selected = this.selected
		}
		
	}
}