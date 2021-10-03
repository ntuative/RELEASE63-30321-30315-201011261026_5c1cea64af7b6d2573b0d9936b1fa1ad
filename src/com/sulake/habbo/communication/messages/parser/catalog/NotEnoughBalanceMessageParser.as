package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1438:int = 0;
      
      private var var_1439:int = 0;
      
      private var var_1506:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1438;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1439;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1506;
      }
      
      public function flush() : Boolean
      {
         this.var_1438 = 0;
         this.var_1439 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1438 = param1.readInteger();
         this.var_1439 = param1.readInteger();
         this.var_1506 = param1.readInteger();
         return true;
      }
   }
}
