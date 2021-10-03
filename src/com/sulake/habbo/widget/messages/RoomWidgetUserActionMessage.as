package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_677:String = "RWUAM_RESPECT_USER";
      
      public static const const_702:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_721:String = "RWUAM_START_TRADING";
      
      public static const const_635:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_613:String = "RWUAM_WHISPER_USER";
      
      public static const const_658:String = "RWUAM_IGNORE_USER";
      
      public static const const_468:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_562:String = "RWUAM_BAN_USER";
      
      public static const const_540:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_363:String = "RWUAM_KICK_USER";
      
      public static const const_661:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_531:String = " RWUAM_RESPECT_PET";
      
      public static const const_416:String = "RWUAM_KICK_BOT";
      
      public static const const_1270:String = "RWUAM_TRAIN_PET";
      
      public static const const_729:String = "RWUAM_PICKUP_PET";
      
      public static const const_542:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_565:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
