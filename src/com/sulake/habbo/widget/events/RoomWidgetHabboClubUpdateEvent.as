package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_237:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2171:int = 0;
      
      private var var_2174:int = 0;
      
      private var var_2172:int = 0;
      
      private var var_2173:Boolean = false;
      
      private var var_2055:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_237,param6,param7);
         this.var_2171 = param1;
         this.var_2174 = param2;
         this.var_2172 = param3;
         this.var_2173 = param4;
         this.var_2055 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2171;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2174;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2172;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2173;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2055;
      }
   }
}
