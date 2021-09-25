" Vim syntax file
" Language:sysVerilog
" Maintainer:  Malkesh J Adesra

" Last Update: 13 September 2006

augroup filetypedetect
au BufNewFile,BufRead *.sva setf sva
augroup END

if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif

" Set the local value of the 'iskeyword' option
if version >= 600
   setlocal iskeyword=@,48-57,_,192-255,+,-,?
else
   set iskeyword=@,48-57,_,192-255,+,-,?
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" eI  ROCKS !!!
syn match sysVerilogMyname "ei[a-zA-Z0-9_\(]\+[)]\>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" A bunch of useful sysVerilog keywords
 syn keyword sysVerilogStatement  alias always always_comb 
 syn keyword sysVerilogStatement  always_ff always_latch 
 syn keyword sysVerilogStatement  and assert 
 syn keyword sysVerilogStatement  assert_strobe assign 
 syn keyword sysVerilogStatement  automatic before 
 syn keyword sysVerilogStatement  begin bind 
 syn keyword sysVerilogStatement  bit break 
 syn keyword sysVerilogStatement  buf bufif0 
 syn keyword sysVerilogStatement  bufif1 byte 
 syn keyword sysVerilogStatement  case casex 
 syn keyword sysVerilogStatement  casez cell 
 syn keyword sysVerilogStatement  chandle                 
 syn keyword sysVerilogStatement  cmos 
 syn keyword sysVerilogStatement  const 
 syn keyword sysVerilogStatement  constraint context soft
 syn keyword sysVerilogStatement  continue cover covergroup 
 syn keyword sysVerilogStatement  deassign default 
 syn keyword sysVerilogStatement  defparam design 
 syn keyword sysVerilogStatement  disable dist 
 syn keyword sysVerilogStatement  do edge 
 syn keyword sysVerilogStatement  else end 
 syn keyword sysVerilogStatement  endcase endclass 
 syn keyword sysVerilogStatement  endclocking endconfig 
 syn keyword sysVerilogStatement  endfunction endgenerate endgroup 
 syn keyword sysVerilogStatement  endinterface endmodule endpackage 
 syn keyword sysVerilogStatement  endprimitive endprogram 
 syn keyword sysVerilogStatement  endproperty endspecify 
 syn keyword sysVerilogStatement  endsequence endtable 
 syn keyword sysVerilogStatement  endtask enum 

 syn keyword sysVerilogStatement   enum 
 syn keyword sysVerilogStatement  event export 
 syn keyword sysVerilogStatement  extends extern 
 syn keyword sysVerilogStatement  final first_match 
 syn keyword sysVerilogStatement  for force foreach 
 syn keyword sysVerilogStatement  forever fork 
 syn keyword sysVerilogStatement  fork join 
 syn keyword sysVerilogStatement  genvar 
 syn keyword sysVerilogStatement  highz0 highz1 
 syn keyword sysVerilogStatement  if iff 
 syn keyword sysVerilogStatement  ifnone import 
 syn keyword sysVerilogStatement  incdir include 
 syn keyword sysVerilogStatement  initial inout 
 syn keyword sysVerilogStatement  input inside 
 syn keyword sysVerilogStatement  instance int 
 syn keyword sysVerilogStatement  integer 
 syn keyword sysVerilogStatement  intersect join 
 syn keyword sysVerilogStatement  join_any join_none 
 syn keyword sysVerilogStatement  large liblist 
 syn keyword sysVerilogStatement  library local 
 syn keyword sysVerilogStatement  localparam logic 
 syn keyword sysVerilogStatement  longint macromodule 
 syn keyword sysVerilogStatement  medium modport 
 syn keyword sysVerilogStatement  nand 
 syn keyword sysVerilogStatement  negedge new 
 syn keyword sysVerilogStatement  nmos nor 
 syn keyword sysVerilogStatement  noshowcancelled not 
 syn keyword sysVerilogStatement  notif0 notif1 
 syn keyword sysVerilogStatement  null or 
 syn keyword sysVerilogStatement  output packed 
 syn keyword sysVerilogStatement  parameter pmos 
 syn keyword sysVerilogStatement  posedge 
 syn keyword sysVerilogStatement  priority 
 syn keyword sysVerilogStatement  protected 
 syn keyword sysVerilogStatement  pull0 pull1 
 syn keyword sysVerilogStatement  pulldown pullup 
 syn keyword sysVerilogStatement  pulsestyle_onevent pulsestyle_ondetect 
 syn keyword sysVerilogStatement  pure rand 
 syn keyword sysVerilogStatement  randc rcmos 
 syn keyword sysVerilogStatement  ref real 
 syn keyword sysVerilogStatement  realtime reg 
 syn keyword sysVerilogStatement  release repeat 
 syn keyword sysVerilogStatement  return rnmos 
 syn keyword sysVerilogStatement  rpmos rtran 
 syn keyword sysVerilogStatement  rtranif0 rtranif1 
 syn keyword sysVerilogStatement  scalared 
 syn keyword sysVerilogStatement  shortint shortreal 
 syn keyword sysVerilogStatement  showcancelled signed 
 syn keyword sysVerilogStatement  small solve 
 syn keyword sysVerilogStatement  specparam 
 syn keyword sysVerilogStatement  static string 
 syn keyword sysVerilogStatement  strong0 strong1 
 syn keyword sysVerilogStatement  struct super 
 syn keyword sysVerilogStatement  supply0 supply1 
 "syn keyword sysVerilogStatement  
 syn keyword sysVerilogStatement  this throughout 
 syn keyword sysVerilogStatement  time timeprecision 
 syn keyword sysVerilogStatement  timeunit tran 
 syn keyword sysVerilogStatement  tranif0 tranif1 
 syn keyword sysVerilogStatement  tri tri0 
 syn keyword sysVerilogStatement  tri1 triand 
 syn keyword sysVerilogStatement  trior trireg 
 syn keyword sysVerilogStatement  type typedef 
 syn keyword sysVerilogStatement  union unique 
 syn keyword sysVerilogStatement  unsigned use 
 syn keyword sysVerilogStatement  var vectored 
 syn keyword sysVerilogStatement  virtual void 
 syn keyword sysVerilogStatement  wait wait_order 
 syn keyword sysVerilogStatement  wand weak0 
 syn keyword sysVerilogStatement  weak1 while 
 syn keyword sysVerilogStatement  wire with 
 syn keyword sysVerilogStatement  within wor 
 syn keyword sysVerilogStatement  xnor xor


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------------Added by Malkesh Adesra--------------------------------
"data types
 syn keyword sysVerilogData  bit byte reg logic string struct enum event wire 
 syn keyword sysVerilogData  int integer real shortreal chandle mailbox semaphore
 
 syn keyword sysVerilogPort  input output inout 
 
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------------Added by Malkesh Adesra--------------------------------
"VMM Synopsis
 syn keyword sysVerilogVMMtask  run stop start wait_for_end cleanup report
 syn keyword sysVerilogVMMtask  gen_cfg build reset_dut cfg_dut
 
 syn keyword sysVerilogVMMtask  stop_xactor start_xactor
 syn keyword sysVerilogVMMtask  reset_xactor wait_if_stopped wait_if_stopped_or_empty

 syn keyword sysVerilogVMMtask  put get sneak peek reconfigure flush connect tee
 
 syn keyword sysVerilogVMMtask  append_callback prepend_callback 
 syn keyword sysVerilogVMMtask  inject scenario_set
 syn keyword sysVerilogVMMtask  define_scenario scenario_kind 
 syn keyword sysVerilogVMMtask  wait_for
 syn keyword sysVerilogVMMtask  copy compare list byte_pack byte_unpack byte_size

 
 syn keyword sysVerilogVMMfield stop_after_n_scenarios stop_after_n_errors stop_after_n_insts 
 syn keyword sysVerilogVMMfield scenario_kind scenario_set notify log items
 syn keyword sysVerilogVMMfield data_id stream_id scenario_id out_chan
 syn keyword sysVerilogVMMfield repeated length repeat_thresh

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------------Added by Malkesh Adesra--------------------------------
"VMM library classes
syn keyword sysVerilogVMMclass vmm_data vmm_xactor vmm_channel vmm_env vmm_log
syn keyword sysVerilogVMMclass vmm_scheduler vmm_notify vmm_log_format


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------------Added by Malkesh Adesra--------------------------------
" Various Blocks  

 syn keyword sysVerilogBlock  primitive specify config 
 syn keyword sysVerilogBlock  endprimitive endspecify endconfig 
 syn keyword sysVerilogBlock  generate group
 syn keyword sysVerilogBlock  endgenerate endgroup
 
 syn keyword sysVerilogBlock1  module class program package
 syn keyword sysVerilogBlock1  endmodule endclass endprogram endpackage

 syn keyword sysVerilogBlock2  function task clocking interface table
 syn keyword sysVerilogBlock2  endfunction endtask endclocking endinterface endtable

 syn keyword sysVerilogBlock3 property sequence assert assume expect
 syn keyword sysVerilogBlock3 endproperty endsequence
 
 syn keyword sysVerilogBlockC covergroup cross coverpoint cover bins 
 syn keyword sysVerilogBlockC illegal_bins ignore_bins wildcard binsof


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------------Added by Malkesh Adesra--------------------------------
"Inbuilt array/queue functions

 syn keyword sysVerilogTask  num delete exists name
 syn keyword sysVerilogTask  first last next prev
 syn keyword sysVerilogTask  insert size
 syn keyword sysVerilogTask  pop_front pop_back push_front push_back
 syn keyword sysVerilogTask  find find_first find_last
 syn keyword sysVerilogTask  find_index find_first_index find_last_index
 syn keyword sysVerilogTask  reverse sort rsort shuffle

 syn keyword sysVerilogTask1  new randomize with
 syn keyword sysVerilogTask1 constraint_mode rand_mode pre_randomize post_randomize
 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------------Added/Modified by Malkesh Adesra---------------------------
 syn keyword sysVerilogLabel       begin end fork join join_any join_none join_all
 syn keyword sysVerilogConditional if else case casex casez default endcase
 syn keyword sysVerilogRepeat      forever repeat while for do foreach
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


