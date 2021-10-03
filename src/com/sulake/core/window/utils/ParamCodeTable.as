package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_119;
         param1["bound_to_parent_rect"] = const_92;
         param1["child_window"] = const_866;
         param1["embedded_controller"] = const_331;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_50;
         param1["internal_event_handling"] = const_633;
         param1["mouse_dragging_target"] = const_205;
         param1["mouse_dragging_trigger"] = const_290;
         param1["mouse_scaling_target"] = const_267;
         param1["mouse_scaling_trigger"] = const_400;
         param1["horizontal_mouse_scaling_trigger"] = const_225;
         param1["vertical_mouse_scaling_trigger"] = const_209;
         param1["observe_parent_input_events"] = const_831;
         param1["optimize_region_to_layout_size"] = const_383;
         param1["parent_window"] = const_873;
         param1["relative_horizontal_scale_center"] = const_169;
         param1["relative_horizontal_scale_fixed"] = const_133;
         param1["relative_horizontal_scale_move"] = const_303;
         param1["relative_horizontal_scale_strech"] = const_263;
         param1["relative_scale_center"] = const_838;
         param1["relative_scale_fixed"] = const_604;
         param1["relative_scale_move"] = const_987;
         param1["relative_scale_strech"] = const_941;
         param1["relative_vertical_scale_center"] = const_175;
         param1["relative_vertical_scale_fixed"] = const_117;
         param1["relative_vertical_scale_move"] = const_328;
         param1["relative_vertical_scale_strech"] = const_278;
         param1["on_resize_align_left"] = const_645;
         param1["on_resize_align_right"] = const_380;
         param1["on_resize_align_center"] = const_444;
         param1["on_resize_align_top"] = const_725;
         param1["on_resize_align_bottom"] = const_420;
         param1["on_resize_align_middle"] = const_401;
         param1["on_accommodate_align_left"] = const_984;
         param1["on_accommodate_align_right"] = const_482;
         param1["on_accommodate_align_center"] = const_556;
         param1["on_accommodate_align_top"] = const_952;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_636;
         param1["route_input_events_to_parent"] = const_357;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_897;
         param1["scalable_with_mouse"] = const_986;
         param1["reflect_horizontal_resize_to_parent"] = const_477;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_272;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
