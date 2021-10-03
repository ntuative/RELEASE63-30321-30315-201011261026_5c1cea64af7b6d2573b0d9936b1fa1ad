package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1188:int = 2;
      
      private static const const_1187:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_278:Array;
      
      private var var_1065:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_278 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1188)
         {
            this.var_278 = new Array();
            this.var_278.push(const_1187);
            this.var_1065 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1065 > 0)
         {
            --this.var_1065;
         }
         if(this.var_1065 == 0)
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