syn keyword sysVerilogTodo contained TODO

syn match   sysVerilogOperator "[&|~><!)(*#%@+/=?:;}{,.\^\-\[\]]"

syn region  sysVerilogComment start="/\*" end="\*/" contains=sysVerilogTodo
syn match   sysVerilogComment "//.*" oneline

syn match   sysVerilogDefines "`[a-zA-Z0-9_]\+\>"
syn match   sysVerilogGlobal "$[a-zA-Z0-9_]\+\>"

syn match   sysVerilogConstant "\<[A-Z][A-Z0-9_]\+\>"

syn match   sysVerilogNumber "\(\<\d\+\|\)'[bB]\s*[0-1_xXzZ?]\+\>"
syn match   sysVerilogNumber "\(\<\d\+\|\)'[oO]\s*[0-7_xXzZ?]\+\>"
syn match   sysVerilogNumber "\(\<\d\+\|\)'[dD]\s*[0-9_xXzZ?]\+\>"
syn match   sysVerilogNumber "\(\<\d\+\|\)'[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match   sysVerilogNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"

syn region  sysVerilogString start=+"+  end=+"+

" Directives
syn match   sysVerilogDirective   "//\s*synopsys\>.*$"
syn region  sysVerilogDirective   start="/\*\s*synopsys\>" end="\*/"
syn region  sysVerilogDirective   start="//\s*synopsys dc_script_begin\>" end="//\s*synopsys dc_script_end\>"

syn match   sysVerilogDirective   "//\s*\$s\>.*$"
syn region  sysVerilogDirective   start="/\*\s*\$s\>" end="\*/"
syn region  sysVerilogDirective   start="//\s*\$s dc_script_begin\>" end="//\s*\$s dc_script_end\>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Methodology Specific highlighting

