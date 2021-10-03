package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_847:int = 20;
      
      private static const const_542:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_278:Array;
      
      private var var_700:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_278 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_700)
            {
               this.var_700 = true;
               this.var_278 = new Array();
               this.var_278.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_700)
            {
               this.var_700 = false;
               this.var_278 = new Array();
               this.var_278.push(const_847);
               this.var_278.push(const_542 + param1);
               this.var_278.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_278.length > 0)
            {
               super.setAnimation(this.var_278.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
