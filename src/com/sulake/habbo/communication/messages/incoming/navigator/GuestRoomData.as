package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1679:int;
      
      private var var_1671:String;
      
      private var var_1674:int;
      
      private var var_1672:int;
      
      private var var_692:Boolean;
      
      private var var_1675:Boolean;
      
      private var var_443:int;
      
      private var var_1165:String;
      
      private var var_1677:int;
      
      private var var_1200:int;
      
      private var _ownerName:String;
      
      private var var_711:String;
      
      private var var_1676:int;
      
      private var var_1673:RoomThumbnailData;
      
      private var var_1678:Boolean;
      
      private var var_639:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_639 = new Array();
         super();
         var_443 = param1.readInteger();
         var_692 = param1.readBoolean();
         var_711 = param1.readString();
         _ownerName = param1.readString();
         var_1677 = param1.readInteger();
         var_1679 = param1.readInteger();
         var_1676 = param1.readInteger();
         var_1165 = param1.readString();
         var_1674 = param1.readInteger();
         var_1678 = param1.readBoolean();
         var_1672 = param1.readInteger();
         var_1200 = param1.readInteger();
         var_1671 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_639.push(_loc4_);
            _loc3_++;
         }
         var_1673 = new RoomThumbnailData(param1);
         var_1675 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1676;
      }
      
      public function get roomName() : String
      {
         return var_711;
      }
      
      public function get userCount() : int
      {
         return var_1679;
      }
      
      public function get score() : int
      {
         return var_1672;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1671;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1678;
      }
      
      public function get tags() : Array
      {
         return var_639;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1675;
      }
      
      public function get event() : Boolean
      {
         return var_692;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_639 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1200;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1674;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1673;
      }
      
      public function get doorMode() : int
      {
         return var_1677;
      }
      
      public function get flatId() : int
      {
         return var_443;
      }
      
      public function get description() : String
      {
         return var_1165;
      }
   }
}
