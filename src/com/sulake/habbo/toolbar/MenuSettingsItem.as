package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2294:String;
      
      private var var_2345:Array;
      
      private var var_2346:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2294 = param1;
         this.var_2345 = param2;
         this.var_2346 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2294;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2345;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2346;
      }
   }
}
