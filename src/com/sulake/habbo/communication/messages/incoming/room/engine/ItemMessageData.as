package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2407:Boolean = false;
      
      private var var_2406:int = 0;
      
      private var var_2408:int = 0;
      
      private var var_2147:int = 0;
      
      private var var_2152:int = 0;
      
      private var var_165:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_216:String = "";
      
      private var _type:int = 0;
      
      private var var_2659:String = "";
      
      private var var_1657:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_151:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2407 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_151 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2407;
      }
      
      public function get wallX() : Number
      {
         return this.var_2406;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_151)
         {
            this.var_2406 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2408;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_151)
         {
            this.var_2408 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2147;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_151)
         {
            this.var_2147 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2152;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_151)
         {
            this.var_2152 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_165;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_151)
         {
            this.var_165 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_164;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_151)
         {
            this.var_164 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_216;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_151)
         {
            this.var_216 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_151)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_151)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_151)
         {
            this._data = param1;
         }
      }
   }
}
