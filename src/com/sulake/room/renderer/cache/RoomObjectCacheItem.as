package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_816:RoomObjectLocationCacheItem = null;
      
      private var var_185:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_816 = new RoomObjectLocationCacheItem(param1);
         this.var_185 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_816;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_185;
      }
      
      public function dispose() : void
      {
         if(this.var_816 != null)
         {
            this.var_816.dispose();
            this.var_816 = null;
         }
         if(this.var_185 != null)
         {
            this.var_185.dispose();
            this.var_185 = null;
         }
      }
   }
}
