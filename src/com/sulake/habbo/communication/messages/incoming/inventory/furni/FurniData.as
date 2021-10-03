package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1382:String;
      
      private var var_1103:String;
      
      private var var_2256:Boolean;
      
      private var var_1467:int;
      
      private var var_1767:int;
      
      private var var_2258:Boolean;
      
      private var var_1409:String = "";
      
      private var var_2259:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1272:int;
      
      private var var_2257:Boolean;
      
      private var var_2240:int = -1;
      
      private var var_1648:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1767 = param1;
         var_1103 = param2;
         _objId = param3;
         var_1272 = param4;
         _category = param5;
         var_1382 = param6;
         var_2256 = param7;
         var_2259 = param8;
         var_2257 = param9;
         var_2258 = param10;
         var_1648 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1409;
      }
      
      public function get extra() : int
      {
         return var_1467;
      }
      
      public function get classId() : int
      {
         return var_1272;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2258;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2256;
      }
      
      public function get stripId() : int
      {
         return var_1767;
      }
      
      public function get stuffData() : String
      {
         return var_1382;
      }
      
      public function get songId() : int
      {
         return var_2240;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1409 = param1;
         var_1467 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1103;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1648;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2257;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2259;
      }
   }
}
