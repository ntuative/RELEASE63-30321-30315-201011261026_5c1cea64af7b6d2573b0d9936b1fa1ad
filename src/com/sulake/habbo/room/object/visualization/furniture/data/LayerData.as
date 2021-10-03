package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_662:String = "";
      
      public static const const_394:int = 0;
      
      public static const const_451:int = 255;
      
      public static const const_697:Boolean = false;
      
      public static const const_498:int = 0;
      
      public static const const_534:int = 0;
      
      public static const const_457:int = 0;
      
      public static const const_1017:int = 1;
      
      public static const const_956:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_1982:String = "";
      
      private var var_1440:int = 0;
      
      private var var_1997:int = 255;
      
      private var var_2233:Boolean = false;
      
      private var var_2231:int = 0;
      
      private var var_2230:int = 0;
      
      private var var_2232:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1982 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1982;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1440 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1440;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1997 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_1997;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2233 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2233;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2231 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2231;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2230 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2230;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2232 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2232;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
