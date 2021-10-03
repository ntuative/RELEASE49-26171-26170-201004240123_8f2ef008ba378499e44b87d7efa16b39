package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1161:int = 4;
      
      public static const const_572:int = 3;
      
      public static const const_737:int = 2;
      
      public static const const_898:int = 1;
       
      
      private var var_2145:String;
      
      private var _disposed:Boolean;
      
      private var var_1679:int;
      
      private var var_2141:Boolean;
      
      private var var_889:String;
      
      private var var_904:PublicRoomData;
      
      private var var_2142:int;
      
      private var _index:int;
      
      private var var_2144:String;
      
      private var _type:int;
      
      private var var_1687:String;
      
      private var var_905:GuestRoomData;
      
      private var var_2143:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2145 = param1.readString();
         var_2143 = param1.readString();
         var_2141 = param1.readInteger() == 1;
         var_2144 = param1.readString();
         var_889 = param1.readString();
         var_2142 = param1.readInteger();
         var_1679 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_898)
         {
            var_1687 = param1.readString();
         }
         else if(_type == const_572)
         {
            var_904 = new PublicRoomData(param1);
         }
         else if(_type == const_737)
         {
            var_905 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2142;
      }
      
      public function get popupCaption() : String
      {
         return var_2145;
      }
      
      public function get userCount() : int
      {
         return var_1679;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2141;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_898)
         {
            return 0;
         }
         if(this.type == const_737)
         {
            return this.var_905.maxUserCount;
         }
         if(this.type == const_572)
         {
            return this.var_904.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2143;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_905 != null)
         {
            this.var_905.dispose();
            this.var_905 = null;
         }
         if(this.var_904 != null)
         {
            this.var_904.dispose();
            this.var_904 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_905;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2144;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_904;
      }
      
      public function get picRef() : String
      {
         return var_889;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1687;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
