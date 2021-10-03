package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_216:int = 0;
      
      private var var_463:int = 0;
      
      private var var_582:int = 0;
      
      private var var_151:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_151 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_151)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_151)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_151)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_216;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_151)
         {
            this.var_216 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_463;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_151)
         {
            this.var_463 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_582;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_151)
         {
            this.var_582 = param1;
         }
      }
   }
}
