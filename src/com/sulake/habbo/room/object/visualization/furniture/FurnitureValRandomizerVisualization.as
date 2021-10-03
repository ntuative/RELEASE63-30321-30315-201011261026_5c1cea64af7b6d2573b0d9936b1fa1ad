package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_847:int = 20;
      
      private static const const_542:int = 10;
      
      private static const const_1197:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_278:Array;
      
      private var var_700:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_278 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_700)
            {
               this.var_700 = true;
               this.var_278 = new Array();
               this.var_278.push(const_1197);
               this.var_278.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_542)
         {
            if(this.var_700)
            {
               this.var_700 = false;
               this.var_278 = new Array();
               if(_direction == 2)
               {
                  this.var_278.push(const_847 + 5 - param1);
                  this.var_278.push(const_542 + 5 - param1);
               }
               else
               {
                  this.var_278.push(const_847 + param1);
                  this.var_278.push(const_542 + param1);
               }
               this.var_278.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
