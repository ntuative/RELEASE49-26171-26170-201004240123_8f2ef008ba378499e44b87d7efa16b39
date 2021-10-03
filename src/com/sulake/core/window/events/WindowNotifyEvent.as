package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1244:String = "WN_CREATED";
      
      public static const const_825:String = "WN_DISABLE";
      
      public static const const_1010:String = "WN_DEACTIVATED";
      
      public static const const_871:String = "WN_OPENED";
      
      public static const const_880:String = "WN_CLOSED";
      
      public static const const_948:String = "WN_DESTROY";
      
      public static const const_1491:String = "WN_ARRANGED";
      
      public static const const_379:String = "WN_PARENT_RESIZED";
      
      public static const const_978:String = "WN_ENABLE";
      
      public static const const_924:String = "WN_RELOCATE";
      
      public static const const_822:String = "WN_FOCUS";
      
      public static const const_875:String = "WN_PARENT_RELOCATED";
      
      public static const const_415:String = "WN_PARAM_UPDATED";
      
      public static const const_514:String = "WN_PARENT_ACTIVATED";
      
      public static const const_173:String = "WN_RESIZED";
      
      public static const const_934:String = "WN_CLOSE";
      
      public static const const_979:String = "WN_PARENT_REMOVED";
      
      public static const const_258:String = "WN_CHILD_RELOCATED";
      
      public static const const_567:String = "WN_ENABLED";
      
      public static const const_240:String = "WN_CHILD_RESIZED";
      
      public static const const_877:String = "WN_MINIMIZED";
      
      public static const const_573:String = "WN_DISABLED";
      
      public static const const_200:String = "WN_CHILD_ACTIVATED";
      
      public static const const_368:String = "WN_STATE_UPDATED";
      
      public static const const_616:String = "WN_UNSELECTED";
      
      public static const const_402:String = "WN_STYLE_UPDATED";
      
      public static const const_1615:String = "WN_UPDATE";
      
      public static const const_377:String = "WN_PARENT_ADDED";
      
      public static const const_535:String = "WN_RESIZE";
      
      public static const const_523:String = "WN_CHILD_REMOVED";
      
      public static const const_1468:String = "";
      
      public static const const_861:String = "WN_RESTORED";
      
      public static const const_340:String = "WN_SELECTED";
      
      public static const const_927:String = "WN_MINIMIZE";
      
      public static const const_899:String = "WN_FOCUSED";
      
      public static const const_1332:String = "WN_LOCK";
      
      public static const const_294:String = "WN_CHILD_ADDED";
      
      public static const const_895:String = "WN_UNFOCUSED";
      
      public static const const_423:String = "WN_RELOCATED";
      
      public static const const_1000:String = "WN_DEACTIVATE";
      
      public static const const_1336:String = "WN_CRETAE";
      
      public static const const_905:String = "WN_RESTORE";
      
      public static const const_319:String = "WN_ACTVATED";
      
      public static const const_1210:String = "WN_LOCKED";
      
      public static const const_426:String = "WN_SELECT";
      
      public static const const_881:String = "WN_MAXIMIZE";
      
      public static const const_891:String = "WN_OPEN";
      
      public static const const_655:String = "WN_UNSELECT";
      
      public static const const_1564:String = "WN_ARRANGE";
      
      public static const const_1267:String = "WN_UNLOCKED";
      
      public static const const_1541:String = "WN_UPDATED";
      
      public static const const_852:String = "WN_ACTIVATE";
      
      public static const const_1341:String = "WN_UNLOCK";
      
      public static const const_918:String = "WN_MAXIMIZED";
      
      public static const const_976:String = "WN_DESTROYED";
      
      public static const const_958:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1614,cancelable);
      }
   }
}
