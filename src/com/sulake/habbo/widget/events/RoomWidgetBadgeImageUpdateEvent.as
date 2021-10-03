package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_684:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2225:BitmapData;
      
      private var var_2019:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_684,param3,param4);
         var_2019 = param1;
         var_2225 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_2225;
      }
      
      public function get badgeID() : String
      {
         return var_2019;
      }
   }
}
