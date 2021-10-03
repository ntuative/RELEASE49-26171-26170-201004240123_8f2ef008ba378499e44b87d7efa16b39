package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1028:int = 0;
      
      private var var_1306:int = 0;
      
      private var var_1995:String = "";
      
      private var var_1029:int = 0;
      
      private var var_2117:String = "";
      
      private var var_2115:int = 0;
      
      private var var_1513:String = "";
      
      private var var_2116:int = 0;
      
      private var var_2119:int = 0;
      
      private var var_1994:String = "";
      
      private var var_2118:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2116 = param1;
         var_1994 = param2;
         var_1513 = param3;
         var_1995 = param4;
         var_2117 = param5;
         if(param6)
         {
            var_1306 = 1;
         }
         else
         {
            var_1306 = 0;
         }
         var_2115 = param7;
         var_2119 = param8;
         var_1029 = param9;
         var_2118 = param10;
         var_1028 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2116,var_1994,var_1513,var_1995,var_2117,var_1306,var_2115,var_2119,var_1029,var_2118,var_1028];
      }
      
      public function dispose() : void
      {
      }
   }
}
