package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_454:int = 0;
       
      
      private var var_1990:int = 0;
      
      private var var_1365:Dictionary;
      
      private var var_1754:int = 0;
      
      private var var_1755:int = 0;
      
      private var var_2083:Boolean = false;
      
      private var var_2082:int = 0;
      
      private var var_2081:int = 0;
      
      public function Purse()
      {
         this.var_1365 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1990;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1990 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1754;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1754 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1755;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1755 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1754 > 0 || this.var_1755 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2083;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2083 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2082;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2082 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2081;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2081 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1365;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1365 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1365[param1];
      }
   }
}
