package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2667:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_126 = param1.desktop;
         var_78 = param1.var_1146 as WindowController;
         _lastClickTarget = param1.var_1145 as WindowController;
         var_138 = param1.renderer;
         var_753 = param1.var_1144;
         param2.begin();
         param2.end();
         param1.desktop = var_126;
         param1.var_1146 = var_78;
         param1.var_1145 = _lastClickTarget;
         param1.renderer = var_138;
         param1.var_1144 = var_753;
      }
   }
}
