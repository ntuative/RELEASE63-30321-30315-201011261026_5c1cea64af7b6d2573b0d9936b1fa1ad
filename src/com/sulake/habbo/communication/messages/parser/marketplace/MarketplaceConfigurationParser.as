package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1296:Boolean;
      
      private var var_2126:int;
      
      private var var_1561:int;
      
      private var var_1560:int;
      
      private var var_2127:int;
      
      private var var_2124:int;
      
      private var var_2123:int;
      
      private var var_2125:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1296;
      }
      
      public function get commission() : int
      {
         return this.var_2126;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1561;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1560;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2124;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2127;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2123;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2125;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1296 = param1.readBoolean();
         this.var_2126 = param1.readInteger();
         this.var_1561 = param1.readInteger();
         this.var_1560 = param1.readInteger();
         this.var_2124 = param1.readInteger();
         this.var_2127 = param1.readInteger();
         this.var_2123 = param1.readInteger();
         this.var_2125 = param1.readInteger();
         return true;
      }
   }
}
