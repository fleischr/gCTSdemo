  method /BOBF/IF_LIB_DELETE_ACTIVE~DELETE_ACTIVE_ENTITY.
*     /bobf/cl_lib_draft=>/bobf/if_lib_union_utilities~separate_keys(
*      EXPORTING iv_bo_key = is_ctx-bo_key
*        iv_node_key = is_ctx-node_key
*        it_key = it_key
*      IMPORTING
*        et_active_key = DATA(lt_active_bopf_keys)
*        ).
*
*    CHECK lt_active_bopf_keys IS NOT INITIAL.
*    DATA(ls_header) = VALUE ZI_RBKEMPTP1(  ).
*    " Convert the bopf key to active document key
*    /bobf/cl_lib_draft=>/bobf/if_lib_union_utilities~get_active_document_key(
*      EXPORTING iv_bo_key = is_ctx-bo_key
*        iv_node_key = is_ctx-node_key
*        iv_bopf_key = lt_active_bopf_keys[ 1 ]-key
*      IMPORTING es_active_document_key = ls_header ).
*    " Delete the data
*    DELETE FROM zemp1 WHERE  GUID = ls_header-guid.

*    DELETE FROM zso_items WHERE salesorder = ls_header-salesorder.
  endmethod.