package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1514:Array;
      
      private var var_1944:int;
      
      private var var_2006:int;
      
      private var var_2005:int;
      
      private var var_2008:int;
      
      private var _dayOffsets:Array;
      
      private var var_2007:int;
      
      private var var_1515:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1514;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1514 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_2006;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1515 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1944 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_2005;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2008;
      }
      
      public function get offerCount() : int
      {
         return var_2007;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_2007 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1515;
      }
      
      public function get averagePrice() : int
      {
         return var_1944;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_2008 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_2005 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_2006 = param1;
      }
   }
}
