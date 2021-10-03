package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_322:String;
      
      private var var_1202:String;
      
      private var var_1203:String;
      
      private var var_1200:int;
      
      private var var_563:int;
      
      private var var_1201:String;
      
      private var _name:String;
      
      private var var_1170:Boolean;
      
      private var var_712:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_563 = param1.readInteger();
         this.var_712 = param1.readBoolean();
         this.var_1170 = param1.readBoolean();
         this.var_322 = param1.readString();
         this.var_1200 = param1.readInteger();
         this.var_1203 = param1.readString();
         this.var_1202 = param1.readString();
         this.var_1201 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_563;
      }
      
      public function get realName() : String
      {
         return var_1201;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1203;
      }
      
      public function get categoryId() : int
      {
         return var_1200;
      }
      
      public function get online() : Boolean
      {
         return var_712;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1170;
      }
      
      public function get lastAccess() : String
      {
         return var_1202;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_322;
      }
   }
}
