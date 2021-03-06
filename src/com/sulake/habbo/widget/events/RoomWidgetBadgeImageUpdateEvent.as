package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_687:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2410:String;
      
      private var var_2409:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_687,param3,param4);
         this.var_2410 = param1;
         this.var_2409 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2410;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2409;
      }
   }
}
