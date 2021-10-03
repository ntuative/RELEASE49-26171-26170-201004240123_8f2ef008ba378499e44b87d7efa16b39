package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_387:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_327:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_819:int;
      
      private var var_288:Boolean;
      
      private var var_2139:Boolean;
      
      private var var_1539:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_819 = param2;
         var_2139 = param3;
         var_288 = param4;
         var_1539 = param5;
      }
      
      public function get position() : int
      {
         return var_819;
      }
      
      public function get isActive() : Boolean
      {
         return var_288;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1539;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2139;
      }
   }
}
