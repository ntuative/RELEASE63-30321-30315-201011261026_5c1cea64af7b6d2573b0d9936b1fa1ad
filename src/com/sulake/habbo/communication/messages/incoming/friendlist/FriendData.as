package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_834:int;
      
      private var var_743:Boolean;
      
      private var var_1589:Boolean;
      
      private var var_574:String;
      
      private var var_1214:int;
      
      private var var_1698:String;
      
      private var var_1700:String;
      
      private var var_1699:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_834 = param1.readInteger();
         this.var_743 = param1.readBoolean();
         this.var_1589 = param1.readBoolean();
         this.var_574 = param1.readString();
         this.var_1214 = param1.readInteger();
         this.var_1698 = param1.readString();
         this.var_1700 = param1.readString();
         this.var_1699 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_834;
      }
      
      public function get online() : Boolean
      {
         return this.var_743;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1589;
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function get categoryId() : int
      {
         return this.var_1214;
      }
      
      public function get motto() : String
      {
         return this.var_1698;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1700;
      }
      
      public function get realName() : String
      {
         return this.var_1699;
      }
   }
}
