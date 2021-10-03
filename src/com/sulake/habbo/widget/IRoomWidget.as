package com.sulake.habbo.widget
{
   import com.sulake.core.window.IWindow;
   import flash.events.IEventDispatcher;
   
   public interface IRoomWidget
   {
       
      
      function get state() : int;
      
      function initialize(param1:int) : void;
      
      function dispose() : void;
      
      function set messageListener(param1:IRoomWidgetMessageListener) : void;
      
      function registerUpdateEvents(param1:IEventDispatcher) : void;
      
      function unregisterUpdateEvents(param1:IEventDispatcher) : void;
      
      function get mainWindow() : IWindow;
   }
}
