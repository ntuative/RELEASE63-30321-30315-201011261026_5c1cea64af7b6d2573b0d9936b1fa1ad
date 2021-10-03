package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_595:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1982:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_595);
         this.var_1982 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1982;
      }
   }
}
