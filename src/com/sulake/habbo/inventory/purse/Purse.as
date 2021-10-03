package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1754:int = 0;
      
      private var var_1755:int = 0;
      
      private var var_2104:int = 0;
      
      private var var_2103:Boolean = false;
      
      private var var_2083:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1754 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1755 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2104 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2103 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2083 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1754;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1755;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2104;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2103;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2083;
      }
   }
}
