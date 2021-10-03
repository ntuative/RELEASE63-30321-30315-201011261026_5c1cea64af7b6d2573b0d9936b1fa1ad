package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_313:int;
      
      private var var_1419:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_313 = param1.readInteger();
         this.var_1419 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_313 = 0;
         this.var_1419 = 0;
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_313;
      }
      
      public function get nodeId() : int
      {
         return this.var_1419;
      }
   }
}
