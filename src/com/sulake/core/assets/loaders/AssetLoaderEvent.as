package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_31:String = "AssetLoaderEventComplete";
      
      public static const const_929:String = "AssetLoaderEventProgress";
      
      public static const const_1055:String = "AssetLoaderEventUnload";
      
      public static const const_1085:String = "AssetLoaderEventStatus";
      
      public static const const_45:String = "AssetLoaderEventError";
      
      public static const const_874:String = "AssetLoaderEventOpen";
       
      
      private var var_345:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_345 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_345;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_345);
      }
   }
}
