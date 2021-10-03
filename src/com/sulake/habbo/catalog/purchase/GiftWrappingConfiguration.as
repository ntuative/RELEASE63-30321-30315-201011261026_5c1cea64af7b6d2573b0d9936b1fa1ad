package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1296:Boolean = false;
      
      private var var_1631:int;
      
      private var var_1556:Array;
      
      private var var_655:Array;
      
      private var var_654:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1296 = _loc2_.isWrappingEnabled;
         this.var_1631 = _loc2_.wrappingPrice;
         this.var_1556 = _loc2_.stuffTypes;
         this.var_655 = _loc2_.boxTypes;
         this.var_654 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1296;
      }
      
      public function get price() : int
      {
         return this.var_1631;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1556;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_655;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_654;
      }
   }
}
