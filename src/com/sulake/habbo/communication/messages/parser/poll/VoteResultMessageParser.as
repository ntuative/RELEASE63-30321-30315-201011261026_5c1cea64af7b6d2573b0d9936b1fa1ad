package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1127:String;
      
      private var var_1264:Array;
      
      private var var_1061:Array;
      
      private var var_1612:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1127;
      }
      
      public function get choices() : Array
      {
         return this.var_1264.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1061.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1612;
      }
      
      public function flush() : Boolean
      {
         this.var_1127 = "";
         this.var_1264 = [];
         this.var_1061 = [];
         this.var_1612 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1127 = param1.readString();
         this.var_1264 = [];
         this.var_1061 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1264.push(param1.readString());
            this.var_1061.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1612 = param1.readInteger();
         return true;
      }
   }
}
