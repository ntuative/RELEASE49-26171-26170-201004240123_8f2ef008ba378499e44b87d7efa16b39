package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1622:int = 9;
      
      public static const const_1445:int = 4;
      
      public static const const_1534:int = 1;
      
      public static const const_1311:int = 10;
      
      public static const const_1484:int = 2;
      
      public static const const_1252:int = 7;
      
      public static const const_1182:int = 11;
      
      public static const const_1537:int = 3;
      
      public static const const_1337:int = 8;
      
      public static const const_1392:int = 5;
      
      public static const const_1489:int = 6;
      
      public static const const_1319:int = 12;
       
      
      private var var_1686:String;
      
      private var _roomId:int;
      
      private var var_1178:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1686;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1178 = param1.readInteger();
         var_1686 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1178;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
