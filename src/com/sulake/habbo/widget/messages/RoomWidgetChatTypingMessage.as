package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_710:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_483:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_710);
         var_483 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_483;
      }
   }
}
