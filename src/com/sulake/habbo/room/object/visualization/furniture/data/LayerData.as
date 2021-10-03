package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_462:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_375:int = 0;
      
      public static const const_840:int = 2;
      
      public static const const_857:int = 1;
      
      public static const const_548:Boolean = false;
      
      public static const const_678:String = "";
      
      public static const const_443:int = 0;
      
      public static const const_448:int = 0;
      
      public static const const_430:int = 0;
       
      
      private var var_1837:int = 0;
      
      private var var_1687:String = "";
      
      private var var_1591:int = 0;
      
      private var var_1834:int = 0;
      
      private var var_1836:Number = 0;
      
      private var var_1835:int = 255;
      
      private var var_1838:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1837;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1591 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1836;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1834 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1837 = param1;
      }
      
      public function get tag() : String
      {
         return var_1687;
      }
      
      public function get alpha() : int
      {
         return var_1835;
      }
      
      public function get ink() : int
      {
         return var_1591;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1836 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1834;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1838 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1838;
      }
      
      public function set tag(param1:String) : void
      {
         var_1687 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1835 = param1;
      }
   }
}
