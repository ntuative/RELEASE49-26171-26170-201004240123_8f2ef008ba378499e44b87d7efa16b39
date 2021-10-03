package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_886:Array;
      
      private var var_907:int;
      
      private var var_1316:String;
      
      private var _offerId:int;
      
      private var var_906:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1316 = param1.readString();
         var_907 = param1.readInteger();
         var_906 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_886 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_886.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_886;
      }
      
      public function get priceInCredits() : int
      {
         return var_907;
      }
      
      public function get localizationId() : String
      {
         return var_1316;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_906;
      }
   }
}
