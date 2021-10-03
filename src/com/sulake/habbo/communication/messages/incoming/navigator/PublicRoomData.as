package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2008:String;
      
      private var var_2010:int;
      
      private var var_2009:int;
      
      private var var_2012:String;
      
      private var var_2011:int;
      
      private var var_1419:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2008 = param1.readString();
         this.var_2010 = param1.readInteger();
         this.var_2009 = param1.readInteger();
         this.var_2012 = param1.readString();
         this.var_2011 = param1.readInteger();
         this.var_1419 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2008;
      }
      
      public function get unitPort() : int
      {
         return this.var_2010;
      }
      
      public function get worldId() : int
      {
         return this.var_2009;
      }
      
      public function get castLibs() : String
      {
         return this.var_2012;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2011;
      }
      
      public function get nodeId() : int
      {
         return this.var_1419;
      }
   }
}
