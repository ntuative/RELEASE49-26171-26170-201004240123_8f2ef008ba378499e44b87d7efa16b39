package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomPropertyMessageParser implements IMessageParser
   {
       
      
      private var var_1361:String = null;
      
      private var _floorType:String = null;
      
      private var var_1360:String = null;
      
      private var _roomId:int = 0;
      
      private var var_1362:String = null;
      
      private var _roomCategory:int = 0;
      
      public function RoomPropertyMessageParser()
      {
         super();
      }
      
      public function get wallType() : String
      {
         return var_1361;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get floorType() : String
      {
         return _floorType;
      }
      
      public function get method_12() : String
      {
         return var_1360;
      }
      
      public function flush() : Boolean
      {
         _floorType = null;
         var_1361 = null;
         var_1362 = null;
         var_1360 = null;
         return true;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:String = param1.readString();
         var _loc3_:String = param1.readString();
         switch(_loc2_)
         {
            case "floor":
               _floorType = _loc3_;
               break;
            case "wallpaper":
               var_1361 = _loc3_;
               break;
            case "landscape":
               var_1362 = _loc3_;
               break;
            case "landscapeanim":
               var_1360 = _loc3_;
         }
         return true;
      }
      
      public function get landscapeType() : String
      {
         return var_1362;
      }
   }
}
