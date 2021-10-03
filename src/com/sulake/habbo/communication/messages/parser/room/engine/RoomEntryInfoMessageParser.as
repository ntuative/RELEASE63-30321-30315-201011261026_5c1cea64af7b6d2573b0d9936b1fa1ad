package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1444:Boolean;
      
      private var var_1957:int;
      
      private var var_375:Boolean;
      
      private var var_957:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1444;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_1957;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_957;
      }
      
      public function get owner() : Boolean
      {
         return this.var_375;
      }
      
      public function flush() : Boolean
      {
         if(this.var_957 != null)
         {
            this.var_957.dispose();
            this.var_957 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1444 = param1.readBoolean();
         if(this.var_1444)
         {
            this.var_1957 = param1.readInteger();
            this.var_375 = param1.readBoolean();
         }
         else
         {
            this.var_957 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
