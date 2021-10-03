package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2068:int;
      
      private var var_2069:int;
      
      private var var_2199:String;
      
      private var var_2198:int;
      
      private var var_2200:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2068 = param1;
         this.var_2069 = param2;
         this.var_2199 = param3;
         this.var_2198 = param4;
         this.var_2200 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2068,this.var_2069,this.var_2199,this.var_2198,int(this.var_2200)];
      }
      
      public function dispose() : void
      {
      }
   }
}
