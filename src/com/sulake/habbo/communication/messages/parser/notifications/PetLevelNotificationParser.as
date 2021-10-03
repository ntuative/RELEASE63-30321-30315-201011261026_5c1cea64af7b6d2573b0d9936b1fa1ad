package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1418:int;
      
      private var var_2463:String;
      
      private var var_1429:int;
      
      private var var_574:String;
      
      private var var_1313:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1418 = param1.readInteger();
         this.var_2463 = param1.readString();
         this.var_1429 = param1.readInteger();
         this.var_574 = param1.readString();
         this.var_1313 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1418;
      }
      
      public function get petName() : String
      {
         return this.var_2463;
      }
      
      public function get level() : int
      {
         return this.var_1429;
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function get petType() : int
      {
         return this.var_1313;
      }
   }
}
