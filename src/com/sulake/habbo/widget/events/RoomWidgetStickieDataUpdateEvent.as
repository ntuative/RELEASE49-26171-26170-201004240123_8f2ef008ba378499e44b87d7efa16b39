package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_711:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_201:String;
      
      private var var_760:String;
      
      private var var_1576:String;
      
      private var var_155:int = -1;
      
      private var var_48:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_155 = param2;
         var_1576 = param3;
         var_201 = param4;
         var_760 = param5;
         var_48 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1576;
      }
      
      public function get colorHex() : String
      {
         return var_760;
      }
      
      public function get text() : String
      {
         return var_201;
      }
      
      public function get objectId() : int
      {
         return var_155;
      }
      
      public function get controller() : Boolean
      {
         return var_48;
      }
   }
}