"----------------------------Added by Malkesh Adesra--------------------------------
"for classes : e.g; monitor_c
syn match   sysVerilogClass "\<[a-zA-Z0-9_]\+_c\>"
syn match   sysVerilogClassfucntionName "\<[a-zA-Z0-9_]\+_f\>"
syn match   sysVerilogClasstaskName "\<[a-zA-Z0-9_]\+_t\>"
syn match   sysVerilogenum "\<[a-zA-Z0-9_]\+_e\>"
syn match   sysVeriloginterface "\<[a-zA-Z0-9_]\+_if\>"
syn match   sysVerilogchannel "\<[a-zA-Z0-9_]\+_channel\>"
syn match   sysVerilogscenario_gen "\<[a-zA-Z0-9_]\+_scenario_gen\>"
syn match   sysVerilogtag "\<[a-zA-Z0-9_]\+_L\>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"VMM library
"----------------------------Added by Malkesh Adesra--------------------------------
syn match   sysVerilogVMM "\`vmm_[a-zA-Z0-9_]\+\>"
"-------------------------------------------------------------------------------
" uvm_sv/src/base/
"-------------------------------------------------------------------------------
" uvm_sv/src/base/uvm_component.svh
syn keyword uvmClass             uvm_component
syn keyword uvmMethod            accept_tr apply_config_settings begin_child_tr begin_tr build check clone
syn keyword uvmMethod            connect create create_component create_object do_accept_tr do_begin_tr do_end_tr
syn keyword uvmMethod            do_flush do_func_phase do_kill_all do_resolve_bindings do_task_phase end_of_elaboration
syn keyword uvmMethod            end_tr extract flush get_child get_config_int get_config_object get_config_string
syn keyword uvmMethod            get_first_child get_full_name get_next_child get_num_children get_parent has_child
syn keyword uvmMethod            kill lookup m_begin_tr print_config_settings print_override_info record_error_tr
syn keyword uvmMethod            record_event_tr report resolve_bindings restart resume run set_config_int set_config_object
syn keyword uvmMethod            set_config_string set_inst_override set_inst_override_by_type set_name
syn keyword uvmMethod            set_report_default_file_hier set_report_id_action_hier set_report_id_file_hier
syn keyword uvmMethod            set_report_severity_action_hier set_report_severity_file_hier
syn keyword uvmMethod            set_report_severity_id_action_hier set_report_severity_id_file_hier
syn keyword uvmMethod            set_report_verbosity_level_hier set_type_override set_type_override_by_type
syn keyword uvmMethod            start_of_simulation status stop suspend
syn keyword uvmDeprecatedMethod  configure export_connections find_component find_components get_component
syn keyword uvmDeprecatedMethod  get_num_components
"syn keyword uvmDeprecatedMethod  global_stop_request
syn keyword uvmDeprecatedMethod  import_connections post_new pre_run
syn keyword uvmDeprecatedClass   uvm_threaded_component
syn keyword uvmPhaseFuncMethod   build_phase connect_phase end_of_elaboration end_of_simulation
syn keyword uvmPhaseTaskMethod   run_phase

" uvm_sv/src/base/uvm_config.svh
syn keyword uvmClass             uvm_config_setting
syn keyword uvmMethod            matches_string print_match type_string value_string
syn keyword uvmClass             uvm_int_config_setting
syn keyword uvmMethod            matches_string type_string value_string
syn keyword uvmClass             uvm_string_config_setting
syn keyword uvmMethod            matches_string type_string value_string
syn keyword uvmClass             uvm_object_config_setting
syn keyword uvmMethod            matches_string type_string value_string
syn keyword uvmMethodGlobal      set_config_int set_config_object set_config_string

" uvm_sv/src/base/uvm_env.svh
syn keyword uvmClass             uvm_env
syn keyword uvmMethod            do_task_phase get_type_name run_test 
syn keyword uvmDeprecatedMethod  do_test

" uvm_sv/src/base/uvm_event.svh
syn keyword uvmClass             uvm_event_callback
syn keyword uvmMethod            create pre_trigger post_trigger
syn keyword uvmClass             uvm_event
syn keyword uvmMethod            add_callback cancel create delete_callback do_copy do_print get_num_waiters
syn keyword uvmMethod            get_trigger_data get_trigger_time get_type_name is_off is_on reset trigger triggered
syn keyword uvmMethod            wait_off wait_on wait_ptrigger wait_ptrigger_data wait_trigger wait_trigger_data
syn keyword uvmClass             uvm_event_pool
syn keyword uvmMethod            create delete do_copy do_print exists first get get_global_pool get_type_name
syn keyword uvmMethod            last next num prev
syn keyword uvmClass             uvm_barrier
syn keyword uvmMethod            cancel create do_copy do_print get_num_waiters get_threshold get_type_name
syn keyword uvmMethod            reached_threshold reset set_auto_reset set_threshold wait_for
syn keyword uvmClass             uvm_barrier_pool
syn keyword uvmMethod            create delete do_copy do_print exists first get get_global_pool get_type_name
syn keyword uvmMethod            last next num prev

" uvm_sv/src/base/uvm_report_server.svh
syn keyword uvmClass             uvm_report_server
syn keyword uvmMethod            compose_message copy_id_counts copy_severity_counts dump_server_state
syn keyword uvmMethod            f_display get_id_count get_max_quit_count get_quit_count get_severity_count
syn keyword uvmMethod            incr_id_count incr_quit_count incr_severity_count is_quit_count_reached
syn keyword uvmMethod            process_report report reset_quit_count reset_severity_counts set_id_count
syn keyword uvmMethod            set_max_quit_count set_quit_count set_severity_count summarize
syn keyword uvmClass             uvm_report_global_server
syn keyword uvmMethod            get_server set_server

" uvm_sv/src/base/uvm_factory.svh
syn keyword uvmClass             uvm_object_wrapper
syn keyword uvmMethod            create_component create_object get_type_name
syn keyword uvmClass             uvm_factory_override
syn keyword uvmClass             uvm_factory
syn keyword uvmMethod            create_component_by_name create_component_by_type create_object_by_name
syn keyword uvmMethod            create_object_by_type debug_create_by_name debug_create_by_type
syn keyword uvmMethod            find_override_by_name find_override_by_type print register set_inst_override_by_name
syn keyword uvmMethod            set_inst_override_by_type set_type_override_by_name set_type_override_by_type
syn keyword uvmDeprecatedMethod  auto_register
"syn keyword uvmDeprecatedMethod  create_component create_object
syn keyword uvmDeprecatedMethod  print_all_overrides
"syn keyword uvmDeprecatedMethod  print_override_info set_inst_override set_type_override

" uvm_sv/src/base/uvm_misc.svh
syn keyword uvmCompatibility     avm_virtual_class
syn keyword uvmClass             uvm_void
syn keyword uvmClass             uvm_scope_stack
syn keyword uvmMethod            current depth down down_element get get_arg in_hierarchy set
syn keyword uvmMethod            set_arg set_arg_element unset_arg up up_element
syn keyword uvmMethodGlobal      uvm_bits_to_string uvm_is_match uvm_string_to_bits uvm_wait_for_nba_region

