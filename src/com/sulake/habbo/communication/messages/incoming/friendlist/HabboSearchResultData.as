package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2348:Boolean;
      
      private var var_2346:int;
      
      private var var_2345:Boolean;
      
      private var var_1523:String;
      
      private var var_1201:String;
      
      private var var_1900:int;
      
      private var var_2035:String;
      
      private var var_2347:String;
      
      private var var_2036:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1900 = param1.readInteger();
         this.var_1523 = param1.readString();
         this.var_2035 = param1.readString();
         this.var_2348 = param1.readBoolean();
         this.var_2345 = param1.readBoolean();
         param1.readString();
         this.var_2346 = param1.readInteger();
         this.var_2036 = param1.readString();
         this.var_2347 = param1.readString();
         this.var_1201 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1201;
      }
      
      public function get avatarName() : String
      {
         return this.var_1523;
      }
      
      public function get avatarId() : int
      {
         return this.var_1900;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2348;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2347;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2036;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2345;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2035;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2346;
      }
   }
}
