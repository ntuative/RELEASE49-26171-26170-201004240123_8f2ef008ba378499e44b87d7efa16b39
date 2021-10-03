package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2051:int;
      
      private var var_2047:String;
      
      private var var_1587:IActionDefinition;
      
      private var var_2049:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2046:String;
      
      private var var_2048:String;
      
      private var var_1735:Boolean;
      
      private var var_2045:ColorTransform;
      
      private var var_2050:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2047 = param1;
         var_2046 = param2;
         var_2051 = param3;
         _color = param4;
         _frames = param5;
         var_1587 = param6;
         var_1735 = param7;
         var_2050 = param8;
         var_2048 = param9;
         var_2049 = param10;
         var_2045 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1735;
      }
      
      public function get partType() : String
      {
         return var_2046;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_2050;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2049;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2051;
      }
      
      public function get flippedPartType() : String
      {
         return var_2048;
      }
      
      public function get bodyPartId() : String
      {
         return var_2047;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1587;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2045;
      }
   }
}
