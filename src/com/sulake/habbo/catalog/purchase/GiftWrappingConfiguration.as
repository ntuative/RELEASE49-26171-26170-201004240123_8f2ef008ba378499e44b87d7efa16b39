package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_634:Array;
      
      private var var_1369:int;
      
      private var var_1530:Array;
      
      private var var_633:Array;
      
      private var var_1135:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1135 = _loc2_.isWrappingEnabled;
         var_1369 = _loc2_.wrappingPrice;
         var_1530 = _loc2_.stuffTypes;
         var_633 = _loc2_.boxTypes;
         var_634 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_634;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1530;
      }
      
      public function get price() : int
      {
         return var_1369;
      }
      
      public function get boxTypes() : Array
      {
         return var_633;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1135;
      }
   }
}
