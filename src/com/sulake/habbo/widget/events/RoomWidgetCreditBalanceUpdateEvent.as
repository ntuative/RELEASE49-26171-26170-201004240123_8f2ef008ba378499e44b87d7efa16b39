package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditBalanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_176:String = "RWCBUE_CREDIT_BALANCE";
       
      
      private var var_1887:int;
      
      public function RoomWidgetCreditBalanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_176,param2,param3);
         var_1887 = param1;
      }
      
      public function get balance() : int
      {
         return var_1887;
      }
   }
}
