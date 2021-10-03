package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_452:uint;
      
      private var var_1102:IUnknown;
      
      private var var_1368:String;
      
      private var var_1101:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1101 = param1;
         var_1368 = getQualifiedClassName(var_1101);
         var_1102 = param2;
         var_452 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1101;
      }
      
      public function get disposed() : Boolean
      {
         return var_1102 == null;
      }
      
      public function get references() : uint
      {
         return var_452;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_452) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1102;
      }
      
      public function get iis() : String
      {
         return var_1368;
      }
      
      public function reserve() : uint
      {
         return ++var_452;
      }
      
      public function dispose() : void
      {
         var_1101 = null;
         var_1368 = null;
         var_1102 = null;
         var_452 = 0;
      }
   }
}
