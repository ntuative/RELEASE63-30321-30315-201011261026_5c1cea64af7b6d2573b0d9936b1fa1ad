package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_915:String = "";
      
      private var var_574:String = "";
      
      private var var_1902:String = "";
      
      private var var_1905:int;
      
      private var var_1908:int = 0;
      
      private var var_1903:String = "";
      
      private var var_1906:int = 0;
      
      private var var_1907:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1905;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1905 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_915;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_915 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_574 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_1902;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_1902 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_1908;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_1908 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_1903;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_1903 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_1906;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_1906 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_1907;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_1907 = param1;
      }
   }
}
