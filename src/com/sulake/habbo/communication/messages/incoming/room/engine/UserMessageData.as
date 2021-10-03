package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_888:String = "M";
      
      public static const const_1330:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_216:int = 0;
      
      private var _name:String = "";
      
      private var var_1901:int = 0;
      
      private var var_915:String = "";
      
      private var var_574:String = "";
      
      private var var_1902:String = "";
      
      private var var_1905:int;
      
      private var var_1908:int = 0;
      
      private var var_1903:String = "";
      
      private var var_1906:int = 0;
      
      private var var_1907:int = 0;
      
      private var var_1904:String = "";
      
      private var var_151:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_151 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_1901;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_151)
         {
            this.var_1901 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_915;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_151)
         {
            this.var_915 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_151)
         {
            this.var_574 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_1902;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_151)
         {
            this.var_1902 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_1905;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_151)
         {
            this.var_1905 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_1908;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_151)
         {
            this.var_1908 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_1903;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_151)
         {
            this.var_1903 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_1906;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_151)
         {
            this.var_1906 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_1907;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_151)
         {
            this.var_1907 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_1904;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_151)
         {
            this.var_1904 = param1;
         }
      }
   }
}
