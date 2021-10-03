package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_260:uint = 1;
      
      public static const const_435:uint = 0;
      
      public static const const_1006:uint = 8;
      
      public static const const_243:uint = 4;
      
      public static const const_487:uint = 2;
       
      
      private var var_445:uint;
      
      private var var_1669:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1668:uint;
      
      private var var_97:Rectangle;
      
      private var var_639:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_97 = param3;
         _color = param4;
         var_445 = param5;
         var_1669 = param6;
         var_1668 = param7;
         var_639 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1669;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_445;
      }
      
      public function get scaleV() : uint
      {
         return var_1668;
      }
      
      public function get tags() : Array
      {
         return var_639;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_97 = null;
         var_639 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_97;
      }
   }
}
