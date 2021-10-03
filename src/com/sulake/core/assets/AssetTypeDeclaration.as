package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1963:Class;
      
      private var var_1964:Class;
      
      private var var_1962:String;
      
      private var var_1245:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1962 = param1;
         var_1964 = param2;
         var_1963 = param3;
         if(rest == null)
         {
            var_1245 = new Array();
         }
         else
         {
            var_1245 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1963;
      }
      
      public function get assetClass() : Class
      {
         return var_1964;
      }
      
      public function get mimeType() : String
      {
         return var_1962;
      }
      
      public function get fileTypes() : Array
      {
         return var_1245;
      }
   }
}
