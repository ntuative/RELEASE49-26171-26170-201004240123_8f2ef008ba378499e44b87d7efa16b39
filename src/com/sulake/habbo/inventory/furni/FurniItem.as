package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1767:int;
      
      private var var_2259:Boolean;
      
      private var var_2240:int;
      
      private var var_1382:String;
      
      private var var_2262:Boolean = false;
      
      private var var_1648:int;
      
      private var var_456:int;
      
      private var var_1103:String;
      
      private var var_1409:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1272:int;
      
      private var var_2257:Boolean;
      
      private var var_2261:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1767 = param1;
         var_1103 = param2;
         _objId = param3;
         var_1272 = param4;
         var_1382 = param5;
         var_2259 = param6;
         var_2257 = param7;
         var_1648 = param8;
         var_1409 = param9;
         var_2240 = param10;
         var_456 = -1;
      }
      
      public function get songId() : int
      {
         return var_2240;
      }
      
      public function get iconCallbackId() : int
      {
         return var_456;
      }
      
      public function get expiryTime() : int
      {
         return var_1648;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2261 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2262 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_456 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2257;
      }
      
      public function get slotId() : String
      {
         return var_1409;
      }
      
      public function get classId() : int
      {
         return var_1272;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2259;
      }
      
      public function get stuffData() : String
      {
         return var_1382;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1767;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2262;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2261;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1103;
      }
   }
}
