interface ZIF_I_RBKEMPTP11_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF ZI_RBKEMP2TP,
 CREATE_ZI_RBKEMP2TP            TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D45F75D2652219',
 DELETE_ZI_RBKEMP2TP            TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D45F75D265A219',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D45F75D25DC219',
 SAVE_ZI_RBKEMP2TP              TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D45F75D2662219',
 UPDATE_ZI_RBKEMP2TP            TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D45F75D2656219',
 VALIDATE_ZI_RBKEMP2TP          TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D45F75D265E219',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D45F75D25DA219',
      END OF ZI_RBKEMP2TP,
      BEGIN OF ZI_RBKEMPTP1,
 ACTIVATION                     TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58531061F3',
 CREATE_ZI_RBKEMPTP1            TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58530E01F3',
 DELETE_ZI_RBKEMPTP1            TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58530E81F3',
 EDIT                           TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58531041F3',
 LOCK_ZI_RBKEMPTP1              TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58530D41F3',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C585310A1F3',
 SAVE_ZI_RBKEMPTP1              TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58530F01F3',
 UNLOCK_ZI_RBKEMPTP1            TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58530D81F3',
 UPDATE_ZI_RBKEMPTP1            TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58530E41F3',
 VALIDATE_ZI_RBKEMPTP1          TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58530EC1F3',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE '128D52C118A61EE9A0D44C58531081F3',
      END OF ZI_RBKEMPTP1,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF ZI_RBKEMP2TP,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF ZI_RBKEMP2TP,
        BEGIN OF ZI_RBKEMPTP1,
        BEGIN OF EDIT,
 PRESERVE_CHANGES               TYPE STRING VALUE 'PRESERVE_CHANGES',
        END OF EDIT,
        BEGIN OF LOCK_ZI_RBKEMPTP1,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_ZI_RBKEMPTP1,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF UNLOCK_ZI_RBKEMPTP1,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_ZI_RBKEMPTP1,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF ZI_RBKEMPTP1,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF ZI_RBKEMP2TP,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE '128D52C118A61EE9A0D45F75D25D8219',
      END OF ZI_RBKEMP2TP,
      BEGIN OF ZI_RBKEMPTP1,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE '128D52C118A61EE9A0D44C58531021F3',
      END OF ZI_RBKEMPTP1,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF ZI_RBKEMP2TP,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D45F75D264C219',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D45F75D2650219',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D45F75D2666219',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D45F75D2668219',
      END OF ZI_RBKEMP2TP,
      BEGIN OF ZI_RBKEMP2TP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D45F75D266A219',
      END OF ZI_RBKEMP2TP_MESSAGE,
      BEGIN OF ZI_RBKEMP2TP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D45F75D266C219',
      END OF ZI_RBKEMP2TP_PROPERTY,
      BEGIN OF ZI_RBKEMPTP1,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D44C58530D21F3',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D44C58530CE1F3',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D44C58530DE1F3',
 _EMP2TP                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D45F75D2642219',
      END OF ZI_RBKEMPTP1,
      BEGIN OF ZI_RBKEMPTP1_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D44C58530F61F3',
      END OF ZI_RBKEMPTP1_LOCK,
      BEGIN OF ZI_RBKEMPTP1_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D44C58530F41F3',
      END OF ZI_RBKEMPTP1_MESSAGE,
      BEGIN OF ZI_RBKEMPTP1_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '128D52C118A61EE9A0D44C58530F81F3',
      END OF ZI_RBKEMPTP1_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF ZI_RBKEMP2TP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZI_RBKEMP2TP,
      BEGIN OF ZI_RBKEMPTP1,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZI_RBKEMPTP1,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '128D52C118A61EE9A0D44C58530C41F3' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'ZI_RBKEMPTP1' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF ZI_RBKEMP2TP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D45F75D25DE219',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D45F75D25E2219',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D45F75D25E0219',
      END OF ZI_RBKEMP2TP,
      BEGIN OF ZI_RBKEMPTP1,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D44C585310C1F3',
 CENTRAL_ADMIN_DATA             TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D45F75D25D0219',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D44C585311A1F3',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D44C58531181F3',
 DURABLE_LOCK_CLEANUP_CLEANUP   TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D45F75D25D6219',
 DURABLE_LOCK_CLEANUP_DELETE    TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D44C58531101F3',
 DURABLE_LOCK_CLEANUP_FAIL_SAVE TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D45F75D25D4219',
 DURABLE_LOCK_CLEANUP_SUCC_SAVE TYPE /BOBF/DET_KEY VALUE '128D52C118A61EE9A0D45F75D25D2219',
 RBK_DET                        TYPE /BOBF/DET_KEY VALUE '128D52C118A61ED9A0ED30FC8CDDEE9F',
      END OF ZI_RBKEMPTP1,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 DRAFT_CONSISTENCY              TYPE /BOBF/OBM_GROUP_KEY VALUE '128D52C118A61EE9A0D44C58530FC1F3',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 ZI_RBKEMP2TP                   TYPE /BOBF/OBM_NODE_KEY VALUE '128D52C118A61EE9A0D45F4FEA6B0219',
 ZI_RBKEMP2TP_MESSAGE           TYPE /BOBF/OBM_NODE_KEY VALUE '128D52C118A61EE9A0D45F75D264A219',
 ZI_RBKEMP2TP_PROPERTY          TYPE /BOBF/OBM_NODE_KEY VALUE '128D52C118A61EE9A0D45F75D264E219',
 ZI_RBKEMPTP1                   TYPE /BOBF/OBM_NODE_KEY VALUE '128D52C118A61EE9A0D44C58530C81F3',
 ZI_RBKEMPTP1_LOCK              TYPE /BOBF/OBM_NODE_KEY VALUE '128D52C118A61EE9A0D44C58530D01F3',
 ZI_RBKEMPTP1_MESSAGE           TYPE /BOBF/OBM_NODE_KEY VALUE '128D52C118A61EE9A0D44C58530CC1F3',
 ZI_RBKEMPTP1_PROPERTY          TYPE /BOBF/OBM_NODE_KEY VALUE '128D52C118A61EE9A0D44C58530DC1F3',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF ZI_RBKEMP2TP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  EMP_ID                         TYPE STRING VALUE 'EMP_ID',
  EMP_CITY                       TYPE STRING VALUE 'EMP_CITY',
  EMP_COUNTRY                    TYPE STRING VALUE 'EMP_COUNTRY',
  ACTIVEUUID                     TYPE STRING VALUE 'ACTIVEUUID',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF ZI_RBKEMP2TP,
      BEGIN OF ZI_RBKEMPTP1,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  EMP_ID                         TYPE STRING VALUE 'EMP_ID',
  EMP_NAME                       TYPE STRING VALUE 'EMP_NAME',
  EMP_AGE                        TYPE STRING VALUE 'EMP_AGE',
  ACTIVEUUID                     TYPE STRING VALUE 'ACTIVEUUID',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF ZI_RBKEMPTP1,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF ZI_RBKEMP2TP,
 ZI_RBKEMP2TP                   TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '128D52C118A61EE9A0D45F75D2640219',
      END OF ZI_RBKEMP2TP,
      BEGIN OF ZI_RBKEMPTP1,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '128D52C118A61EE9A0D44C58530CA1F3',
      END OF ZI_RBKEMPTP1,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_STATUS_VARIABLE,
      BEGIN OF ZI_RBKEMPTP1,
 DRAFT_CONSISTENCY_STATUS       TYPE /BOBF/STA_VAR_KEY VALUE '128D52C118A61EE9A0D44C58530FA1F3',
      END OF ZI_RBKEMPTP1,
    END OF SC_STATUS_VARIABLE .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF ZI_RBKEMPTP1,
 DURABLE_LOCK_CREATE_FOR_NEW    TYPE /BOBF/VAL_KEY VALUE '128D52C118A61EE9A0D44C585311C1F3',
      END OF ZI_RBKEMPTP1,
    END OF SC_VALIDATION .
endinterface.