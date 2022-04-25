  method /BOBF/IF_FRW_DRAFT~COPY_DRAFT_TO_ACTIVE_ENTITY.
*   DATA: io_data          TYPE ZTIRBKEMPTP11,  "combined table type
*          lr_data          TYPE REF TO ZSIRBKEMP2TP, "combined stucture type
*          it_draft_key     TYPE  /bobf/t_frw_key,
*          wa_draft_key     TYPE /bobf/s_frw_key,
*          lv_message       TYPE symsg,
*          wa_et_failed_key LIKE LINE OF et_failed_key.
*    CALL METHOD io_read->retrieve
*      EXPORTING
*        iv_node = ZIF_I_RBKEMPTP11_C=>sc_node-zi_rbkemptp1  " Node Name
*        it_key  = it_key   " Key Table
*      IMPORTING
*        et_data = io_data .  " Data Return Structure
*
*     IF lines( io_data ) NE 1.
*      RAISE EXCEPTION TYPE /bobf/cx_frw_fatal.
*    ENDIF.
*
*     READ TABLE io_data ASSIGNING FIELD-SYMBOL(<fs_data>) INDEX 1.
*    ASSIGN COMPONENT if_draft_constants=>co_db_fieldname-has_active_entity OF STRUCTURE <fs_data> TO FIELD-SYMBOL(<fs_has_active>).
*
*       CALL METHOD  IO_read->retrieve_by_association
*         EXPORTING
*           iv_node                 =  ZIF_I_RBKEMPTP11_C=>sc_node-zi_rbkemptp1                " Node Name
*           it_key                  =  it_key                " Key Table
*           iv_association          =                  " Name of Association
**           is_parameters           =
**           it_filtered_attributes  =                  " List of Names (e.g. Fieldnames)
**           iv_fill_data            = abap_false       " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
**           iv_before_image         = abap_false       " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
**           it_requested_attributes =                  " List of Names (e.g. Fieldnames)
*        IMPORTING
**           eo_message              =                  " Message Object
**           et_data                 =                  " Data Return Structure
**           et_key_link             =                  " Key Link
**           et_target_key           =                  " Key Table
**           et_failed_key           =                  " Key Table
*         .
*
*
*      .
  endmethod.