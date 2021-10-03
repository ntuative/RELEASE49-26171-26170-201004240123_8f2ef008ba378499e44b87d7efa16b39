package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1596:String;
      
      private var var_642:String;
      
      private var var_1597:String;
      
      private var var_1595:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1595 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1596 = _loc5_[0];
         var_1597 = _loc5_[1];
         _name = param2;
         var_642 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1596;
      }
      
      public function get languageCode() : String
      {
         return var_1595;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_642;
      }
      
      public function get encoding() : String
      {
         return var_1597;
      }
      
      public function get id() : String
      {
         return var_1595 + "_" + var_1596 + "." + var_1597;
      }
   }
}
