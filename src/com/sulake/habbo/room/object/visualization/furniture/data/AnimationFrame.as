package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_560:int = -1;
      
      public static const const_957:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2122:int = -1;
      
      private var var_85:int = 0;
      
      private var var_1309:int = 1;
      
      private var var_895:int = 1;
      
      private var var_2121:Boolean = false;
      
      private var var_2120:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_2121 = param5;
         if(param4 < 0)
         {
            param4 = const_560;
         }
         var_895 = param4;
         var_1309 = param4;
         if(param6 >= 0)
         {
            var_2122 = param6;
            var_2120 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_895 > 0 && param1 > var_895)
         {
            param1 = var_895;
         }
         var_1309 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_895;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2120;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_895 < 0)
         {
            return const_560;
         }
         return var_1309;
      }
      
      public function get activeSequence() : int
      {
         return var_2122;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2121;
      }
      
      public function get x() : int
      {
         return var_85;
      }
   }
}
