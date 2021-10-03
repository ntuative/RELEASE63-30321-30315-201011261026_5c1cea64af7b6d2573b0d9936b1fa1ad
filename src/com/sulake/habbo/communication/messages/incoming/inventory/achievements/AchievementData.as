package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1429:int;
      
      private var var_258:String;
      
      private var var_2379:int;
      
      private var var_1919:int;
      
      private var var_1428:int;
      
      private var var_2380:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1429 = param1.readInteger();
         this.var_258 = param1.readString();
         this.var_2379 = param1.readInteger();
         this.var_1919 = param1.readInteger();
         this.var_1428 = param1.readInteger();
         this.var_2380 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_258;
      }
      
      public function get level() : int
      {
         return this.var_1429;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2379;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1919;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1428;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2380;
      }
   }
}
