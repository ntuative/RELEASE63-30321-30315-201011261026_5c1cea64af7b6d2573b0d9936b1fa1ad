package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1086:int;
      
      private var var_2168:String;
      
      private var var_2169:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1086 = param1.readInteger();
         this.var_2168 = param1.readString();
         this.var_2169 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1086;
      }
      
      public function get requesterName() : String
      {
         return this.var_2168;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2169;
      }
   }
}
