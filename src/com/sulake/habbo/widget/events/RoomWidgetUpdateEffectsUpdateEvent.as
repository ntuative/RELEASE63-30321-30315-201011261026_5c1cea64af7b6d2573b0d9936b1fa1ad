package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_788:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_225:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_788,param2,param3);
         this.var_225 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_225;
      }
   }
}
