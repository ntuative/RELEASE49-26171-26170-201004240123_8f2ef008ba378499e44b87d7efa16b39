package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_120:DisplayObject;
      
      private var var_2334:uint;
      
      private var var_900:IWindowToolTipAgentService;
      
      private var var_897:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_898:IWindowFocusManagerService;
      
      private var var_896:IWindowMouseListenerService;
      
      private var var_899:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2334 = 0;
         var_120 = param2;
         _windowContext = param1;
         var_899 = new WindowMouseDragger(param2);
         var_897 = new WindowMouseScaler(param2);
         var_896 = new WindowMouseListener(param2);
         var_898 = new FocusManager(param2);
         var_900 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_897;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_898;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_900;
      }
      
      public function dispose() : void
      {
         if(var_899 != null)
         {
            var_899.dispose();
            var_899 = null;
         }
         if(var_897 != null)
         {
            var_897.dispose();
            var_897 = null;
         }
         if(var_896 != null)
         {
            var_896.dispose();
            var_896 = null;
         }
         if(var_898 != null)
         {
            var_898.dispose();
            var_898 = null;
         }
         if(var_900 != null)
         {
            var_900.dispose();
            var_900 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_896;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_899;
      }
   }
}
