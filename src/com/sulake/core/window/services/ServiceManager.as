package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2600:uint;
      
      private var var_130:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_218:IWindowContext;
      
      private var var_935:IMouseDraggingService;
      
      private var var_936:IMouseScalingService;
      
      private var var_937:IMouseListenerService;
      
      private var var_934:IFocusManagerService;
      
      private var var_932:IToolTipAgentService;
      
      private var var_933:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2600 = 0;
         this.var_130 = param2;
         this.var_218 = param1;
         this.var_935 = new WindowMouseDragger(param2);
         this.var_936 = new WindowMouseScaler(param2);
         this.var_937 = new WindowMouseListener(param2);
         this.var_934 = new FocusManager(param2);
         this.var_932 = new WindowToolTipAgent(param2);
         this.var_933 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_935 != null)
         {
            this.var_935.dispose();
            this.var_935 = null;
         }
         if(this.var_936 != null)
         {
            this.var_936.dispose();
            this.var_936 = null;
         }
         if(this.var_937 != null)
         {
            this.var_937.dispose();
            this.var_937 = null;
         }
         if(this.var_934 != null)
         {
            this.var_934.dispose();
            this.var_934 = null;
         }
         if(this.var_932 != null)
         {
            this.var_932.dispose();
            this.var_932 = null;
         }
         if(this.var_933 != null)
         {
            this.var_933.dispose();
            this.var_933 = null;
         }
         this.var_130 = null;
         this.var_218 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_935;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_936;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_937;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_934;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_932;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_933;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
