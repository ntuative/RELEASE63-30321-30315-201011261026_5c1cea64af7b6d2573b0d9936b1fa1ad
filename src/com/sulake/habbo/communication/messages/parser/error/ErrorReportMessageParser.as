package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1493:int;
      
      private var var_1529:int;
      
      private var var_1530:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1529 = param1.readInteger();
         this.var_1493 = param1.readInteger();
         this.var_1530 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1493 = 0;
         this.var_1529 = 0;
         this.var_1530 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1493;
      }
      
      public function get messageId() : int
      {
         return this.var_1529;
      }
      
      public function get timestamp() : String
      {
         return this.var_1530;
      }
   }
}
