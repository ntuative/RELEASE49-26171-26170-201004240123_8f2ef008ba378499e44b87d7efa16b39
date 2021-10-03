package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_226:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1746:Boolean = false;
      
      private var var_1744:int = 0;
      
      private var var_1748:int = 0;
      
      private var var_1745:int;
      
      private var var_1747:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_226,param6,param7);
         var_1747 = param1;
         var_1748 = param2;
         var_1744 = param3;
         var_1746 = param4;
         var_1745 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1745;
      }
      
      public function get pastPeriods() : int
      {
         return var_1744;
      }
      
      public function get periodsLeft() : int
      {
         return var_1748;
      }
      
      public function get daysLeft() : int
      {
         return var_1747;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1746;
      }
   }
}
