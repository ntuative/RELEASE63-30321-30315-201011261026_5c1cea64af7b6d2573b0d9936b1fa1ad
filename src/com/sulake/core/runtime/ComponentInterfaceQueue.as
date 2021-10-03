package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1744:IID;
      
      private var var_706:Boolean;
      
      private var var_1105:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1744 = param1;
         this.var_1105 = new Array();
         this.var_706 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1744;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_706;
      }
      
      public function get receivers() : Array
      {
         return this.var_1105;
      }
      
      public function dispose() : void
      {
         if(!this.var_706)
         {
            this.var_706 = true;
            this.var_1744 = null;
            while(this.var_1105.length > 0)
            {
               this.var_1105.pop();
            }
            this.var_1105 = null;
         }
      }
   }
}
