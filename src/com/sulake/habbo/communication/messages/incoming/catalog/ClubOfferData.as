package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1639:int;
      
      private var var_1369:int;
      
      private var var_1640:int;
      
      private var _offerId:int;
      
      private var var_1636:int;
      
      private var var_1635:int;
      
      private var var_1634:Boolean;
      
      private var var_1637:int;
      
      private var var_1633:Boolean;
      
      private var var_1169:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1169 = param1.readString();
         var_1369 = param1.readInteger();
         var_1633 = param1.readBoolean();
         var_1634 = param1.readBoolean();
         var_1640 = param1.readInteger();
         var_1637 = param1.readInteger();
         var_1636 = param1.readInteger();
         var_1639 = param1.readInteger();
         var_1635 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1636;
      }
      
      public function get month() : int
      {
         return var_1639;
      }
      
      public function get price() : int
      {
         return var_1369;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1640;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1637;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1633;
      }
      
      public function get day() : int
      {
         return var_1635;
      }
      
      public function get vip() : Boolean
      {
         return var_1634;
      }
      
      public function get productCode() : String
      {
         return var_1169;
      }
   }
}
