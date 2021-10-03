package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_823:String = "AssetLoaderEventUnload";
      
      public static const const_47:String = "AssetLoaderEventError";
      
      public static const const_874:String = "AssetLoaderEventOpen";
      
      public static const const_937:String = "AssetLoaderEventProgress";
      
      public static const const_890:String = "AssetLoaderEventStatus";
      
      public static const const_36:String = "AssetLoaderEventComplete";
       
      
      private var var_186:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_186 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_186;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_186);
      }
   }
}
