  method /BOBF/IF_FRW_VALIDATION~EXECUTE.
    data: io_data type ZTIRBKEMP2TP1,
        lr_data type ZSIRBKEMP2TP1,
        io_data1 type ZTIRBKEMPTP12,
        lr_data1 TYPE  ZSIRBKEMPTP12,
        wa_failed type  /BOBF/S_FRW_KEY,
         lv_message       TYPE symsg.


    io_read->retrieve(
      EXPORTING
        iv_node                 =  ZIF_I_RBKEMPTP12_C=>sc_node-zi_rbkemp2tp             " Node Name
        it_key                  =  it_key              " Key Table
*        iv_before_image         = abap_false       " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
        iv_fill_data            = abap_true        " Data element for domain BOOLE: TRUE (='X') and FALSE (=' ')
*        it_requested_attributes =                  " List of Names (e.g. Fieldnames)
      IMPORTING
*        eo_message              =                  " Message Object
        et_data                 =  io_data                " Data Return Structure
        et_failed_key           = et_failed_key                 " Key Table
*        et_node_cat             =                  " Node Category Assignment
    ).

   CALL METHOD  IO_read->retrieve_by_association(
         EXPORTING
           iv_node                 = ZIF_I_RBKEMPTP12_C=>sc_node-zi_rbkemp2tp          " Node Name
           it_key                  =  it_key               " Key Table
           iv_association          = ZIF_I_RBKEMPTP12_C=>sc_association-zi_rbkemp2tp-to_root             " Name of Association
*           is_parameters           =
*           it_filtered_attributes  =                  " List of Names (e.g. Fieldnames)
           iv_fill_data            = abap_true      " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
*           iv_before_image         = abap_false       " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
*           it_requested_attributes =                  " List of Names (e.g. Fieldnames)
        IMPORTING
*           eo_message              = lv_message                 " Message Object
          et_data                 =   io_data1               " Data Return Structure
*          et_key_link             =                 " Key Link
*           et_target_key           =                  " Key Table
           et_failed_key           = et_failed_key
           ).            " Key Table

  READ TABLE io_data  INTO  lr_data INDEX 1.
  READ TABLE io_data1  INTO  lr_data1 INDEX 1.
    if lr_data1-emp_id <> lr_data-emp_id and lr_data-emp_id <> 0.


    wa_failed-key  = lr_data-key.
       clear eo_message.

    IF eo_message IS NOT BOUND.
            eo_message = /bobf/cl_frw_message_factory=>create_container( ).

          lv_message-msgty = 'X'.
          lv_message-msgid = 'ZER_MSG'.
          lv_message-msgno = '001'.
          lv_message-msgv1 = 'ID does not match'.


**call the eo mesaage to pass the custom message if mc is created successfully.
          CALL METHOD eo_message->add_message
            EXPORTING
              is_msg  = lv_message
              iv_node = is_ctx-node_key
              iv_key  = lr_data-key
*             iv_attribute =
*             iv_lifetime  = /BOBF/CM_FRW=>CO_LIFETIME_TRANSITION
            .
ENDIF.


 append   wa_failed TO et_failed_key.

 ENDIF.

  endmethod.