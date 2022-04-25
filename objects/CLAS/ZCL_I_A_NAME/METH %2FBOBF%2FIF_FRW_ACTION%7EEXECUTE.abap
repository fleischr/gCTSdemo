  METHOD /bobf/if_frw_action~execute.
    DATA: lt_data    TYPE TABLE OF zsirbkemptp12,
          lv_message TYPE symsg,
          lw_emp     TYPE zemp1,
       wa_et type ZSTRUCT.
        FIELD-SYMBOLS <ls_data> TYPE data.
*    FIELD-SYMBOLS <lv_field> TYPE ZNAME_EMP .
*    FIELD-SYMBOLS <ls_data> TYPE data.
*    FIELD-SYMBOLS <lv_field> TYPE zemp_city .
    CALL METHOD io_read->retrieve
      EXPORTING
        iv_node = zif_i_rbkemptp12_c=>sc_node-zi_rbkemptp1   " Node Name
        it_key  = it_key   " Key Table
*       iv_before_image         = ABAP_FALSE    " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
*       iv_fill_data            = ABAP_TRUE    " Data element for domain BOOLE: TRUE (='X') and FALSE (=' ')
*       it_requested_attributes =     " List of Names (e.g. Fieldnames)
      IMPORTING
*       eo_message              =     " Message Object
        et_data = lt_data   " Data Return Structure
*       et_failed_key           =     " Key Table
*       et_node_cat             =     " Node Category Assignment
      .
    READ TABLE lt_data REFERENCE  INTO   DATA(lw_data) INDEX 1 .


*    lw_emp-emp_id = lw_data-emp_id.
*    lw_emp-emp_age = lw_data-emp_age.


ASSIGN is_parameters->* TO <ls_data>. "dereference into field symbol
*    ASSIGN COMPONENT 'NAME' OF STRUCTURE <ls_data> TO <lv_field>.
wa_et-zname = <ls_data>.
lw_data->emp_name = <ls_data> .
    lw_emp-emp_name = <ls_data> .
     lw_emp-emp_id = lw_data->emp_id.
   lw_emp-emp_age = lw_data->emp_age.
       lw_emp-guid = lw_data->key.


    APPEND wa_et to et_data.



    CALL FUNCTION 'ZEMP_CREATE'
      EXPORTING
       WA_EMP1 = lw_emp.
*        wa_emp2 = lw_emp.
*       WA_EMP3 =
*       SEL     =

*    io_modify->update(
*      EXPORTING
*        iv_node           =   zif_i_rbkemptp12_c=>sc_node-zi_rbkemptp1              " Node
*        iv_key            =     lw_data->key             " Key
**        iv_root_key       =                  " NodeID
*        is_data           =     lw_data           " Data
**        it_changed_fields =                  " List of Names (e.g. Fieldnames)
*    ).




*MOVE-CORRESPONDING lt_data to et_data.
*    ASSIGN is_parameters->* TO <ls_data>. "dereference into field symbol
*    ASSIGN COMPONENT 'EMP_CITY' OF STRUCTURE <ls_data> TO <lv_field>.
*
*    lw_emp-emp_city = <lv_field> .

*    IF eo_message IS NOT BOUND.
*      eo_message = /bobf/cl_frw_message_factory=>create_container( ).
*    ENDIF.
*
*
*
*    lv_message-msgty = 'S'.
*    lv_message-msgid = 'ZER_MSG'.
*    lv_message-msgno = '000'.
*    lv_message-msgv1 = 'City changed Successfully'.
*
*
*
*    CALL METHOD eo_message->add_message
*      EXPORTING
*        is_msg  = lv_message
*        iv_node = is_ctx-node_key
*        iv_key  = lw_data->key
**       iv_attribute =
**       iv_lifetime  = /BOBF/CM_FRW=>CO_LIFETIME_TRANSITION
*      .
*
*    CALL METHOD io_modify->update
*      EXPORTING
*        iv_node = is_ctx-node_key     " Node
*        iv_key  = lw_data->key    " Key
**       iv_root_key       =     " NodeID
*        is_data = lw_data   " Dat
**       it_changed_fields =     " List of Names (e.g. Fieldnames)
*      .


  ENDMETHOD.