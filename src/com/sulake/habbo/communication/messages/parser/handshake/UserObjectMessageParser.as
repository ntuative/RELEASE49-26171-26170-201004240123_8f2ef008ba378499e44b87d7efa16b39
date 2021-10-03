package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_322:String;
      
      private var var_2338:String;
      
      private var var_2336:int;
      
      private var var_2337:int;
      
      private var var_594:String;
      
      private var var_1201:String;
      
      private var _name:String;
      
      private var var_497:int;
      
      private var var_829:int;
      
      private var var_2340:int;
      
      private var var_1961:int;
      
      private var var_2339:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2337;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1201;
      }
      
      public function get customData() : String
      {
         return this.var_2338;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_497;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2336;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2339;
      }
      
      public function get figure() : String
      {
         return this.var_322;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1961;
      }
      
      public function get sex() : String
      {
         return this.var_594;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_322 = param1.readString();
         this.var_594 = param1.readString();
         this.var_2338 = param1.readString();
         this.var_1201 = param1.readString();
         this.var_2340 = param1.readInteger();
         this.var_2339 = param1.readString();
         this.var_2336 = param1.readInteger();
         this.var_2337 = param1.readInteger();
         this.var_1961 = param1.readInteger();
         this.var_829 = param1.readInteger();
         this.var_497 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2340;
      }
      
      public function get respectLeft() : int
      {
         return this.var_829;
      }
   }
}
