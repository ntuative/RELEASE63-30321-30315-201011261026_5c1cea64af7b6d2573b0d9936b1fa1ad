package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_716:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1057:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_1950:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_716);
         this.var_1950 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_1950;
      }
   }
}
