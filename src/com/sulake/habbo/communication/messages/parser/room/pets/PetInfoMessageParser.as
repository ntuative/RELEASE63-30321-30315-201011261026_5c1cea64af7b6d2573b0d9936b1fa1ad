package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1418:int;
      
      private var _name:String;
      
      private var var_1429:int;
      
      private var var_1881:int;
      
      private var var_1883:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_574:String;
      
      private var var_1880:int;
      
      private var var_1884:int;
      
      private var var_1887:int;
      
      private var var_1885:int;
      
      private var var_1886:int;
      
      private var _ownerName:String;
      
      private var var_1882:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1418;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1429;
      }
      
      public function get maxLevel() : int
      {
         return this.var_1881;
      }
      
      public function get experience() : int
      {
         return this.var_1883;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_574;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_1880;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_1884;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_1887;
      }
      
      public function get respect() : int
      {
         return this.var_1885;
      }
      
      public function get ownerId() : int
      {
         return this.var_1886;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_1882;
      }
      
      public function flush() : Boolean
      {
         this.var_1418 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1418 = param1.readInteger();
         this._name = param1.readString();
         this.var_1429 = param1.readInteger();
         this.var_1881 = param1.readInteger();
         this.var_1883 = param1.readInteger();
         this.var_1880 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_1884 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_1887 = param1.readInteger();
         this.var_574 = param1.readString();
         this.var_1885 = param1.readInteger();
         this.var_1886 = param1.readInteger();
         this.var_1882 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
