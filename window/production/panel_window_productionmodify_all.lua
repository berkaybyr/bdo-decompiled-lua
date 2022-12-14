PaGlobal_ProductionModify = {
  _ui = {
    stc_panelBG = nil,
    txt_title = nil,
    check_popup = nil,
    btn_close = nil,
    stc_recordBG = nil,
    chk_streaming = nil,
    chk_onlyDownload = nil,
    chk_exceptRecorder = nil,
    edit_replayName = nil,
    btn_startRecord = nil,
    btn_stopRecord = nil,
    btn_convertFile = nil,
    btn_deleteRecordAtServer = nil,
    radioBtnRecordGroupTemplate = nil,
    radioBtnRecordGroup = {},
    stc_playBG = nil,
    edit_selectedReplayName = nil,
    btn_play = nil,
    btn_pause = nil,
    btn_stop = nil,
    btn_loadReplayList = nil,
    chk_isAutoStop = nil,
    btn_gotoStart = nil,
    btn_prevSecond = nil,
    btn_nextSecond = nil,
    btn_playProduction = nil,
    btn_resetProductionList = nil,
    stc_cameraBG = nil,
    txt_selectCutSceneCameraName = nil,
    list2_cameraGroupInfoList = nil,
    edit_cameraGroupName = nil,
    btn_addGroupCamera = nil,
    btn_deleteGroupCamera = nil,
    btn_closeGroupCamera = nil,
    btn_playGroupCamera = nil,
    btn_saveGroupCamera = nil,
    btn_stopGroupCamera = nil,
    btn_freeCam = nil,
    btn_normalCam = nil,
    edit_fadeTime = nil,
    edit_delayTime = nil,
    edit_interpolationTime = nil,
    edit_startMoveSpeed = nil,
    edit_endMoveSpeed = nil,
    edit_rotatePower = nil,
    edit_translatePower = nil,
    edit_fallOff = nil,
    edit_radius = nil,
    edit_keepTime = nil,
    txt_prevCameraName = nil,
    txt_nextCameraName = nil,
    list2_camInfoList = nil,
    btn_addCamInfo = nil,
    btn_editCamInfo = nil,
    btn_deleteCamInfo = nil,
    btn_addCameraPivot = nil,
    btn_deleteCameraPivot = nil,
    chk_isRenderFrustum = nil,
    chk_isThirdPersonMode = nil,
    chk_isRenderObjectOnPlaying = nil,
    btn_connectPrevCamera = nil,
    btn_disConnectPrevCamera = nil,
    btn_connectNextCamera = nil,
    btn_disConnectNextCamera = nil,
    edit_cameraGroupInfoTime = nil,
    btn_insertReplayCameraGroupInfo = nil,
    btn_deleteReplayCameraGroupInfo = nil,
    btn_remakeFileForCameraGroup = nil,
    list2_replayCameraGroupInfoList = nil,
    radioBtnFadeTypeTemplate = nil,
    edit_cameraTraceInfoTime = nil,
    edit_cameraTraceKey = nil,
    btn_insertReplayCameraTraceInfo = nil,
    btn_deleteReplayCameraTraceInfo = nil,
    btn_remakeFileForCameraTrace = nil,
    btn_playCameraTrace = nil,
    btn_stopCameraTrace = nil,
    list2_replayCameraTraceInfoList = nil,
    edit_intervalStartTime = nil,
    edit_intervalEndTime = nil,
    btn_remakeIntervalFile = nil,
    txt_selectCharacterName = nil,
    btn_remakeFileForPossesion = nil,
    list2_replayCharacterInfoList = nil,
    radioBtnLetterBoxTemplate = nil
  },
  _radioBtnGroupCount = {
    _recordCount = 3,
    _recordName = {
      [0] = "Arsha",
      [1] = "Production",
      [2] = "CharacterMovie"
    },
    _fadeInOutCount = 4,
    _fadeInOutName = {
      [0] = "Fade In",
      [1] = "Fade Out",
      [2] = "Out And In",
      [3] = "None"
    },
    _letterBoxCount = 3,
    _letterBoxName = {
      [0] = "Open",
      [1] = "Close",
      [2] = "None"
    }
  },
  _radioBtnRecord = {},
  _radioBtnCamera = {},
  _radioBtnLetterBox = {},
  _selectedRecordTypeIndex = nil,
  _selectedFadeTypeIndex = nil,
  _selectedLetterBoxTypeIndex = nil,
  _initialize = false
}
runLua("UI_Data/Script/Window/Production/Panel_Window_ProductionModify_All_1.lua")
runLua("UI_Data/Script/Window/Production/Panel_Window_ProductionModify_All_2.lua")
registerEvent("FromClient_luaLoadComplete", "FromClient_ProductionModifyInit")
function FromClient_ProductionModifyInit()
  PaGlobal_ProductionModify:initialize()
end