" uvm_sv/src/base/uvm_object.svh
syn keyword uvmClass             uvm_status_container
syn keyword uvmMethod            get_full_scope_arg init_scope
syn keyword uvmClass             uvm_object
syn keyword uvmMethod            clone compare copy create do_compare do_copy do_pack do_print do_record
syn keyword uvmMethod            do_sprint do_unpack get_full_name get_inst_count get_inst_id get_name
syn keyword uvmMethod            get_type get_type_name pack pack_bytes pack_ints print_field_match record
syn keyword uvmMethod            set_int_local set_name set_object_local set_string_local unpack unpack_bytes unpack_ints
syn keyword uvmClass             uvm_copy_map
syn keyword uvmMethod            clear delete get set
syn keyword uvmClass             uvm_comparer
syn keyword uvmMethod            compare_field compare_field_int compare_object compare_string init
syn keyword uvmMethod            print_msg print_msg_object print_rollup
syn keyword uvmClass             uvm_recorder
syn keyword uvmMethod            record_field record_generic record_object record_string record_time
syn keyword uvmClass             uvm_options_container
syn keyword uvmMethod            init

" uvm_sv/src/base/uvm_object_globals.svh
syn keyword uvmTypeDef           uvm_bitstream_t uvm_radix_enum uvm_recursion_policy_enum

" uvm_sv/src/base/uvm_packer
syn keyword uvmClass             uvm_packer
syn keyword uvmMethod            enough_bits get_bit get_bits get_byte get_bytes get_int get_ints get_packed_bits
syn keyword uvmMethod            get_packed_size index_error is_null pack_field pack_field_int pack_object
syn keyword uvmMethod            pack_real pack_string pack_time put_bits put_bytes put_ints reset set_packed_size
syn keyword uvmMethod            unpack_field unpack_field_int unpack_object unpack_object_ext unpack_real
syn keyword uvmMethod            unpack_string unpack_time

" uvm_sv/src/base/uvm_port_base.svh
syn keyword uvmTypeDef           uvm_port_type_e uvm_port_list
syn keyword uvmClass             uvm_port_component_base
syn keyword uvmMethod            get_connected_to get_provided_to is_export is_imp is_port
syn keyword uvmClass             uvm_port_component
syn keyword uvmMethod            do_display get_connected_to get_port get_provided_to get_type_name is_port is_export
syn keyword uvmMethod            is_imp resolve_bindings
syn keyword uvmClass             uvm_port_base
syn keyword uvmMethod            connect debug_connected_to debug_provided_to get_comp get_connected_to get_full_name
syn keyword uvmMethod            get_if get_name get_parent get_provided_to get_type_name is_export is_imp is_port
syn keyword uvmMethod            is_unbounded max_size min_size resolve_bindings set_default_index set_if size
"syn keyword uvmDeprecatedMethod  do_display remove
syn keyword uvmDeprecatedMethod  check_min_connection_size check_phase lookup_indexed_if

" uvm_sv/src/base/uvm_printer.svh
syn keyword uvmClass             uvm_printer_knobs
syn keyword uvmMethod            get_radix_str
syn keyword uvmClass             uvm_printer
syn keyword uvmMethod            indent index index_string istop print_array_footer print_array_header
syn keyword uvmMethod            print_array_range print_field print_footer print_generic print_header
syn keyword uvmMethod            print_id print_newline print_object print_object_header print_size
syn keyword uvmMethod            print_string print_time print_type_name print_value print_value_array
syn keyword uvmMethod            print_value_object print_value_string write_stream
syn keyword uvmClass             uvm_hier_printer_knobs
syn keyword uvmClass             uvm_table_printer_knobs
syn keyword uvmClass             uvm_table_printer
syn keyword uvmMethod            print_footer print_header print_id print_size print_type_name print_value
syn keyword uvmMethod            print_value_array print_value_object print_value_string
syn keyword uvmClass             uvm_tree_printer_knobs
syn keyword uvmClass             uvm_tree_printer
syn keyword uvmMethod            print_array_footer print_id print_object print_object_header print_scope_close
syn keyword uvmMethod            print_scope_open print_string print_type_name print_value_array print_value_object
syn keyword uvmClass             uvm_line_printer
syn keyword uvmMethod            print_newline

" uvm_sv/src/base/uvm_registry.svh
syn keyword uvmClass             uvm_component_registry
syn keyword uvmMethod            create create_component get get_type_name set_inst_override set_type_override
syn keyword uvmClass             uvm_object_registry
syn keyword uvmMethod            create create_object get get_type_name set_type_override

" uvm_sv/src/base/uvm_report_defines.svh
syn keyword uvmTypeDef           uvm_action uvm_action_type uvm_severity uvm_severity_type uvm_verbosity
syn keyword uvmTypeDef           id_actions_array id_file_array uvm_FILE s_default_action_array s_default_file_array

" uvm_sv/src/base/uvm_report_global.svh
syn keyword uvmMethodGlobal      uvm_get_max_verbosity uvm_initialize_global_reporter uvm_report_error
syn keyword uvmMethodGlobal      uvm_report_fatal uvm_report_info uvm_report_warning

" uvm_sv/src/base/uvm_report_handler.svh
syn keyword uvmClass             uvm_hash
syn keyword uvmMethod            exists fetch first get next set
syn keyword uvmClass             uvm_report_handler
syn keyword uvmMethod            dump_state format_action get_action get_file_handle get_server get_verbosity_level
syn keyword uvmMethod            initialize report report_header run_hooks set_default_file set_defaults
syn keyword uvmMethod            set_id_action set_id_file set_max_quit_count set_severity_action set_severity_file
syn keyword uvmMethod            set_severity_id_action set_severity_id_file set_verbosity_level summarize
syn keyword uvmClass             default_report_server
syn keyword uvmMethod            get_server

