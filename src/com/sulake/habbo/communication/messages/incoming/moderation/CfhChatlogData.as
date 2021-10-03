package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1741:int;
      
      private var var_1076:int;
      
      private var var_1742:int;
      
      private var var_1428:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1428 = param1.readInteger();
         var_1742 = param1.readInteger();
         var_1076 = param1.readInteger();
         var_1741 = param1.readInteger();
         var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1428);
      }
      
      public function get chatRecordId() : int
      {
         return var_1741;
      }
      
      public function get reportedUserId() : int
      {
         return var_1076;
      }
      
      public function get callerUserId() : int
      {
         return var_1742;
      }
      
      public function get callId() : int
      {
         return var_1428;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_111;
      }
   }
}
