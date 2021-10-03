package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_369:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_541:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_760:String;
      
      private var var_155:int;
      
      private var var_201:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_155 = param2;
         var_201 = param3;
         var_760 = param4;
      }
      
      public function get objectId() : int
      {
         return var_155;
      }
      
      public function get text() : String
      {
         return var_201;
      }
      
      public function get colorHex() : String
      {
         return var_760;
      }
   }
}