" uvm_sv/src/base/uvm_report_object.svh
syn keyword uvmClass             uvm_report_object
syn keyword uvmMethod            die dump_report_state get_report_handler get_report_server uvm_get_max_verbosity
syn keyword uvmMethod            uvm_report_error uvm_report_fatal uvm_report_info uvm_report_warning
syn keyword uvmMethod            report_error_hook report_fatal_hook report_header report_hook report_info_hook
syn keyword uvmMethod            report_summarize report_warning_hook reset_report_handler set_report_default_file
syn keyword uvmMethod            set_report_handler set_report_id_action set_report_id_file set_report_max_quit_count
syn keyword uvmMethod            set_report_severity_action set_report_severity_file set_report_severity_id_action
syn keyword uvmMethod            set_report_severity_id_file set_report_verbosity_level
"syn keyword uvmDeprecatedMethod  avm_report_error avm_report_fatal avm_report_message avm_report_warning
syn keyword uvmClass             uvm_reporter
syn keyword uvmMethod            create get_type_name

" uvm_sv/src/base/uvm_report_server.svh
syn keyword uvmClass             uvm_report_server
syn keyword uvmMethod            compose_message copy_id_counts copy_severity_counts dump_server_state
syn keyword uvmMethod            f_display get_id_count get_max_quit_count get_quit_count get_severity_count
syn keyword uvmMethod            incr_id_count incr_quit_count incr_severity_count is_quit_count_reached
syn keyword uvmMethod            process_report report reset_quit_count reset_severity_counts set_id_count
syn keyword uvmMethod            set_max_quit_count set_quit_count set_severity_count summarize
syn keyword uvmClass             uvm_report_global_server
syn keyword uvmMethod            get_server set_server

" uvm_sv/src/base/uvm_root.svh
syn keyword uvmClass             uvm_root
syn keyword uvmMethod            find find_all get get_current_phase get_phase_by_name get_type_name
syn keyword uvmMethod            insert_phase run_global_phase run_test stop_request
syn keyword uvmDeprecatedClass   uvm_test_top
syn keyword uvmDeprecatedMethod  print_topology print_unit print_unit_list print_units
syn keyword uvmMethodGlobal      global_stop_request uvm_find_component uvm_print_topology run_test
syn keyword uvmMethodGlobal      set_global_stop_timeout set_global_timeout

" uvm_sv/src/base/uvm_transaction.svh
syn keyword uvmClass             uvm_transaction
syn keyword uvmMethod            accept_tr begin_child_tr begin_tr convert2string disable_recording
syn keyword uvmMethod            do_accept_tr do_begin_tr do_copy do_end_tr do_print do_record
syn keyword uvmMethod            enable_recording end_tr get_accept_time get_begin_time get_end_time
syn keyword uvmMethod            get_event_pool get_initiator get_tr_handle get_transaction_id is_active
syn keyword uvmMethod            is_recording_enabled m_begin_tr set_initiator set_transaction_id

" uvm_sv/src/base/uvm_version.svh
syn keyword uvmMethodGlobal      uvm_revision_string

"-------------------------------------------------------------------------------
" uvm_sv/src/base/compatibility/
"-------------------------------------------------------------------------------
" uvm_sv/src/base/compatibility/avm_compatibility.svh
syn keyword uvmCompatibility     avm_env avm_named_component avm_report_client avm_report_handler
syn keyword uvmCompatibility     avm_report_server avm_reporter avm_threaded_component avm_transaction
syn keyword uvmCompatibility     action action_type severity
syn keyword uvmCompatibility     uvm_named_component uvm_report_client
syn keyword uvmCompatibility     avm_transport_port avm_transport_export avm_built_in_pair
syn keyword uvmCompatibility     avm_class_pair avm_in_order_comparator avm_in_order_class_comparator
syn keyword uvmCompatibility     avm_in_order_built_in_comparator avm_algorithmic_comparator
syn keyword uvmCompatibility     avm_report_error avm_report_fatal avm_report_message avm_report_warning
syn keyword uvmCompatibility     analysis_fifo avm_transport_imp avm_analysis_imp avm_port_base

" uvm_sv/src/base/compatibility/base_compatibility.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/compatibility.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm_compatibility.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm_macro_compatibility.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm_message.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm_message_compatibility.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm_message_defines.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm_meth_compatibility.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm_port_compatibility.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

" uvm_sv/src/base/compatibility/urm_type_compatibility.svh
"syn keyword uvmClass             
"syn keyword uvmMethod            

"-------------------------------------------------------------------------------
" uvm_sv/src/methodology/
"-------------------------------------------------------------------------------
" uvm_sv/src/methodology/methodology.svh
syn keyword uvmTypeDef           uvm_default_driver_type uvm_default_sequence_type
syn keyword uvmTypeDef           uvm_default_sequencer_param_type uvm_default_sequencer_type

" uvm_sv/src/methodology/methodology_noparm.svh

" uvm_sv/src/methodology/uvm_agent.svh
syn keyword uvmClass             uvm_agent
syn keyword uvmMethod            run

" uvm_sv/src/methodology/uvm_algorithmic_comparator.svh
syn keyword uvmClass             uvm_algorithmic_comparator
syn keyword uvmMethod            connect get_type_name write

" uvm_sv/src/methodology/uvm_driver.svh
syn keyword uvmClass             uvm_driver
syn keyword uvmMethod            run

" uvm_sv/src/methodology/uvm_in_order_comparator.svh
syn keyword uvmClass             uvm_in_order_comparator
syn keyword uvmMethod            connect flush get_type_name run
syn keyword uvmClass             uvm_in_order_built_in_comparator
syn keyword uvmMethod            get_type_name
syn keyword uvmClass             uvm_in_order_class_comparator
syn keyword uvmMethod            get_type_name

" uvm_sv/src/methodology/uvm_meth_defines.svh
syn keyword uvmTypeDef           uvm_active_passive_enum

" uvm_sv/src/methodology/uvm_monitor.svh
syn keyword uvmClass             uvm_monitor

" uvm_sv/src/methodology/uvm_pair.svh
syn keyword uvmClass             uvm_class_pair
syn keyword uvmMethod            clone comp convert2string copy create get_type_name
syn keyword uvmClass             uvm_built_in_pair
syn keyword uvmMethod            clone comp convert2string copy create get_type_name

" uvm_sv/src/methodology/uvm_policies.svh
syn keyword uvmClass             uvm_built_in_comp
syn keyword uvmMethod            comp
syn keyword uvmClass             uvm_built_in_converter
syn keyword uvmMethod            convert2string
syn keyword uvmClass             uvm_built_in_clone
syn keyword uvmMethod            clone
syn keyword uvmClass             uvm_class_comp
syn keyword uvmMethod            comp
syn keyword uvmClass             uvm_class_converter
syn keyword uvmMethod            convert2string
syn keyword uvmClass             uvm_class_clone
syn keyword uvmMethod            clone

