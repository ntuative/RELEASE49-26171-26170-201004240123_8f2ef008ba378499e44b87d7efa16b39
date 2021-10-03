package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_450:FloorRasterizer;
      
      private var var_839:Boolean = false;
      
      private var var_631:PlaneMaskManager;
      
      private var var_451:WallRasterizer;
      
      private var var_632:WallAdRasterizer;
      
      private var var_449:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_451 = new WallRasterizer();
         var_450 = new FloorRasterizer();
         var_632 = new WallAdRasterizer();
         var_449 = new LandscapeRasterizer();
         var_631 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_451;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_632;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_450;
      }
      
      public function get initialized() : Boolean
      {
         return var_839;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_631;
      }
      
      public function dispose() : void
      {
         if(var_451 != null)
         {
            var_451.dispose();
            var_451 = null;
         }
         if(var_450 != null)
         {
            var_450.dispose();
            var_450 = null;
         }
         if(var_632 != null)
         {
            var_632.dispose();
            var_632 = null;
         }
         if(var_449 != null)
         {
            var_449.dispose();
            var_449 = null;
         }
         if(var_631 != null)
         {
            var_631.dispose();
            var_631 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_451.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_450.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_632.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_449.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_631.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_451 != null)
         {
            var_451.clearCache();
         }
         if(var_450 != null)
         {
            var_450.clearCache();
         }
         if(var_449 != null)
         {
            var_449.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_449;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_839)
         {
            return;
         }
         var_451.initializeAssetCollection(param1);
         var_450.initializeAssetCollection(param1);
         var_632.initializeAssetCollection(param1);
         var_449.initializeAssetCollection(param1);
         var_631.initializeAssetCollection(param1);
         var_839 = true;
      }
   }
}
