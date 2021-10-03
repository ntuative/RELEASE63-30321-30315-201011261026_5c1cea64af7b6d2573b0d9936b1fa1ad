package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1334:String = "WE_CREATE";
      
      public static const const_1248:String = "WE_CREATED";
      
      public static const const_1385:String = "WE_DESTROY";
      
      public static const const_267:String = "WE_DESTROYED";
      
      public static const const_1318:String = "WE_OPEN";
      
      public static const const_1425:String = "WE_OPENED";
      
      public static const const_1346:String = "WE_CLOSE";
      
      public static const const_1232:String = "WE_CLOSED";
      
      public static const const_1467:String = "WE_FOCUS";
      
      public static const const_186:String = "WE_FOCUSED";
      
      public static const const_1399:String = "WE_UNFOCUS";
      
      public static const const_1464:String = "WE_UNFOCUSED";
      
      public static const const_1456:String = "WE_ACTIVATE";
      
      public static const const_1252:String = "WE_ACTIVATED";
      
      public static const const_1284:String = "WE_DEACTIVATE";
      
      public static const const_984:String = "WE_DEACTIVATED";
      
      public static const const_453:String = "WE_SELECT";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_651:String = "WE_UNSELECT";
      
      public static const const_554:String = "WE_UNSELECTED";
      
      public static const const_1569:String = "WE_ATTACH";
      
      public static const const_1567:String = "WE_ATTACHED";
      
      public static const const_1705:String = "WE_DETACH";
      
      public static const const_1660:String = "WE_DETACHED";
      
      public static const const_1389:String = "WE_LOCK";
      
      public static const const_1281:String = "WE_LOCKED";
      
      public static const const_1328:String = "WE_UNLOCK";
      
      public static const const_1410:String = "WE_UNLOCKED";
      
      public static const const_779:String = "WE_ENABLE";
      
      public static const const_286:String = "WE_ENABLED";
      
      public static const const_617:String = "WE_DISABLE";
      
      public static const const_208:String = "WE_DISABLED";
      
      public static const const_1437:String = "WE_RELOCATE";
      
      public static const const_365:String = "WE_RELOCATED";
      
      public static const const_1349:String = "WE_RESIZE";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const const_1241:String = "WE_MINIMIZE";
      
      public static const const_1459:String = "WE_MINIMIZED";
      
      public static const const_1430:String = "WE_MAXIMIZE";
      
      public static const const_1229:String = "WE_MAXIMIZED";
      
      public static const const_1384:String = "WE_RESTORE";
      
      public static const const_1332:String = "WE_RESTORED";
      
      public static const const_1759:String = "WE_ARRANGE";
      
      public static const const_1704:String = "WE_ARRANGED";
      
      public static const const_96:String = "WE_UPDATE";
      
      public static const const_1747:String = "WE_UPDATED";
      
      public static const const_1639:String = "WE_CHILD_RELOCATE";
      
      public static const const_447:String = "WE_CHILD_RELOCATED";
      
      public static const const_1697:String = "WE_CHILD_RESIZE";
      
      public static const const_289:String = "WE_CHILD_RESIZED";
      
      public static const const_1632:String = "WE_CHILD_REMOVE";
      
      public static const const_438:String = "WE_CHILD_REMOVED";
      
      public static const const_1556:String = "WE_PARENT_RELOCATE";
      
      public static const const_1663:String = "WE_PARENT_RELOCATED";
      
      public static const const_1548:String = "WE_PARENT_RESIZE";
      
      public static const const_1450:String = "WE_PARENT_RESIZED";
      
      public static const const_175:String = "WE_OK";
      
      public static const const_640:String = "WE_CANCEL";
      
      public static const const_108:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_530:String = "WE_SCROLL";
      
      public static const const_143:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1854:IWindow;
      
      protected var var_1855:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1854 = param3;
         this.var_1855 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1854;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1855 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1855;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
