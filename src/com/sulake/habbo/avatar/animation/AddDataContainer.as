package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1435:String;
      
      private var var_985:String;
      
      private var var_1440:String;
      
      private var var_717:Number = 1;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         this._id = String(param1.@id);
         this.var_1435 = String(param1.@align);
         this.var_985 = String(param1.@base);
         this.var_1440 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            this.var_717 = Number(_loc2_);
            if(this.var_717 > 1)
            {
               this.var_717 /= 100;
            }
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get align() : String
      {
         return this.var_1435;
      }
      
      public function get base() : String
      {
         return this.var_985;
      }
      
      public function get ink() : String
      {
         return this.var_1440;
      }
      
      public function get blend() : Number
      {
         return this.var_717;
      }
      
      public function get isBlended() : Boolean
      {
         return this.var_717 != 1;
      }
   }
}
