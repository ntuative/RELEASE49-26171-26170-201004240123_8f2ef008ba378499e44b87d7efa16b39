package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_353:Number = 0.5;
      
      private static const const_793:int = 3;
      
      private static const const_1127:Number = 1;
       
      
      private var var_2155:Boolean = false;
      
      private var var_2154:Boolean = false;
      
      private var var_1069:int = 0;
      
      private var var_280:Vector3d = null;
      
      private var var_2156:int = 0;
      
      private var var_2157:int = 0;
      
      private var var_2151:Boolean = false;
      
      private var var_2158:int = -2;
      
      private var var_2160:Boolean = false;
      
      private var var_2152:int = 0;
      
      private var var_2153:int = -1;
      
      private var var_437:Vector3d = null;
      
      private var var_2159:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2156;
      }
      
      public function get targetId() : int
      {
         return var_2153;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2152 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2156 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2155 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2153 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2154 = param1;
      }
      
      public function dispose() : void
      {
         var_437 = null;
         var_280 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_437 == null)
         {
            var_437 = new Vector3d();
         }
         var_437.assign(param1);
         var_1069 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2158;
      }
      
      public function get screenHt() : int
      {
         return var_2159;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2157 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_280;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2159 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2152;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2155;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2154;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_437 != null && var_280 != null)
         {
            ++var_1069;
            _loc2_ = Vector3d.dif(var_437,var_280);
            if(_loc2_.length <= const_353)
            {
               var_280 = var_437;
               var_437 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_353 * (const_793 + 1))
               {
                  _loc2_.mul(const_353);
               }
               else if(var_1069 <= const_793)
               {
                  _loc2_.mul(const_353);
               }
               else
               {
                  _loc2_.mul(const_1127);
               }
               var_280 = Vector3d.sum(var_280,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2151 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2157;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2160 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2158 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_280 != null)
         {
            return;
         }
         var_280 = new Vector3d();
         var_280.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2151;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2160;
      }
   }
}
