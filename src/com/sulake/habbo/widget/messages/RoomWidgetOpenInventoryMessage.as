package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_789:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_973:String = "inventory_effects";
      
      public static const const_946:String = "inventory_badges";
      
      public static const const_1482:String = "inventory_clothes";
      
      public static const const_1258:String = "inventory_furniture";
       
      
      private var var_2245:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_789);
         this.var_2245 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2245;
      }
   }
}
