package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1281:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_874:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1281 = param1;
         var_874 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_874;
      }
      
      public function get identifier() : IID
      {
         return var_1281;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1281 = null;
            while(false)
            {
               var_874.pop();
            }
            var_874 = null;
         }
      }
   }
}
