package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1885:int;
      
      private var var_2090:int;
      
      private var var_1229:PetData;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1229 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1885 = param1.readInteger();
         this.var_2090 = param1.readInteger();
         this.var_1229 = new PetData(param1);
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return this.var_2090;
      }
      
      public function get respect() : int
      {
         return this.var_1885;
      }
      
      public function get petData() : PetData
      {
         return this.var_1229;
      }
   }
}
