  METHOD /bobf/if_frw_draft~copy_draft_to_active_entity.

* TABLES:zemp1,zemp2,zemp3.
    DATA:
      io_data     TYPE ztirbkemptp12,  "combined table type
      io_data1    TYPE ztirbkemp2tp1,
      io_data2    TYPE ztirbkemp3tp,
      lr_data     TYPE REF TO zsirbkemptp12, "combined stucture type
*          it_draft_key     TYPE  /bobf/t_frw_key,
*          wa_draft_key     TYPE /bobf/s_frw_key,
*          lv_message       TYPE symsg,
*          wa_et_failed_key LIKE LINE OF et_failed_draft_key,
      wa_emp1     TYPE zemp1_st,
      wa_emp2     TYPE zemp2_st,
      wa_emp3     TYPE zemp3_st,
      lt_data2    TYPE /bobf/t_frw_key,
      ls_data2    LIKE LINE OF lt_data2,
      wa_data1    TYPE  zsirbkemptp12,
      wa_data2    TYPE zsirbkemp2tp1,
      wa_data3    TYPE zsirbkemp3tp,
      guid_p      TYPE zguid_emp_p,
      lv_bobf_key TYPE zguid_emp_p.
*          wa_data1 TYPE ZSIRBKEMPTP12 .
    CALL METHOD io_read->retrieve
      EXPORTING
        iv_node = zif_i_rbkemptp12_c=>sc_node-zi_rbkemptp1  " Node Name
        it_key  = it_draft_key   " Key Table
      IMPORTING
        et_data = io_data.  " Data Return Structure

*     IF lines( io_data ) NE 1.
*      RAISE EXCEPTION TYPE /bobf/cx_frw_fatal.
*    ENDIF.
*
*     READ TABLE io_data ASSIGNING FIELD-SYMBOL(<fs_data>) INDEX 1.
*    ASSIGN COMPONENT if_draft_constants=>co_db_fieldname-has_active_entity OF STRUCTURE <fs_data> TO FIELD-SYMBOL(<fs_has_active>).

    CALL METHOD io_read->retrieve_by_association
      EXPORTING
        iv_node        = zif_i_rbkemptp12_c=>sc_node-zi_rbkemptp1            " Node Name
        it_key         = it_draft_key               " Key Table
        iv_association = zif_i_rbkemptp12_c=>sc_association-zi_rbkemptp1-_emp2tp              " Name of Association
*       is_parameters  =
*       it_filtered_attributes  =                  " List of Names (e.g. Fieldnames)
        iv_fill_data   = abap_true      " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
*       iv_before_image         = abap_false       " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
*       it_requested_attributes =                  " List of Names (e.g. Fieldnames)
      IMPORTING
*       eo_message     = lv_message                 " Message Object
        et_data        = io_data1               " Data Return Structure
*       et_key_link    =                 " Key Link
*       et_target_key  =                  " Key Table
        et_failed_key  = et_failed_draft_key.              " Key Table


*    CALL METHOD io_read->retrieve
*      EXPORTING
*        iv_node = ZIF_I_RBKEMPTP12_C=>sc_node-zi_rbkemp3tp " Node Name
*        it_key  = it_draft_key   " Key Table
*      IMPORTING
*        et_data = io_data2 .  " Data Return Structure

*         io_read->retrieve(
*           EXPORTING
*             iv_node                 =       ZIF_I_RBKEMPTP12_C=>sc_node-zi_rbkemp3tp         " Node Name
*             it_key                  =  it_draft_key                " Key Table
**             iv_before_image         = abap_false       " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
*            iv_fill_data            = abap_true        " Data element for domain BOOLE: TRUE (='X') and FALSE (=' ')
**             it_requested_attributes =                  " List of Names (e.g. Fieldnames)
*           IMPORTING
**             eo_message              =                  " Message Object
*             et_data                 = io_data2                 " Data Return Structure
**             et_failed_key           =                  " Key Table
**             et_node_cat             =                  " Node Category Assignment
*         ).

    READ TABLE io_data1 INTO wa_data2 INDEX 1 .
    ls_data2-key = wa_data2-key .
    APPEND ls_data2 TO lt_data2 .

    CALL METHOD io_read->retrieve_by_association
      EXPORTING
        iv_node        = zif_i_rbkemptp12_c=>sc_node-zi_rbkemp2tp      " Node Name
        it_key         = lt_data2     " Key Table
        iv_association = zif_i_rbkemptp12_c=>sc_association-zi_rbkemp2tp-_emptp3  " Name of Association
*       is_parameters  =
*       it_filtered_attributes  =                  " List of Names (e.g. Fieldnames)
        iv_fill_data   = abap_true      " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
