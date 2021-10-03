package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1593:int;
      
      private var var_2187:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_2187 = param1.readString();
         var_1593 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1593;
      }
      
      public function get productItemType() : String
      {
         return var_2187;
      }
   }
}
