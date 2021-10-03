package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1253:BigInteger;
      
      private var var_566:BigInteger;
      
      private var var_1500:BigInteger;
      
      private var var_1501:BigInteger;
      
      private var var_1984:BigInteger;
      
      private var var_1951:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1253 = param1;
         var_1500 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1984.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1501 = new BigInteger();
         var_1501.fromRadix(param1,param2);
         var_1984 = var_1501.modPow(var_566,var_1253);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1951.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1253.toString() + ",generator: " + var_1500.toString() + ",secret: " + param1);
         var_566 = new BigInteger();
         var_566.fromRadix(param1,param2);
         var_1951 = var_1500.modPow(var_566,var_1253);
         return true;
      }
   }
}
