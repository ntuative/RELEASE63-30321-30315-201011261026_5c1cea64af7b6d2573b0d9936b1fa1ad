package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1071:int = 1;
      
      public static const const_628:int = 2;
      
      public static const const_727:int = 3;
      
      public static const const_1269:int = 4;
       
      
      private var _index:int;
      
      private var var_2371:String;
      
      private var var_2370:String;
      
      private var var_2367:Boolean;
      
      private var var_2368:String;
      
      private var var_912:String;
      
      private var var_2369:int;
      
      private var var_2158:int;
      
      private var _type:int;
      
      private var var_1982:String;
      
      private var var_859:GuestRoomData;
      
      private var var_858:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2371 = param1.readString();
         this.var_2370 = param1.readString();
         this.var_2367 = param1.readInteger() == 1;
         this.var_2368 = param1.readString();
         this.var_912 = param1.readString();
         this.var_2369 = param1.readInteger();
         this.var_2158 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1071)
         {
            this.var_1982 = param1.readString();
         }
         else if(this._type == const_727)
         {
            this.var_858 = new PublicRoomData(param1);
         }
         else if(this._type == const_628)
         {
            this.var_859 = new GuestRoomData(param1);
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_859 != null)
         {
            this.var_859.dispose();
            this.var_859 = null;
         }
         if(this.var_858 != null)
         {
            this.var_858.dispose();
            this.var_858 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2371;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2370;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2367;
      }
      
      public function get picText() : String
      {
         return this.var_2368;
      }
      
      public function get picRef() : String
      {
         return this.var_912;
      }
      
      public function get folderId() : int
      {
         return this.var_2369;
      }
      
      public function get tag() : String
      {
         return this.var_1982;
      }
      
      public function get userCount() : int
      {
         return this.var_2158;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_859;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_858;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1071)
         {
            return 0;
         }
         if(this.type == const_628)
         {
            return this.var_859.maxUserCount;
         }
         if(this.type == const_727)
         {
            return this.var_858.maxUsers;
         }
         return 0;
      }
   }
}
