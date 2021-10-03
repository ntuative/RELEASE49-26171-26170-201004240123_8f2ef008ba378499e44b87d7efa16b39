package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1575:int;
      
      private var var_1574:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1575;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1575 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1575 = this.var_1575;
         _loc1_.var_1574 = this.var_1574;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1574 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1574;
      }
   }
}
