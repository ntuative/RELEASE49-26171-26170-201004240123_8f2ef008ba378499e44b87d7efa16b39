package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_527;
         param1["bitmap"] = const_688;
         param1["border"] = const_606;
         param1["border_notify"] = const_1363;
         param1["button"] = const_362;
         param1["button_thick"] = const_620;
         param1["button_icon"] = const_1224;
         param1["button_group_left"] = const_569;
         param1["button_group_center"] = const_578;
         param1["button_group_right"] = const_672;
         param1["canvas"] = const_561;
         param1["checkbox"] = const_600;
         param1["closebutton"] = const_908;
         param1["container"] = const_309;
         param1["container_button"] = const_692;
         param1["display_object_wrapper"] = const_681;
         param1["dropmenu"] = const_432;
         param1["dropmenu_item"] = const_418;
         param1["frame"] = const_342;
         param1["frame_notify"] = const_1371;
         param1["header"] = const_741;
         param1["icon"] = const_943;
         param1["itemgrid"] = const_965;
         param1["itemgrid_horizontal"] = const_395;
         param1["itemgrid_vertical"] = const_626;
         param1["itemlist"] = const_985;
         param1["itemlist_horizontal"] = const_314;
         param1["itemlist_vertical"] = const_341;
         param1["maximizebox"] = const_1283;
         param1["menu"] = const_1249;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_806;
         param1["minimizebox"] = const_1342;
         param1["notify"] = const_1154;
         param1["null"] = const_615;
         param1["password"] = const_547;
         param1["radiobutton"] = const_552;
         param1["region"] = const_409;
         param1["restorebox"] = const_1225;
         param1["scaler"] = const_662;
         param1["scaler_horizontal"] = const_1334;
         param1["scaler_vertical"] = const_1181;
         param1["scrollbar_horizontal"] = const_381;
         param1["scrollbar_vertical"] = const_663;
         param1["scrollbar_slider_button_up"] = const_942;
         param1["scrollbar_slider_button_down"] = const_920;
         param1["scrollbar_slider_button_left"] = const_989;
         param1["scrollbar_slider_button_right"] = const_916;
         param1["scrollbar_slider_bar_horizontal"] = const_923;
         param1["scrollbar_slider_bar_vertical"] = const_946;
         param1["scrollbar_slider_track_horizontal"] = const_889;
         param1["scrollbar_slider_track_vertical"] = const_973;
         param1["scrollable_itemlist"] = const_1257;
         param1["scrollable_itemlist_vertical"] = const_393;
         param1["scrollable_itemlist_horizontal"] = const_926;
         param1["selector"] = const_657;
         param1["selector_list"] = const_625;
         param1["submenu"] = const_806;
         param1["tab_button"] = const_634;
         param1["tab_container_button"] = const_816;
         param1["tab_context"] = const_358;
         param1["tab_content"] = const_855;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_686;
         param1["input"] = const_618;
         param1["toolbar"] = const_1352;
         param1["tooltip"] = const_296;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
