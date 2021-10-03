package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_135:int = 0;
      
      public static const const_114:int = 1;
      
      public static const const_105:int = 2;
      
      public static const const_707:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1225:int = 0;
      
      private var var_2109:String = "";
      
      private var var_201:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_201 = param2;
         var_1225 = param3;
         var_2109 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2109;
      }
      
      public function get chatType() : int
      {
         return var_1225;
      }
      
      public function get text() : String
      {
         return var_201;
      }
   }
}
