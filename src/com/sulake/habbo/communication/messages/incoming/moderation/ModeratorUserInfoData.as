package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2510:int;
      
      private var var_2505:int;
      
      private var var_743:Boolean;
      
      private var var_2508:int;
      
      private var var_2507:int;
      
      private var var_2509:int;
      
      private var var_2506:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2510 = param1.readInteger();
         this.var_2505 = param1.readInteger();
         this.var_743 = param1.readBoolean();
         this.var_2508 = param1.readInteger();
         this.var_2507 = param1.readInteger();
         this.var_2509 = param1.readInteger();
         this.var_2506 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2510;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2505;
      }
      
      public function get online() : Boolean
      {
         return this.var_743;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2508;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2507;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2509;
      }
      
      public function get banCount() : int
      {
         return this.var_2506;
      }
   }
}
