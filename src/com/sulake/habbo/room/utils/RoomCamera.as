package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_809:int = 3;
       
      
      private var var_1976:int = -1;
      
      private var var_1973:int = -2;
      
      private var var_290:Vector3d = null;
      
      private var var_354:Vector3d = null;
      
      private var var_1969:Boolean = false;
      
      private var var_1970:Boolean = false;
      
      private var var_1977:Boolean = false;
      
      private var var_1971:Boolean = false;
      
      private var var_1978:int = 0;
      
      private var var_1975:int = 0;
      
      private var var_1974:int = 0;
      
      private var var_1972:int = 0;
      
      private var var_1196:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_354;
      }
      
      public function get targetId() : int
      {
         return this.var_1976;
      }
      
      public function get targetCategory() : int
      {
         return this.var_1973;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_1969;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_1970;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_1977;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_1971;
      }
      
      public function get screenWd() : int
      {
         return this.var_1978;
      }
      
      public function get screenHt() : int
      {
         return this.var_1975;
      }
      
      public function get roomWd() : int
      {
         return this.var_1974;
      }
      
      public function get roomHt() : int
      {
         return this.var_1972;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_1976 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_1973 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_1969 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_1970 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_1977 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_1971 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_1978 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_1975 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_1974 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_1972 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_290 == null)
         {
            this.var_290 = new Vector3d();
         }
         if(this.var_290.x != param1.x || this.var_290.y != param1.y || this.var_290.z != param1.z)
         {
            this.var_290.assign(param1);
            this.var_1196 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_290 = null;
         this.var_354 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_354 != null)
         {
            return;
         }
         this.var_354 = new Vector3d();
         this.var_354.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_290 != null && this.var_354 != null)
         {
            ++this.var_1196;
            _loc4_ = Vector3d.dif(this.var_290,this.var_354);
            if(_loc4_.length <= param2)
            {
               this.var_354 = this.var_290;
               this.var_290 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_809 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1196 <= const_809)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_354 = Vector3d.sum(this.var_354,_loc4_);
            }
         }
      }
   }
}
