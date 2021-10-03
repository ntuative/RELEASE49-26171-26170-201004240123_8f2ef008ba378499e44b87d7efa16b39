package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_116:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1176:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_116);
         var_1176 = param1;
      }
      
      public function get vote() : int
      {
         return var_1176;
      }
   }
}
