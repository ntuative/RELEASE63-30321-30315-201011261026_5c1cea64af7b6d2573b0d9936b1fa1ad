package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_80:String = "i";
      
      public static const const_84:String = "s";
      
      public static const const_223:String = "e";
       
      
      private var var_1535:String;
      
      private var var_2098:int;
      
      private var var_1242:String;
      
      private var var_1243:int;
      
      private var var_1534:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1535 = param1.readString();
         this.var_2098 = param1.readInteger();
         this.var_1242 = param1.readString();
         this.var_1243 = param1.readInteger();
         this.var_1534 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1535;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2098;
      }
      
      public function get extraParam() : String
      {
         return this.var_1242;
      }
      
      public function get productCount() : int
      {
         return this.var_1243;
      }
      
      public function get expiration() : int
      {
         return this.var_1534;
      }
   }
}
