package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2159:Number;
      
      private var var_2160:Number;
      
      private var var_815:Number;
      
      private var var_816:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2159 = param1;
         this.var_2160 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_815 = param1;
         this.var_816 = 0;
      }
      
      public function update() : void
      {
         this.var_815 += this.var_2160;
         this.var_816 += this.var_815;
         if(this.var_816 > 0)
         {
            this.var_816 = 0;
            this.var_815 = this.var_2159 * -1 * this.var_815;
         }
      }
      
      public function get location() : Number
      {
         return this.var_816;
      }
   }
}