" uvm_sv/src/methodology/uvm_push_driver.svh
syn keyword uvmClass             uvm_push_driver
syn keyword uvmMethod            build check_port_connections end_of_elaboration

" uvm_sv/src/methodology/uvm_random_stimulus.svh
syn keyword uvmClass             uvm_random_stimulus
syn keyword uvmMethod            generate_stimulus get_type_name stop_stimulus_generation

" uvm_sv/src/methodology/uvm_scoreboard.svh
syn keyword uvmClass             uvm_scoreboard
syn keyword uvmMethod            run

" uvm_sv/src/methodology/uvm_subscriber.svh
syn keyword uvmClass             uvm_subscriber
syn keyword uvmMethod            write

" uvm_sv/src/methodology/uvm_test.svh
syn keyword uvmClass             uvm_test
syn keyword uvmMethod            run

syn keyword uvmClass             uvm_config_db uvm_resource_db

"-------------------------------------------------------------------------------
" uvm_sv/src/methodology/layered_stimulus/
"-------------------------------------------------------------------------------
" uvm_sv/src/methodology/layered_stimulus/uvm_layered_stimulus.svh

" uvm_sv/src/methodology/layered_stimulus/uvm_scenario.svh
syn keyword uvmClass             uvm_scenario
syn keyword uvmMethod            apply apply_request apply_send get_id get_scenario_path_name
syn keyword uvmMethod            mid_apply post_apply pre_apply pre_body start

" uvm_sv/src/methodology/layered_stimulus/uvm_scenario_controller.svh
syn keyword uvmClass             uvm_scenario_controller
syn keyword uvmMethod            apply apply_request apply_send

" uvm_sv/src/methodology/layered_stimulus/uvm_scenario_driver.svh
syn keyword uvmClass             uvm_scenario_driver
syn keyword uvmMethod            end_of_elaboration get_next_item run set_scenario_controller

"-------------------------------------------------------------------------------
" uvm_sv/src/methodology/sequences/
"-------------------------------------------------------------------------------
" uvm_sv/src/methodology/sequences/uvm_push_sequencer.svh
syn keyword uvmClass             uvm_push_sequencer
syn keyword uvmMethod            run

" uvm_sv/src/methodology/sequences/uvm_req_rsp_sequence.svh
syn keyword uvmClass             uvm_req_rsp_sequence
syn keyword uvmMethod            apply

" uvm_sv/src/methodology/sequences/uvm_req_rsp_sequence.svh
syn keyword uvmClass             uvm_sequence
syn keyword uvmMethod            do_print start send_request get_current_item get_response put_response
syn keyword uvmMethod            set_sequencer set_response_queue_error_report_disabled
syn keyword uvmMethod            get_response_queue_error_report_disabled set_response_queue_depth get_response_queue_depth

" uvm_sv/src/methodology/sequences/uvm_sequence_base.svh
syn keyword uvmClass             uvm_sequence_base
syn keyword uvmTypeDef           uvm_sequence_state_enum
syn keyword uvmMethod            body create_and_start_sequence_by_name create_item do_sequence_kind get get_priority
syn keyword uvmMethod            get_seq_kind get_sequence get_sequence_by_name get_sequence_state get_sequencer
syn keyword uvmMethod            get_use_response_handler grab is_blocked is_item is_relevant kill m_finish_item
syn keyword uvmMethod            m_get_sqr_sequence_id m_start_item mid_do num_sequences post_body post_do pre_body pre_do
syn keyword uvmMethod            response_handler send_request set_priority set_sequencer stop ungrab unlock use_response_handler
syn keyword uvmMethod            wait_for_grant wait_for_item_done wait_for_relevant wait_for_sequence_state
"syn keyword uvmCompatibility     get_id pre_apply mid_apply post_apply
syn keyword uvmCompatibility     get_parent_scenario

" uvm_sv/src/methodology/sequences/uvm_sequence_builtin.svh
syn keyword uvmClass              uvm_random_sequence
syn keyword uvmMethod             body do_copy do_compare do_print do_record create get_type_name
syn keyword uvmClass              uvm_exhaustive_sequence
syn keyword uvmMethod             body do_copy do_compare do_print do_record create get_type_name
syn keyword uvmClass              uvm_simple_sequence
syn keyword uvmMethod             body create get_type_name

" uvm_sv/src/methodology/sequences/uvm_sequence_item.svh
syn keyword uvmClass             uvm_sequence_item
syn keyword uvmMethod            set_sequence_id get_sequence_id set_use_sequence_info get_use_sequence_info set_id_info set_sequencer
syn keyword uvmMethod            get_sequencer set_parent_sequence get_parent_sequence set_depth get_depth is_item start_item finish_item
syn keyword uvmMethod            m_start_item m_finish_item get_full_name get_root_sequence_name get_root_sequence get_sequence_path
syn keyword uvmMethod            do_print
"syn keyword uvmDeprecated        set_parent_seq get_parent_seq pre_do body mid_do post_do wait_for_grant send_request wait_for_item_done

" uvm_sv/src/methodology/sequences/uvm_sequencer.svh
syn keyword uvmClass             uvm_sequencer
syn keyword uvmTypeDef           uvm_seq_item_prod_if
syn keyword uvmMethod            get_type_name connect build end_of_elaboration send_request get_next_item try_next_item item_done put get peek
syn keyword uvmMethod            m_add_builtin_seqs item_done_trigger item_done_get_trigger_data add_seq_cons_if
syn keyword uvmTypeDef           uvm_virtual_sequencer
syn keyword uvmDeprecatedClass   uvm_seq_prod_if

" uvm_sv/src/methodology/sequences/uvm_sequencer_analysis_fifo.svh
syn keyword uvmClass              sequencer_analysis_fifo
syn keyword uvmMethod             write

