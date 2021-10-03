package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1369:int;
      
      private var var_1945:int = -1;
      
      private var var_186:int;
      
      private var var_1944:int;
      
      private var var_1943:int;
      
      private var _offerId:int;
      
      private var var_1370:int;
      
      private var var_1942:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1942 = param2;
         var_1943 = param3;
         var_1369 = param4;
         var_186 = param5;
         var_1945 = param6;
         var_1944 = param7;
         var_1370 = param8;
      }
      
      public function get status() : int
      {
         return var_186;
      }
      
      public function get price() : int
      {
         return var_1369;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1945;
      }
      
      public function get offerCount() : int
      {
         return var_1370;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1943;
      }
      
      public function get averagePrice() : int
      {
         return var_1944;
      }
      
      public function get furniId() : int
      {
         return var_1942;
      }
   }
}
