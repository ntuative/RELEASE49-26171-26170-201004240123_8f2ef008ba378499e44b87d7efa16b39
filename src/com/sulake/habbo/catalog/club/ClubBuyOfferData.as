package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1639:int;
      
      private var var_1638:Boolean = false;
      
      private var var_1640:int;
      
      private var var_1636:int;
      
      private var var_1637:int;
      
      private var var_1169:String;
      
      private var var_1369:int;
      
      private var _offerId:int;
      
      private var var_1635:int;
      
      private var var_1634:Boolean;
      
      private var var_1633:Boolean;
      
      private var var_412:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1169 = param2;
         var_1369 = param3;
         var_1633 = param4;
         var_1634 = param5;
         var_1640 = param6;
         var_1637 = param7;
         var_1636 = param8;
         var_1639 = param9;
         var_1635 = param10;
      }
      
      public function get month() : int
      {
         return var_1639;
      }
      
      public function get page() : ICatalogPage
      {
         return var_412;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1634;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_412 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_335;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1633;
      }
      
      public function get localizationId() : String
      {
         return var_1169;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1637;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_1638;
      }
      
      public function get day() : int
      {
         return var_1635;
      }
      
      public function get year() : int
      {
         return var_1636;
      }
      
      public function get price() : int
      {
         return var_1369;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_1638 = param1;
      }
      
      public function get periods() : int
      {
         return var_1640;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1369;
      }
      
      public function get productCode() : String
      {
         return var_1169;
      }
   }
}
