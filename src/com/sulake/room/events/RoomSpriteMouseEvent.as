package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1910:Boolean = false;
      
      private var var_1909:Boolean = false;
      
      private var var_1823:String = "";
      
      private var _type:String = "";
      
      private var var_1911:Boolean = false;
      
      private var var_1762:Number = 0;
      
      private var var_1924:Number = 0;
      
      private var var_1922:Number = 0;
      
      private var var_1923:String = "";
      
      private var var_1764:Number = 0;
      
      private var var_1908:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1923 = param2;
         var_1823 = param3;
         var_1924 = param4;
         var_1922 = param5;
         var_1762 = param6;
         var_1764 = param7;
         var_1908 = param8;
         var_1909 = param9;
         var_1911 = param10;
         var_1910 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1908;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1910;
      }
      
      public function get localX() : Number
      {
         return var_1762;
      }
      
      public function get localY() : Number
      {
         return var_1764;
      }
      
      public function get canvasId() : String
      {
         return var_1923;
      }
      
      public function get altKey() : Boolean
      {
         return var_1909;
      }
      
      public function get spriteTag() : String
      {
         return var_1823;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1924;
      }
      
      public function get screenY() : Number
      {
         return var_1922;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1911;
      }
   }
}
