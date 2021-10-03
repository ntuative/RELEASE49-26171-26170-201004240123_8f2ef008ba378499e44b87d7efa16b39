package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1706:int;
      
      private var var_1705:Boolean;
      
      private var _offerId:int;
      
      private var var_1704:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1705 = param1.readBoolean();
         var_1706 = param1.readInteger();
         var_1704 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1704;
      }
      
      public function get monthsRequired() : int
      {
         return var_1706;
      }
      
      public function get isVip() : Boolean
      {
         return var_1705;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
