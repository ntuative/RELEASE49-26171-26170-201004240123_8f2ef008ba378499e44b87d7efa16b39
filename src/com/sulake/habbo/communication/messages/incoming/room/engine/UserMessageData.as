package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1164:String = "F";
      
      public static const const_998:String = "M";
       
      
      private var var_85:Number = 0;
      
      private var var_322:String = "";
      
      private var var_2236:int = 0;
      
      private var var_1812:String = "";
      
      private var var_1810:int = 0;
      
      private var var_1813:int = 0;
      
      private var var_1811:String = "";
      
      private var var_594:String = "";
      
      private var _id:int = 0;
      
      private var var_210:Boolean = false;
      
      private var var_216:int = 0;
      
      private var var_2235:String = "";
      
      private var _name:String = "";
      
      private var var_1814:int = 0;
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_216;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_210)
         {
            var_216 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_210)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2236;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_210)
         {
            var_1810 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2235;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_210)
         {
            var_1811 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_210)
         {
            var_2235 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_210)
         {
            var_1813 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_210)
         {
            var_322 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_210)
         {
            var_2236 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_210)
         {
            var_594 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1810;
      }
      
      public function get groupID() : String
      {
         return var_1811;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_210)
         {
            var_1814 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_210)
         {
            var_1812 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_210 = true;
      }
      
      public function get sex() : String
      {
         return var_594;
      }
      
      public function get figure() : String
      {
         return var_322;
      }
      
      public function get webID() : int
      {
         return var_1814;
      }
      
      public function get custom() : String
      {
         return var_1812;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_210)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_210)
         {
            var_84 = param1;
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
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1813;
      }
   }
}
