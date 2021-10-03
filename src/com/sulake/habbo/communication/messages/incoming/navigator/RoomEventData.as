package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_966:Boolean;
      
      private var var_2034:int;
      
      private var var_2031:String;
      
      private var var_313:int;
      
      private var var_2032:int;
      
      private var var_2033:String;
      
      private var var_2030:String;
      
      private var var_2035:String;
      
      private var var_751:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_751 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_966 = false;
            return;
         }
         this.var_966 = true;
         this.var_2034 = int(_loc2_);
         this.var_2031 = param1.readString();
         this.var_313 = int(param1.readString());
         this.var_2032 = param1.readInteger();
         this.var_2033 = param1.readString();
         this.var_2030 = param1.readString();
         this.var_2035 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_751.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_751 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2034;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2031;
      }
      
      public function get flatId() : int
      {
         return this.var_313;
      }
      
      public function get eventType() : int
      {
         return this.var_2032;
      }
      
      public function get eventName() : String
      {
         return this.var_2033;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2030;
      }
      
      public function get creationTime() : String
      {
         return this.var_2035;
      }
      
      public function get tags() : Array
      {
         return this.var_751;
      }
      
      public function get exists() : Boolean
      {
         return this.var_966;
      }
   }
}
