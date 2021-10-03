package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_246:String = "WE_CHILD_RESIZED";
      
      public static const const_1355:String = "WE_CLOSE";
      
      public static const const_1322:String = "WE_DESTROY";
      
      public static const const_113:String = "WE_CHANGE";
      
      public static const const_1315:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1617:String = "WE_PARENT_RESIZE";
      
      public static const const_98:String = "WE_UPDATE";
      
      public static const const_1222:String = "WE_MAXIMIZE";
      
      public static const const_396:String = "WE_DESTROYED";
      
      public static const const_1024:String = "WE_UNSELECT";
      
      public static const const_1330:String = "WE_MAXIMIZED";
      
      public static const const_1444:String = "WE_UNLOCKED";
      
      public static const const_406:String = "WE_CHILD_REMOVED";
      
      public static const const_162:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1365:String = "WE_ACTIVATE";
      
      public static const const_250:String = "WE_ENABLED";
      
      public static const const_389:String = "WE_CHILD_RELOCATED";
      
      public static const const_1261:String = "WE_CREATE";
      
      public static const const_563:String = "WE_SELECT";
      
      public static const const_183:String = "";
      
      public static const const_1548:String = "WE_LOCKED";
      
      public static const const_1518:String = "WE_PARENT_RELOCATE";
      
      public static const const_1555:String = "WE_CHILD_REMOVE";
      
      public static const const_1554:String = "WE_CHILD_RELOCATE";
      
      public static const const_1503:String = "WE_LOCK";
      
      public static const const_219:String = "WE_FOCUSED";
      
      public static const const_733:String = "WE_UNSELECTED";
      
      public static const const_901:String = "WE_DEACTIVATED";
      
      public static const const_1321:String = "WE_MINIMIZED";
      
      public static const const_1464:String = "WE_ARRANGED";
      
      public static const const_1625:String = "WE_UNLOCK";
      
      public static const const_1497:String = "WE_ATTACH";
      
      public static const const_1274:String = "WE_OPEN";
      
      public static const const_1385:String = "WE_RESTORE";
      
      public static const const_1531:String = "WE_PARENT_RELOCATED";
      
      public static const const_1384:String = "WE_RELOCATE";
      
      public static const const_1553:String = "WE_CHILD_RESIZE";
      
      public static const const_1450:String = "WE_ARRANGE";
      
      public static const const_1149:String = "WE_OPENED";
      
      public static const const_1328:String = "WE_CLOSED";
      
      public static const const_1474:String = "WE_DETACHED";
      
      public static const const_1551:String = "WE_UPDATED";
      
      public static const const_1307:String = "WE_UNFOCUSED";
      
      public static const const_460:String = "WE_RELOCATED";
      
      public static const const_1357:String = "WE_DEACTIVATE";
      
      public static const const_204:String = "WE_DISABLED";
      
      public static const const_602:String = "WE_CANCEL";
      
      public static const const_689:String = "WE_ENABLE";
      
      public static const const_1281:String = "WE_ACTIVATED";
      
      public static const const_1297:String = "WE_FOCUS";
      
      public static const const_1463:String = "WE_DETACH";
      
      public static const const_1166:String = "WE_RESTORED";
      
      public static const const_1399:String = "WE_UNFOCUS";
      
      public static const const_61:String = "WE_SELECTED";
      
      public static const const_1156:String = "WE_PARENT_RESIZED";
      
      public static const const_1368:String = "WE_CREATED";
      
      public static const const_1515:String = "WE_ATTACHED";
      
      public static const const_1294:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1614:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1396:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1614 = param3;
         var_1396 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1396;
      }
      
      public function get related() : IWindow
      {
         return var_1614;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1396 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
