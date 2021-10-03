package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.MouseCursorType;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class InteractiveController extends WindowController implements IInteractiveWindow
   {
      
      protected static const KEY_TOOLTIP_DELAY:String = "tool_tip_delay";
      
      protected static const const_1034:String = "tool_tip_caption";
      
      protected static const const_1409:uint = 500;
      
      protected static const const_746:String = "";
      
      protected static var var_332:Array;
       
      
      protected var var_2291:uint = 0;
      
      protected var var_956:String = "";
      
      protected var var_457:Array;
      
      protected var var_957:uint = 500;
      
      public function InteractiveController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         param4 |= 0;
         var_457 = new Array();
         var_457[0] = MouseCursorType.const_322;
         var_457[1] = MouseCursorType.const_42;
         var_457[2] = MouseCursorType.const_322;
         var_457[3] = MouseCursorType.const_322;
         var_457[4] = MouseCursorType.const_42;
         var_457[5] = MouseCursorType.const_42;
         var_457[6] = MouseCursorType.const_322;
         if(var_332 == null)
         {
            var_332 = new Array();
            var_332[0] = WindowState.const_96;
            var_332[1] = WindowState.const_79;
            var_332[2] = WindowState.const_82;
            var_332[3] = WindowState.const_66;
            var_332[4] = WindowState.WINDOW_STATE_SELECTED;
            var_332[5] = WindowState.const_101;
            var_332[6] = WindowState.const_73;
         }
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public static function writeInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : Array
      {
         param2.push(new PropertyStruct(const_1034,param1.toolTipCaption,PropertyStruct.STRING,param1.toolTipCaption != const_746));
         param2.push(new PropertyStruct(KEY_TOOLTIP_DELAY,param1.toolTipDelay,PropertyStruct.const_935,param1.toolTipDelay != const_1409));
         return param2;
      }
      
      public static function readInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : void
      {
         var _loc3_:* = null;
         for each(_loc3_ in param2)
         {
            switch(_loc3_.key)
            {
               case const_1034:
                  param1.toolTipCaption = _loc3_.value as String;
                  break;
               case KEY_TOOLTIP_DELAY:
                  param1.toolTipDelay = _loc3_.value as uint;
                  break;
               case "mouse_cursor_hovering":
                  param1.setMouseCursorByState(WindowState.const_82,_loc3_.value as uint);
                  break;
               case "mouse_cursor_pressed":
                  param1.setMouseCursorByState(WindowState.const_101,_loc3_.value as uint);
                  break;
               case "mouse_cursor_disabled":
                  param1.setMouseCursorByState(WindowState.const_73,_loc3_.value as uint);
                  break;
            }
         }
      }
      
      public static function processInteractiveWindowEvents(param1:IInteractiveWindow, param2:Event) : void
      {
         if(param1.toolTipCaption != const_746)
         {
            if(param2.type == MouseEvent.MOUSE_OVER)
            {
               param1.context.getWindowServices().getToolTipAgentService().begin(param1);
            }
            else if(param2.type != MouseEvent.MOUSE_MOVE)
            {
               if(param2.type == MouseEvent.MOUSE_OUT)
               {
                  param1.context.getWindowServices().getToolTipAgentService().end(param1);
               }
            }
         }
      }
      
      public function set toolTipDelay(param1:uint) : void
      {
         var_957 = param1;
      }
      
      public function hideToolTip() : void
      {
      }
      
      override public function get properties() : Array
      {
         return writeInteractiveWindowProperties(this,super.properties);
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         if(param1 == this)
         {
            processInteractiveWindowEvents(this,param2);
         }
         return super.update(param1,param2);
      }
      
      public function get toolTipCaption() : String
      {
         return var_956;
      }
      
      public function set toolTipCaption(param1:String) : void
      {
         var_956 = param1 == null ? const_746 : param1;
      }
      
      override public function set properties(param1:Array) : void
      {
         readInteractiveWindowProperties(this,param1);
         super.properties = param1;
      }
      
      public function getMouseCursorByState(param1:uint) : uint
      {
         var _loc2_:int = 0;
         while(_loc2_-- > 0)
         {
            if((param1 & 0) > 0)
            {
               return var_457[_loc2_];
            }
         }
         return MouseCursorType.const_42;
      }
      
      public function setMouseCursorByState(param1:uint, param2:uint) : void
      {
         var _loc3_:int = var_332.indexOf(param1);
         if(_loc3_ > -1)
         {
            var_457[_loc3_] = param2;
         }
      }
      
      public function showToolTip(param1:IToolTipWindow) : void
      {
      }
      
      public function get toolTipDelay() : uint
      {
         return var_957;
      }
      
      public function set mouseCursorType(param1:uint) : void
      {
         var_2291 = param1;
      }
      
      public function get mouseCursorType() : uint
      {
         return var_2291;
      }
   }
}
