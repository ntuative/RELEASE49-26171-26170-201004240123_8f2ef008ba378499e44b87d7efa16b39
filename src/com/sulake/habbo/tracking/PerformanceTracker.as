package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1512:GarbageMonitor = null;
      
      private var var_1267:int = 0;
      
      private var var_1306:Boolean = false;
      
      private var var_1995:String = "";
      
      private var var_1513:String = "";
      
      private var var_350:Number = 0;
      
      private var var_1269:int = 10;
      
      private var var_2316:Array;
      
      private var var_646:int = 0;
      
      private var var_1268:int = 60;
      
      private var var_1028:int = 0;
      
      private var var_1029:int = 0;
      
      private var var_2117:String = "";
      
      private var var_1993:Number = 0;
      
      private var var_1270:int = 1000;
      
      private var var_1992:Boolean = true;
      
      private var var_1996:Number = 0.15;
      
      private var var_157:IHabboConfigurationManager = null;
      
      private var var_1994:String = "";
      
      private var var_1271:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2316 = [];
         super();
         var_1513 = Capabilities.version;
         var_1995 = Capabilities.os;
         var_1306 = Capabilities.isDebugger;
         var_1994 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1512 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1267 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1512.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1512.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_350;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1268 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1513;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1029;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1270)
         {
            ++var_1028;
            _loc3_ = true;
         }
         else
         {
            ++var_646;
            if(var_646 <= 1)
            {
               var_350 = param1;
            }
            else
            {
               _loc4_ = Number(var_646);
               var_350 = var_350 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1267 > var_1268 * 1000 && var_1271 < var_1269)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_350);
            _loc5_ = true;
            if(var_1992 && var_1271 > 0)
            {
               _loc6_ = differenceInPercents(var_1993,var_350);
               if(_loc6_ < var_1996)
               {
                  _loc5_ = false;
               }
            }
            var_1267 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1993 = var_350;
               if(sendReport())
               {
                  ++var_1271;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1269 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1270 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1994,var_1513,var_1995,var_2117,var_1306,_loc4_,_loc3_,var_1029,var_350,var_1028);
            _connection.send(_loc1_);
            var_1029 = 0;
            var_350 = 0;
            var_646 = 0;
            var_1028 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_157 = param1;
         var_1268 = int(var_157.getKey("performancetest.interval","60"));
         var_1270 = int(var_157.getKey("performancetest.slowupdatelimit","1000"));
         var_1269 = int(var_157.getKey("performancetest.reportlimit","10"));
         var_1996 = Number(var_157.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1992 = Boolean(int(var_157.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
