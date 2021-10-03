package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1454:int;
      
      private var var_1979:int;
      
      private var var_1228:int;
      
      private var var_1980:int;
      
      private var var_105:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1454 = param1.readInteger();
         this.var_1979 = param1.readInteger();
         this.var_1228 = param1.readInteger();
         this.var_1980 = param1.readInteger();
         this.var_105 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1454);
      }
      
      public function get callId() : int
      {
         return this.var_1454;
      }
      
      public function get callerUserId() : int
      {
         return this.var_1979;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1228;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1980;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_105;
      }
   }
}
