package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1169:IHabboTracking;
      
      private var var_1476:Boolean = false;
      
      private var var_2546:int = 0;
      
      private var var_1810:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1169 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1169 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1476 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2546 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1476)
         {
            return;
         }
         ++this.var_1810;
         if(this.var_1810 <= this.var_2546)
         {
            this.var_1169.track("toolbar",param1);
         }
      }
   }
}