" uvm_sv/src/methodology/sequences/uvm_sequencer_base.svh
syn keyword uvmClass              seq_req_class
syn keyword uvmClass              uvm_sequencer_base
syn keyword uvmMethod             do_print user_priority_arbitration grant_queued_locks choose_next_request wait_for_available_sequence
syn keyword uvmMethod             get_seq_item_priority wait_for_arbitration_completed set_arbitration_completed is_child wait_for_grant
syn keyword uvmMethod             wait_for_item_done is_blocked is_locked lock_req unlock_req lock grab unlock ungrab remove_sequence_from_queues
syn keyword uvmMethod             stop_sequences sequence_exiting kill_sequence is_grabbed current_grabber has_do_available set_arbitration
syn keyword uvmMethod             analysis_write wait_for_sequences add_sequence remove_sequence set_sequences_queue get_seq_kind get_sequence
syn keyword uvmMethod             num_sequences send_request
syn keyword uvmDeprecated         start_sequence

" uvm_sv/src/methodology/sequences/uvm_sequencer_param_base.svh
syn keyword uvmClass             uvm_sequencer_param_base
syn keyword uvmMethod            do_print connect build send_request get_current_item put_response analysis_write start_default_sequence run
syn keyword uvmMethod            get_num_reqs_sent get_num_rsps_received set_num_last_reqs get_num_last_reqs last_req set_num_last_rsps
syn keyword uvmMethod            get_num_last_rsps last_rsp execute_item
syn keyword uvmCompatibility     set_num_last_items
"syn keyword uvmCompatibility     last

"-------------------------------------------------------------------------------
" uvm_sv/src/uvm_tlm
"-------------------------------------------------------------------------------
" uvm_sv/src/uvm_tlm/uvm_exports.svh
syn keyword uvmClass             uvm_blocking_get_export uvm_blocking_get_peek_export uvm_blocking_master_export
syn keyword uvmClass             uvm_blocking_peek_export uvm_blocking_put_export uvm_blocking_slave_export
syn keyword uvmClass             uvm_blocking_transport_export uvm_get_export uvm_get_peek_export
syn keyword uvmClass             uvm_master_export uvm_nonblocking_get_export uvm_nonblocking_get_peek_export
syn keyword uvmClass             uvm_nonblocking_master_export uvm_nonblocking_peek_export
syn keyword uvmClass             uvm_nonblocking_put_export uvm_nonblocking_slave_export
syn keyword uvmClass             uvm_nonblocking_transport_export uvm_peek_export uvm_put_export
syn keyword uvmClass             uvm_slave_export uvm_transport_export
syn keyword uvmClass             uvm_analysis_export
syn keyword uvmMethod            get_type_name

" uvm_sv/src/uvm_tlm/uvm_imps.svh
syn keyword uvmClass             uvm_blocking_get_imp uvm_blocking_get_peek_imp uvm_blocking_master_imp
syn keyword uvmClass             uvm_blocking_peek_imp uvm_blocking_put_imp uvm_blocking_slave_imp
syn keyword uvmClass             uvm_blocking_transport_imp uvm_get_imp uvm_get_peek_imp uvm_master_imp
syn keyword uvmClass             uvm_nonblocking_get_imp uvm_nonblocking_get_peek_imp
syn keyword uvmClass             uvm_nonblocking_master_imp uvm_nonblocking_peek_imp
syn keyword uvmClass             uvm_nonblocking_put_imp uvm_nonblocking_slave_imp uvm_nonblocking_transport_imp
syn keyword uvmClass             uvm_peek_imp uvm_put_imp uvm_slave_imp uvm_transport_imp
syn keyword uvmClass             uvm_analysis_imp
syn keyword uvmMethod            writw

" uvm_sv/src/uvm_tlm/uvm_ports.svh
syn keyword uvmClass             uvm_analysis_port uvm_blocking_get_peek_port uvm_blocking_get_port
syn keyword uvmClass             uvm_blocking_master_port uvm_blocking_peek_port uvm_blocking_put_port
syn keyword uvmClass             uvm_blocking_slave_port uvm_blocking_transport_port uvm_get_peek_port
syn keyword uvmClass             uvm_get_port uvm_master_port uvm_nonblocking_get_peek_port uvm_nonblocking_get_port
syn keyword uvmClass             uvm_nonblocking_master_port uvm_nonblocking_peek_port uvm_nonblocking_put_port
syn keyword uvmClass             uvm_nonblocking_slave_port uvm_nonblocking_transport_port uvm_peek_port
syn keyword uvmClass             uvm_put_port uvm_slave_port uvm_transport_port
syn keyword uvmClass             uvm_analysis_port
syn keyword uvmMethod            get_type_name write

" uvm_sv/src/uvm_tlm/sqr_connections.svh
syn keyword uvmClass             uvm_seq_item_pull_port
syn keyword uvmMethod            connect_if
syn keyword uvmMethod            get get_next_item has_do_available peek put put_response try_next_item
syn keyword uvmMethod            item_done wait_for_sequences
syn keyword uvmClass             uvm_seq_item_pull_export
syn keyword uvmMethod            get get_next_item has_do_available peek put put_response try_next_item
syn keyword uvmMethod            item_done wait_for_sequences
syn keyword uvmClass             uvm_seq_item_pull_imp
syn keyword uvmMethod            get get_next_item has_do_available peek put put_response try_next_item
syn keyword uvmMethod            item_done wait_for_sequences

" uvm_sv/src/uvm_tlm/sqr_ifs.svh
syn keyword uvmClass             sqr_if_base
syn keyword uvmMethod            get get_next_item has_do_available item_done peek put put_response try_next_item wait_for_sequences

" uvm_sv/src/uvm_tlm/uvm_tlm.svh

" uvm_sv/src/uvm_tlm/uvm_tlm_fifo_base.svh
syn keyword uvmClass             uvm_tlm_event
syn keyword uvmClass             uvm_tlm_fifo_base
syn keyword uvmMethod            can_get can_peek can_put flush get is_empty ok_to_get ok_to_peek
syn keyword uvmMethod            ok_to_put peek put size try_get try_peek try_put used

" uvm_sv/src/uvm_tlm/uvm_tlm_fifos.svh
syn keyword uvmClass             uvm_tlm_fifo
syn keyword uvmMethod            can_get can_peek can_put flush get get_type_name is_empty
syn keyword uvmMethod            is_full peek put size try_get try_peek try_put used
syn keyword uvmClass             uvm_tlm_analysis_fifo
syn keyword uvmMethod            get_type_name write

