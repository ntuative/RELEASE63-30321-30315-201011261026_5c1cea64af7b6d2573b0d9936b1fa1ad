package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1429:int;
      
      private var var_1753:int;
      
      private var var_1919:int;
      
      private var var_1428:int;
      
      private var var_1180:int;
      
      private var var_2410:String = "";
      
      private var var_2576:String = "";
      
      private var var_2575:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1429 = param1.readInteger();
         this.var_2410 = param1.readString();
         this.var_1753 = param1.readInteger();
         this.var_1919 = param1.readInteger();
         this.var_1428 = param1.readInteger();
         this.var_1180 = param1.readInteger();
         this.var_2575 = param1.readInteger();
         this.var_2576 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1429;
      }
      
      public function get points() : int
      {
         return this.var_1753;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1919;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1428;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1180;
      }
      
      public function get badgeID() : String
      {
         return this.var_2410;
      }
      
      public function get achievementID() : int
      {
         return this.var_2575;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2576;
      }
   }
}
