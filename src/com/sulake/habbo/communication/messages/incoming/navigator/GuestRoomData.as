package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_313:int;
      
      private var var_671:Boolean;
      
      private var var_852:String;
      
      private var _ownerName:String;
      
      private var var_2387:int;
      
      private var var_2158:int;
      
      private var var_2495:int;
      
      private var var_1424:String;
      
      private var var_2492:int;
      
      private var var_2496:Boolean;
      
      private var var_455:int;
      
      private var var_1214:int;
      
      private var var_2493:String;
      
      private var var_751:Array;
      
      private var var_2494:RoomThumbnailData;
      
      private var var_2388:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_751 = new Array();
         super();
         this.var_313 = param1.readInteger();
         this.var_671 = param1.readBoolean();
         this.var_852 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2387 = param1.readInteger();
         this.var_2158 = param1.readInteger();
         this.var_2495 = param1.readInteger();
         this.var_1424 = param1.readString();
         this.var_2492 = param1.readInteger();
         this.var_2496 = param1.readBoolean();
         this.var_455 = param1.readInteger();
         this.var_1214 = param1.readInteger();
         this.var_2493 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_751.push(_loc4_);
            _loc3_++;
         }
         this.var_2494 = new RoomThumbnailData(param1);
         this.var_2388 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_313;
      }
      
      public function get event() : Boolean
      {
         return this.var_671;
      }
      
      public function get roomName() : String
      {
         return this.var_852;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2387;
      }
      
      public function get userCount() : int
      {
         return this.var_2158;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2495;
      }
      
      public function get description() : String
      {
         return this.var_1424;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2492;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2496;
      }
      
      public function get score() : int
      {
         return this.var_455;
      }
      
      public function get categoryId() : int
      {
         return this.var_1214;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2493;
      }
      
      public function get tags() : Array
      {
         return this.var_751;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2494;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2388;
      }
   }
}
