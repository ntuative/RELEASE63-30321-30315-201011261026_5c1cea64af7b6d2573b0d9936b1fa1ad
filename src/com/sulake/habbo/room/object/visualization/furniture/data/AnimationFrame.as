package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_472:int = -1;
      
      public static const const_1016:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_165:int = 0;
      
      private var var_2469:int = 1;
      
      private var var_916:int = 1;
      
      private var var_1827:int = 1;
      
      private var var_2570:int = -1;
      
      private var var_2572:int = 0;
      
      private var var_2571:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_165 = param3;
         this.var_2571 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2469 = param4;
         if(param5 < 0)
         {
            param5 = const_472;
         }
         this.var_916 = param5;
         this.var_1827 = param5;
         if(param7 >= 0)
         {
            this.var_2570 = param7;
            this.var_2572 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_165;
      }
      
      public function get repeats() : int
      {
         return this.var_2469;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_916;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2571;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_916 < 0)
         {
            return const_472;
         }
         return this.var_1827;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_916 > 0 && param1 > this.var_916)
         {
            param1 = this.var_916;
         }
         this.var_1827 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2570;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2572;
      }
   }
}
