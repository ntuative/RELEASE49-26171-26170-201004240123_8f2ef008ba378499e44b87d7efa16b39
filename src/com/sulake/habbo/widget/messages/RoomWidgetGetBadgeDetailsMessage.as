package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_513:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_975:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_513);
         var_975 = param1;
      }
      
      public function get groupId() : int
      {
         return var_975;
      }
   }
}
