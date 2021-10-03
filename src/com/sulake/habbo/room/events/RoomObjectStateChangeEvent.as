package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectStateChangeEvent extends RoomObjectEvent
   {
      
      public static const const_169:String = "ROSCE_STATE_CHANGE";
      
      public static const const_580:String = "ROSCE_STATE_RANDOM";
       
      
      private var _param:int = 0;
      
      public function RoomObjectStateChangeEvent(param1:String, param2:int, param3:String, param4:int = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param2,param3,param5,param6);
         this._param = param4;
      }
      
      public function get param() : int
      {
         return this._param;
      }
   }
}
