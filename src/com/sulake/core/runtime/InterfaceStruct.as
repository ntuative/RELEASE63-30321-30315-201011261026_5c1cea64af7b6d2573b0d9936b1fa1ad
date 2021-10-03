package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1387:IID;
      
      private var var_1793:String;
      
      private var var_107:IUnknown;
      
      private var var_731:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1387 = param1;
         this.var_1793 = getQualifiedClassName(this.var_1387);
         this.var_107 = param2;
         this.var_731 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1387;
      }
      
      public function get iis() : String
      {
         return this.var_1793;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_107;
      }
      
      public function get references() : uint
      {
         return this.var_731;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_107 == null;
      }
      
      public function dispose() : void
      {
         this.var_1387 = null;
         this.var_1793 = null;
         this.var_107 = null;
         this.var_731 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_731;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_731) : uint(0);
      }
   }
}
