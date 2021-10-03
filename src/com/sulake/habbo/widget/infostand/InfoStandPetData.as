package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1619:int;
      
      private var var_1620:int;
      
      private var var_1621:int;
      
      private var _type:int;
      
      private var var_1148:int = -1;
      
      private var var_1625:int;
      
      private var _nutrition:int;
      
      private var var_1627:int;
      
      private var _energy:int;
      
      private var var_1617:int;
      
      private var var_1626:int;
      
      private var var_1624:int;
      
      private var var_1618:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1623:Boolean;
      
      private var _name:String = "";
      
      private var var_1622:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1623;
      }
      
      public function get level() : int
      {
         return var_1619;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1627;
      }
      
      public function get id() : int
      {
         return var_1148;
      }
      
      public function get nutritionMax() : int
      {
         return var_1621;
      }
      
      public function get ownerId() : int
      {
         return var_1622;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1148 = param1.id;
         _type = param1.petType;
         var_1617 = param1.petRace;
         _image = param1.image;
         var_1623 = param1.isOwnPet;
         var_1622 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1619 = param1.level;
         var_1625 = param1.levelMax;
         var_1620 = param1.experience;
         var_1627 = param1.experienceMax;
         _energy = param1.energy;
         var_1626 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1621 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1624 = param1.roomIndex;
         var_1618 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1624;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1626;
      }
      
      public function get levelMax() : int
      {
         return var_1625;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1617;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1620;
      }
      
      public function get age() : int
      {
         return var_1618;
      }
   }
}
