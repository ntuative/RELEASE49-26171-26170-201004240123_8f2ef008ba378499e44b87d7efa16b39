package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_331:Timer;
      
      protected var var_956:String;
      
      protected var var_957:uint;
      
      protected var var_1119:Point;
      
      protected var var_246:IToolTipWindow;
      
      protected var var_1120:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1119 = new Point();
         var_1120 = new Point(20,20);
         var_957 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_331 != null)
         {
            var_331.stop();
            var_331.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_331 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1119);
            if(var_246 != null && true)
            {
               var_246.x = param1 + var_1120.x;
               var_246.y = param2 + var_1120.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_331 != null)
         {
            var_331.reset();
         }
         if(_window && true)
         {
            if(var_246 == null || false)
            {
               var_246 = _window.context.create("undefined::ToolTip",var_956,WindowType.const_296,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_246.x = _loc2_.x + var_1119.x + var_1120.x;
            var_246.y = _loc2_.y + var_1119.y + var_1120.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_956 = IInteractiveWindow(param1).toolTipCaption;
               var_957 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_956 = param1.caption;
               var_957 = 500;
            }
            _mouse.x = var_120.mouseX;
            _mouse.y = var_120.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1119);
            if(var_956 != null && var_956 != "")
            {
               if(var_331 == null)
               {
                  var_331 = new Timer(var_957,1);
                  var_331.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_331.reset();
               var_331.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_246 != null && true)
         {
            var_246.destroy();
            var_246 = null;
         }
      }
   }
}
