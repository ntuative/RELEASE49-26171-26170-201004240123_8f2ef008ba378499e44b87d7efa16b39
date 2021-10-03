package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_235:String = "e";
      
      public static const const_85:String = "i";
      
      public static const const_80:String = "s";
       
      
      private var var_993:String;
      
      private var var_1185:String;
      
      private var var_1182:int;
      
      private var var_1721:int;
      
      private var var_994:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1185 = param1.readString();
         var_1721 = param1.readInteger();
         var_993 = param1.readString();
         var_994 = param1.readInteger();
         var_1182 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_994;
      }
      
      public function get productType() : String
      {
         return var_1185;
      }
      
      public function get expiration() : int
      {
         return var_1182;
      }
      
      public function get furniClassId() : int
      {
         return var_1721;
      }
      
      public function get extraParam() : String
      {
         return var_993;
      }
   }
}
