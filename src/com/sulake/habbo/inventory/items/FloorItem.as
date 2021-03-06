package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2278:Boolean;
      
      protected var var_1467:Number;
      
      protected var var_2276:Boolean;
      
      protected var _type:int;
      
      protected var var_2277:Boolean;
      
      protected var var_2240:int;
      
      protected var var_2275:Boolean;
      
      protected var var_1382:String;
      
      protected var var_1881:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1409:String;
      
      protected var var_1883:Boolean;
      
      protected var _category:int;
      
      protected var var_1882:int;
      
      protected var var_2293:int;
      
      protected var var_1880:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1883 = param5;
         var_2275 = param6;
         var_2278 = param7;
         var_2276 = param8;
         var_1382 = param9;
         var_1467 = param10;
         var_2293 = param11;
         var_1880 = param12;
         var_1882 = param13;
         var_1881 = param14;
         var_1409 = param15;
         var_2240 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2277;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1467;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2277 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_2240;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2276;
      }
      
      public function get slotId() : String
      {
         return var_1409;
      }
      
      public function get expires() : int
      {
         return var_2293;
      }
      
      public function get creationYear() : int
      {
         return var_1881;
      }
      
      public function get creationDay() : int
      {
         return var_1880;
      }
      
      public function get stuffData() : String
      {
         return var_1382;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2275;
      }
      
      public function get groupable() : Boolean
      {
         return var_1883;
      }
      
      public function get creationMonth() : int
      {
         return var_1882;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2278;
      }
   }
}
