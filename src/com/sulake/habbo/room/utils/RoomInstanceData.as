package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_780:LegacyWallGeometry = null;
      
      private var var_558:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_560:TileHeightMap = null;
      
      private var var_1661:String = null;
      
      private var _roomId:int = 0;
      
      private var var_559:SelectedRoomObjectData = null;
      
      private var var_779:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_780 = new LegacyWallGeometry();
         var_779 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_558 != null)
         {
            var_558.dispose();
         }
         var_558 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_560 != null)
         {
            var_560.dispose();
         }
         var_560 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1661 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_780;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_559;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_779;
      }
      
      public function dispose() : void
      {
         if(var_560 != null)
         {
            var_560.dispose();
            var_560 = null;
         }
         if(var_780 != null)
         {
            var_780.dispose();
            var_780 = null;
         }
         if(var_779 != null)
         {
            var_779.dispose();
            var_779 = null;
         }
         if(var_558 != null)
         {
            var_558.dispose();
            var_558 = null;
         }
         if(var_559 != null)
         {
            var_559.dispose();
            var_559 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_560;
      }
      
      public function get worldType() : String
      {
         return var_1661;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_559 != null)
         {
            var_559.dispose();
         }
         var_559 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_558;
      }
   }
}
