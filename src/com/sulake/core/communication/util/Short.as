package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_650:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_650 = new ByteArray();
         var_650.writeShort(param1);
         var_650.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_650.position = 0;
         if(false)
         {
            _loc1_ = var_650.readShort();
            var_650.position = 0;
         }
         return _loc1_;
      }
   }
}
