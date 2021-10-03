package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2104:Number = 0;
      
      private var var_2103:Number = 0;
      
      private var var_2105:Number = 0;
      
      private var var_2102:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_2103 = param1;
         var_2105 = param2;
         var_2104 = param3;
         var_2102 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_2103;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2104;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_2105;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2102;
      }
   }
}
