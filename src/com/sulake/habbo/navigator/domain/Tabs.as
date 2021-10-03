package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_505:int = 6;
      
      public static const const_223:int = 5;
      
      public static const const_525:int = 2;
      
      public static const const_320:int = 9;
      
      public static const const_321:int = 4;
      
      public static const const_271:int = 2;
      
      public static const const_533:int = 4;
      
      public static const const_207:int = 8;
      
      public static const const_550:int = 7;
      
      public static const const_269:int = 3;
      
      public static const const_329:int = 1;
      
      public static const const_215:int = 5;
      
      public static const const_449:int = 12;
      
      public static const const_289:int = 1;
      
      public static const const_693:int = 11;
      
      public static const const_735:int = 3;
      
      public static const const_1571:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_408:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_408 = new Array();
         var_408.push(new Tab(_navigator,const_329,const_449,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_408.push(new Tab(_navigator,const_271,const_289,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_408.push(new Tab(_navigator,const_321,const_693,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_1015));
         var_408.push(new Tab(_navigator,const_269,const_223,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_408.push(new Tab(_navigator,const_215,const_207,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_539));
         setSelectedTab(const_329);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_408)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_408)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_408)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_321;
      }
      
      public function get tabs() : Array
      {
         return var_408;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
