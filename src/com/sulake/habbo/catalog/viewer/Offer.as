package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_963:String = "price_type_none";
      
      public static const const_455:String = "pricing_model_multi";
      
      public static const const_335:String = "price_type_credits";
      
      public static const const_446:String = "price_type_credits_and_pixels";
      
      public static const const_376:String = "pricing_model_bundle";
      
      public static const const_461:String = "pricing_model_single";
      
      public static const const_744:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1143:String = "pricing_model_unknown";
      
      public static const const_441:String = "price_type_pixels";
       
      
      private var var_2147:int;
      
      private var var_907:int;
      
      private var _offerId:int;
      
      private var var_906:int;
      
      private var var_434:String;
      
      private var var_611:String;
      
      private var var_412:ICatalogPage;
      
      private var var_433:IProductContainer;
      
      private var var_1316:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1316 = param1.localizationId;
         var_907 = param1.priceInCredits;
         var_906 = param1.priceInPixels;
         var_412 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_434;
      }
      
      public function get page() : ICatalogPage
      {
         return var_412;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2147 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_433;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_906;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1316 = "";
         var_907 = 0;
         var_906 = 0;
         var_412 = null;
         if(var_433 != null)
         {
            var_433.dispose();
            var_433 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2147;
      }
      
      public function get priceInCredits() : int
      {
         return var_907;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_434 = const_461;
            }
            else
            {
               var_434 = const_455;
            }
         }
         else if(param1.length > 1)
         {
            var_434 = const_376;
         }
         else
         {
            var_434 = const_1143;
         }
      }
      
      public function get priceType() : String
      {
         return var_611;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_434)
         {
            case const_461:
               var_433 = new SingleProductContainer(this,param1);
               break;
            case const_455:
               var_433 = new MultiProductContainer(this,param1);
               break;
            case const_376:
               var_433 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_434);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1316;
      }
      
      private function analyzePriceType() : void
      {
         if(var_907 > 0 && var_906 > 0)
         {
            var_611 = const_446;
         }
         else if(var_907 > 0)
         {
            var_611 = const_335;
         }
         else if(var_906 > 0)
         {
            var_611 = const_441;
         }
         else
         {
            var_611 = const_963;
         }
      }
   }
}