" uvm_sv/src/uvm_tlm/uvm_tlm_ifs.svh
syn keyword uvmClass             uvm_tlm_if_base
syn keyword uvmMethod            can_get can_peek can_put get nb_transport peek put
syn keyword uvmMethod            transport try_get try_peek try_put write

" uvm_sv/src/uvm_tlm/uvm_tlm_imps.svh

" uvm_sv/src/uvm_tlm/uvm_tlm_req_rsp.svh
syn keyword uvmClass             uvm_tlm_req_rsp_channel
syn keyword uvmMethod            create create_aliased_exports connect get_type_name
syn keyword uvmClass             uvm_tlm_transport_channel
syn keyword uvmMethod            nb_transport transport

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_verilog_syn_inits")
   if version < 508
      let did_verilog_syn_inits = 1
      command -nargs=+ HiLink hi link <args>
   else
      command -nargs=+ HiLink hi def link <args>
   endif

   " The default highlighting.
   HiLink verilogMethod          Function
   HiLink verilogTypeDef         TypeDef
   HiLink verilogAssertion       Include

   HiLink uvmClass               Type
   HiLink uvmTypeDef             Type
   HiLink uvmMethod              Function
   HiLink uvmMethodGlobal        Function
   HiLink uvmDeprecated          Error
   HiLink uvmDeprecatedClass     Function
   HiLink uvmDeprecatedMethod    Function
   HiLink uvmCompatibility       Underlined

   delcommand HiLink
endif


   hi uvmPhaseFuncMethod            guifg=orange3 gui=bold
   hi uvmPhaseTaskMethod            guifg=violetred1 gui=bold

"Modify the following as needed.  The trade-off is performance versus
"functionality.
syn sync lines=50

if !exists("did_sysVerilog_syntax_inits")
  let did_sysVerilog_syntax_inits = 1
 " The default methods for highlighting.  Can be overridden later

  hi link sysVerilogCharacter       Character
  hi link sysVerilogTodo            Todo
  hi link sysVerilogNumber          Number
  hi link sysVerilogOperator        Special
  "hi link sysVerilogStatement       Statement
  hi      sysVerilogStatement       guifg=Indianred3 gui=bold
  hi link sysVerilogGlobal          String
  hi link sysVerilogDirective       SpecialComment
  hi      sysVerilogString          guifg=purple guibg=grey98
  hi      sysVerilogDefines         guifg=purple

"----------------------------Added by Malkesh Adesra--------------------------------

  hi sysVerilogData                 guifg=black gui=italic,bold
  hi sysVerilogPort                 guifg=Black gui=bold
  hi sysVerilogLabel                guifg=purple4 gui=bold
  hi sysVerilogtag                  guifg=lightslategrey gui=bold
  hi sysVerilogRepeat               guifg=darkcyan gui=bold
  hi sysVerilogConditional          guifg=darkseagreen4 gui=bold
  "hi sysVerilogComment              guifg=lightslategrey gui=bold 
  hi sysVerilogComment              guifg=dodgerblue3  
  "hi sysVerilogConstant             guifg=Orchid gui=bold
  hi link sysVerilogConstant        String 
  hi sysVerilogBlock                guifg=dimgrey gui=bold
  hi sysVerilogBlock1               guifg=Blue4 gui=bold
  hi sysVerilogBlock2               guifg=slateBlue1 gui=bold
  hi sysVerilogBlock3               guifg=orange3 gui=bold
  hi sysVerilogBlockC               guifg=Blue4 gui=bold
  hi sysVerilogTask1                guifg=#D80E48 gui=bold
  hi sysVerilogTask                 guifg=violetred1 gui=bold
  hi sysVerilogMyname               guifg=orange gui=italic

"----------------------------Added by Malkesh Adesra--------------------------------
  "hi sysVerilogClass                guifg=darkmagenta gui=bold
  hi sysVerilogClass                guifg=darkmagenta
  hi sysVerilogClassfucntionName    guifg=orange3    gui=bold
  hi sysVerilogClasstaskName        guifg=orange3    gui=bold
  hi sysVeriloginterface            guifg=darkcyan gui=bold
  hi sysVerilogchannel              guifg=darkgoldenrod4 gui=bold
  hi sysVerilogscenario_gen         guifg=darkgoldenrod4 gui=bold
  hi sysVerilogenum                 guifg=mediumaquamarine gui=bold

"----------------------------Added by Malkesh Adesra--------------------------------
  hi sysVerilogVMM                  guifg=Orange gui=bold
  hi sysVerilogVMMtask              guifg=#ff6969 gui=bold
  hi sysVerilogVMMfield              guifg=forestgreen gui=bold

"----------------------------Added by Malkesh Adesra--------------------------------
  hi sysVerilogVMMclass             guifg=darkgoldenrod3 gui=bold
  "hi sysVerilogVMMclass             guifg=NavajoWhite4 gui=bold
endif

let b:current_syntax = "sysVerilog"

" matching pairs of keywords
if exists("loaded_matchit")
  let b:match_ignorecase=0
  let b:match_words=
    \ '\<begin\>:\<end\>,' .
    \ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,'.
    \ '\<if\>:\<else\>,' .
    \ '\<module\>:\<endmodule\>,' .
    \ '\<class\>:\<endclass\>,' .
    \ '\<program\>:\<endprogram\>,' .
    \ '\<clocking\>:\<endclocking\>,' .
    \ '\<property\>:\<endproperty\>,' .
    \ '\<sequence\>:\<endsequence\>,' .
    \ '\<package\>:\<endpackage\>,' .
    \ '\<covergroup\>:\<endgroup\>,' .
    \ '\<primitive\>:\<endprimitive\>,' .
    \ '\<generate\>:\<endgenerate\>,' .
    \ '\<interface\>:\<endinterface\>,' .
    \ '\<function\>:\<endfunction\>,' .
    \ '\<task\>:\<endtask\>,' .
    \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
    \ '`ifdef\>:`else\>:`endif\>,' .
    \ '`ifndef\>:`else\>:`endif\>,' 

endif


"----------------------------Added by Malkesh Adesra--------------------------------

abbr #x //---------------------------------------------------------------------
abbr #c ///////////////////////////////////////////////////////////////////////
abbr vdbg `vmm_debug(log,"");
abbr vwarn `vmm_warning(log,"");
abbr vnote `vmm_note(log,"");
abbr vftl `vmm_fatal(log,"");
abbr verr $error("");
abbr dpl $display("");


" vim: ts=80
