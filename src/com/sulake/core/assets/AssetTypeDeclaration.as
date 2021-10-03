package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2094:String;
      
      private var var_2095:Class;
      
      private var var_2093:Class;
      
      private var var_1526:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2094 = param1;
         this.var_2095 = param2;
         this.var_2093 = param3;
         if(rest == null)
         {
            this.var_1526 = new Array();
         }
         else
         {
            this.var_1526 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2094;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2095;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2093;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1526;
      }
   }
}
