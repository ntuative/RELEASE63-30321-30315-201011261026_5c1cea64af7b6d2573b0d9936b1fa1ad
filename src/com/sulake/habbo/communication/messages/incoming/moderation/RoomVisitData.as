package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1778:Boolean;
      
      private var _roomId:int;
      
      private var var_852:String;
      
      private var var_2454:int;
      
      private var var_2455:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1778 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_852 = param1.readString();
         this.var_2454 = param1.readInteger();
         this.var_2455 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1778;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_852;
      }
      
      public function get enterHour() : int
      {
         return this.var_2454;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2455;
      }
   }
}
