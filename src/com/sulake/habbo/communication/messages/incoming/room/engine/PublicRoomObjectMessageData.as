package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_1022:int = 0;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_210:Boolean = false;
      
      private var var_216:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_85:Number = 0;
      
      private var var_1024:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_210)
         {
            var_84 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1022;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_216;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_210)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_210)
         {
            var_216 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_210)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_210 = true;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_210)
         {
            var_1022 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_210)
         {
            var_1024 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_210)
         {
            var_85 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_210)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1024;
      }
   }
}
