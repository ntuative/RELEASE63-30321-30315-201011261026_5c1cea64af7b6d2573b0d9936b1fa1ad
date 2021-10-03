package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1429:String = "WN_CRETAE";
      
      public static const const_1278:String = "WN_CREATED";
      
      public static const const_882:String = "WN_DESTROY";
      
      public static const const_1054:String = "WN_DESTROYED";
      
      public static const const_1059:String = "WN_OPEN";
      
      public static const const_924:String = "WN_OPENED";
      
      public static const const_953:String = "WN_CLOSE";
      
      public static const const_1024:String = "WN_CLOSED";
      
      public static const const_899:String = "WN_FOCUS";
      
      public static const const_893:String = "WN_FOCUSED";
      
      public static const const_939:String = "WN_UNFOCUS";
      
      public static const const_876:String = "WN_UNFOCUSED";
      
      public static const const_994:String = "WN_ACTIVATE";
      
      public static const const_324:String = "WN_ACTVATED";
      
      public static const const_1091:String = "WN_DEACTIVATE";
      
      public static const const_1069:String = "WN_DEACTIVATED";
      
      public static const const_527:String = "WN_SELECT";
      
      public static const const_363:String = "WN_SELECTED";
      
      public static const const_660:String = "WN_UNSELECT";
      
      public static const const_552:String = "WN_UNSELECTED";
      
      public static const const_1073:String = "WN_LOCK";
      
      public static const const_1015:String = "WN_LOCKED";
      
      public static const const_1090:String = "WN_UNLOCK";
      
      public static const const_1018:String = "WN_UNLOCKED";
      
      public static const const_967:String = "WN_ENABLE";
      
      public static const const_574:String = "WN_ENABLED";
      
      public static const const_911:String = "WN_DISABLE";
      
      public static const const_670:String = "WN_DISABLED";
      
      public static const const_667:String = "WN_RESIZE";
      
      public static const const_163:String = "WN_RESIZED";
      
      public static const const_948:String = "WN_RELOCATE";
      
      public static const const_531:String = "WN_RELOCATED";
      
      public static const const_943:String = "WN_MINIMIZE";
      
      public static const const_914:String = "WN_MINIMIZED";
      
      public static const const_1019:String = "WN_MAXIMIZE";
      
      public static const const_1027:String = "WN_MAXIMIZED";
      
      public static const const_982:String = "WN_RESTORE";
      
      public static const const_1087:String = "WN_RESTORED";
      
      public static const const_1685:String = "WN_ARRANGE";
      
      public static const const_1711:String = "WN_ARRANGED";
      
      public static const const_1676:String = "WN_UPDATE";
      
      public static const const_1687:String = "WN_UPDATED";
      
      public static const const_325:String = "WN_CHILD_ADDED";
      
      public static const const_781:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_281:String = "WN_CHILD_RELOCATED";
      
      public static const const_218:String = "WN_CHILD_ACTIVATED";
      
      public static const const_473:String = "WN_PARENT_ADDED";
      
      public static const const_968:String = "WN_PARENT_REMOVED";
      
      public static const const_405:String = "WN_PARENT_RESIZED";
      
      public static const const_1023:String = "WN_PARENT_RELOCATED";
      
      public static const const_610:String = "WN_PARENT_ACTIVATED";
      
      public static const const_533:String = "WN_STATE_UPDATED";
      
      public static const const_532:String = "WN_STYLE_UPDATED";
      
      public static const const_497:String = "WN_PARAM_UPDATED";
      
      public static const const_1726:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1854,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
