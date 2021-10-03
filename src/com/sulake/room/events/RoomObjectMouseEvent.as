package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_251:String = "ROE_MOUSE_CLICK";
      
      public static const const_1575:String = "ROE_MOUSE_ENTER";
      
      public static const const_408:String = "ROE_MOUSE_MOVE";
      
      public static const const_1699:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1562:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1798:String = "";
      
      private var var_2150:Boolean;
      
      private var var_2153:Boolean;
      
      private var var_2146:Boolean;
      
      private var var_2149:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1798 = param2;
         this.var_2150 = param5;
         this.var_2153 = param6;
         this.var_2146 = param7;
         this.var_2149 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1798;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2150;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2153;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2146;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2149;
      }
   }
}