*       iv_before_image         = abap_false       " Data Element for Domain BOOLE: TRUE (="X") and FALSE (=" ")
*       it_requested_attributes =                  " List of Names (e.g. Fieldnames)
      IMPORTING
*       eo_message     = lv_message               " Message Object
        et_data        = io_data2               " Data Return Structure
*       et_key_link    =                 " Key Link
*       et_target_key  =                  " Key Table
        et_failed_key  = et_failed_draft_key.             " Key Table
*         .

*    DATA: lv_guid TYPE ZGUID_EMP_P.
*    IF wa_data1-hasactiveentity = 'X'.
*      READ TABLE io_data INTO wa_data1 INDEX 1.
*      SELECT SINGLE guid FROM zemp1 INTO lv_guid WHERE emp_id = wa_data1-emp_id.
*      wa_emp1-emp_id = wa_data1-emp_id.
*      wa_emp1-emp_name = wa_data1-emp_name.
*      wa_emp1-emp_age = wa_data1-emp_age.
*      wa_emp1-guid = lv_guid.

*    ELSE.
      LOOP AT io_data  INTO wa_data1.
        wa_emp1-emp_id = wa_data1-emp_id.
        wa_emp1-emp_name = wa_data1-emp_name.
        wa_emp1-emp_age = wa_data1-emp_age.
*        wa_emp1-guid = wa_data1-key.

      ENDLOOP.
*    ENDIF.
* MOVE-CORRESPONDING VALUE (wa_data1)  to wa_emp1.
*if wa_data1-isactiveentity is INITIAL.
*  insert zemp1 from wa_emp1.
*  else.
*  modify zemp1 FROM  wa_emp1.
*
*  ENDIF.


*loop at lt_data2  INTO wa_data2.
    wa_emp2-emp_id = wa_data2-emp_id.
    wa_emp2-emp_city = wa_data2-emp_city.
    wa_emp2-emp_country = wa_data2-emp_country.
*    wa_emp2-guid = wa_data2-activeuuid.
*    wa_emp2-guid_p = wa_data2-parent_key.
*     ENDLOOP.
*  MOVE-CORRESPONDING wa_data2 to wa_emp2.
*if wa_data2-isactiveentity is INITIAL.
*  insert zemp2 from wa_emp2..
*  else.
*  modify zemp2 FROM  wa_emp2.
*
*
*  ENDIF.

    LOOP AT io_data2 INTO wa_data3.
      wa_emp3-emp_id = wa_data3-emp_id.
      wa_emp3-org_id = wa_data3-org_id.
      wa_emp3-org_name = wa_data3-org_name.
*      wa_emp3-guid = wa_data3-activeuuid.
*      wa_emp3-guid_1 = wa_data3-root_key.
*      wa_emp3-guid_2 = wa_data3-parent_key.
    ENDLOOP.
 if wa_data1-hasactiveentity = 'X'.
   wa_emp1-guid = wa_data1-activeuuid.

   else.
     wa_emp1-guid = wa_data1-key.

     endif.



IF wa_data2-hasactiveentity = 'X' ..
wa_emp2-guid = wa_data2-activeuuid.
       wa_emp2-guid_p = wa_emp1-guid.
       ELSE.
         wa_emp2-guid = wa_data2-key .
         wa_emp2-guid_p = wa_emp1-guid .

ENDIF.

IF wa_data3-hasactiveentity = 'X' ..
wa_emp3-guid = wa_data3-activeuuid.
       wa_emp3-guid_2 = wa_emp2-guid.
       wa_emp3-guid_1 = wa_emp1-guid.
       ELSE.
         wa_emp3-guid = wa_data3-key .
         wa_emp3-guid_1 = wa_emp1-guid.
         wa_emp3-guid_2 = wa_emp2-guid.







endif.



    IF wa_data1-hasactiveentity = 'X'.


      CALL FUNCTION 'ZEMP_CREATE'
        EXPORTING
          wa_emp1 = wa_emp1
          wa_emp2 = wa_emp2
          wa_emp3 = wa_emp3.
*       SEL           =
    ELSE.
*wa_emp1-guid = wa_data1-key .

      CALL FUNCTION 'ZEMP_CREATE'
        EXPORTING
          wa_emp1 = wa_emp1
          wa_emp2 = wa_emp2
          wa_emp3 = wa_emp3
          sel     = 'X'
          .
    ENDIF.

    CLEAR wa_emp1 .
    CLEAR wa_emp2 .
    CLEAR wa_emp3 .




    APPEND VALUE #( draft = it_draft_key[ 1 ]-key active = wa_data1-key ) TO et_key_link.
*      APPEND VALUE #( draft = it_draft_key[ 1 ]-key active = wa_data2-key ) TO et_key_link.
*       APPEND VALUE #( draft = it_draft_key[ 1 ]-key active = wa_data3-key ) TO et_key_link.








    .
  ENDMETHOD.