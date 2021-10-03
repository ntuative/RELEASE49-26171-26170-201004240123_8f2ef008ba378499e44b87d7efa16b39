package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_372:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_457:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_83:String = "RWPDUE_CONTENTS";
      
      public static const const_360:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_404:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_67:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_201:String;
      
      private var var_2017:BitmapData;
      
      private var var_155:int = -1;
      
      private var var_48:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_155 = param2;
         var_201 = param3;
         var_48 = param4;
         var_2017 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_2017;
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
