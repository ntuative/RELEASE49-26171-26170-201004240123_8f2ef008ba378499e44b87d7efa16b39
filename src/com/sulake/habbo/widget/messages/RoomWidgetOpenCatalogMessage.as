package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_832:String = "RWOCM_CLUB_MAIN";
      
      public static const const_695:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2267:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_695);
         var_2267 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2267;
      }
   }
}
