package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1103:String;
      
      private var var_1791:int;
      
      private var var_1885:int;
      
      private var var_1467:int;
      
      private var var_1881:int;
      
      private var _category:int;
      
      private var var_2380:int;
      
      private var var_1880:int;
      
      private var var_1884:int;
      
      private var var_1879:int;
      
      private var var_1882:int;
      
      private var var_1883:Boolean;
      
      private var var_1382:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1791 = param1;
         var_1103 = param2;
         var_1885 = param3;
         var_1879 = param4;
         _category = param5;
         var_1382 = param6;
         var_1467 = param7;
         var_1884 = param8;
         var_1880 = param9;
         var_1882 = param10;
         var_1881 = param11;
         var_1883 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1879;
      }
      
      public function get extra() : int
      {
         return var_1467;
      }
      
      public function get stuffData() : String
      {
         return var_1382;
      }
      
      public function get groupable() : Boolean
      {
         return var_1883;
      }
      
      public function get creationMonth() : int
      {
         return var_1882;
      }
      
      public function get roomItemID() : int
      {
         return var_1885;
      }
      
      public function get itemType() : String
      {
         return var_1103;
      }
      
      public function get itemID() : int
      {
         return var_1791;
      }
      
      public function get songID() : int
      {
         return var_1467;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1884;
      }
      
      public function get creationYear() : int
      {
         return var_1881;
      }
      
      public function get creationDay() : int
      {
         return var_1880;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
