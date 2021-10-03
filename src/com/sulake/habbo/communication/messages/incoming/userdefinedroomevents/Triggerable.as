package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_2239:int;
      
      private var var_1606:Array;
      
      private var _id:int;
      
      private var var_2238:String;
      
      private var var_1286:Array;
      
      private var var_2237:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         var _loc5_:int = 0;
         this.var_1606 = new Array();
         this.var_1286 = new Array();
         super();
         this.var_2239 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc5_ = param1.readInteger();
            this.var_1606.push(_loc5_);
            _loc3_++;
         }
         this.var_2237 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2238 = param1.readString();
         var _loc4_:int = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            this.var_1286.push(param1.readInteger());
            _loc3_++;
         }
      }
      
      public function get furniLimit() : int
      {
         return this.var_2239;
      }
      
      public function get stuffIds() : Array
      {
         return this.var_1606;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get stringParam() : String
      {
         return this.var_2238;
      }
      
      public function get intParams() : Array
      {
         return this.var_1286;
      }
      
      public function get code() : int
      {
         return 0;
      }
      
      public function get stuffTypeId() : int
      {
         return this.var_2237;
      }
      
      public function getBoolean(param1:int) : Boolean
      {
         return this.var_1286[param1] == 1;
      }
   }
}
