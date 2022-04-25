  method /BOBF/IF_FRW_DETERMINATION~EXECUTE.
     DATA: io_data          TYPE ZTIRBKEMP2TP1,  "combined table type
          lr_data          TYPE REF TO ZSIRBKEMP2TP1, "combined stucture type
          it_draft_key     TYPE  /bobf/t_frw_key,
          wa_draft_key     TYPE /bobf/s_frw_key,
          lv_message       TYPE symsg,
          wa_et_failed_key LIKE LINE OF et_failed_key.
    CALL METHOD io_read->retrieve
      EXPORTING
        iv_node = ZIF_I_RBKEMPTP12_C=>sc_node-zi_rbkemp2tp " Node Name
        it_key  = it_key   " Key Table
      IMPORTING
        et_data = io_data   " Data Return Structure
      .

    LOOP AT io_data REFERENCE INTO lr_data .
      IF lr_data->emp_city = 'BANGALORE'.
        lr_data->emp_country = 'INDIA'.
        io_modify->update(
  EXPORTING
    iv_node           = ZIF_I_RBKEMPTP12_C=>sc_node-zi_rbkemp2tp   " Node
    iv_key            = lr_data->key    " Key
*        iv_root_key       =     " NodeID
    is_data           = lr_data    " Data
*        it_changed_fields =     " List of Names (e.g. Fieldnames)
).

      ENDIF.
      ENDLOOP.

  endmethod.