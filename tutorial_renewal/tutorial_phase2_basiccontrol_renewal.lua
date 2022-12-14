PaGlobal_TutorialPhase_BasicControl = {
  _phaseNo = 2,
  _currentStep = 0,
  _nextStep = 0,
  _currentProgress = 1,
  _updateTime = 0,
  _isPhaseOpen = true,
  _isSkippable = true,
  _regionKeyRawList = {9},
  _startLimitLevel = 5,
  _state = 0
}
function PaGlobal_TutorialPhase_BasicControl:setState(isStart)
  self._state = isStart
end
function PaGlobal_TutorialPhase_BasicControl:getState()
  return self._state
end
function PaGlobal_TutorialPhase_BasicControl:checkPossibleForPhaseStart(stepNo)
  if false == self._isPhaseOpen then
    _PA_LOG("ê³½ë¯¼ìš°", "íŠœí† ë¦¬ì–¼ Phaseê°€ ë‹«í˜€ìˆìœ¼ë¯€ë¡œ íŠœí† ë¦¬ì–¼ì„ ì‹œì‘í•˜ì§€ ì•ŠìŠµë‹ˆë‹¤. _phaseNo : " .. tostring(self._phaseNo))
    return false
  end
  local selfPlayer = getSelfPlayer()
  if nil == selfPlayer then
    _PA_LOG("ê³½ë¯¼ìš°", "íŠœí† ë¦¬ì–¼ ì‹œì‘ ê°€ëŠ¥ ì—¬ë¶€ ê²€ì‚¬ì¤‘ì— selfPlayerê°€ ì—†ìŠµë‹ˆë‹¤! _phaseNo : " .. tostring(self._phaseNo))
    return false
  end
  local currentRegionKeyRaw = selfPlayer:getRegionKeyRaw()
  local isPossiblePhaseRegion = false
  for index, value in pairs(self._regionKeyRawList) do
    if value == currentRegionKeyRaw then
      isPossiblePhaseRegion = true
      break
    end
  end
  if false == isPossiblePhaseRegion then
    _PA_LOG("ê³½ë¯¼ìš°", "íŠœí† ë¦¬ì–¼ì´ ê°€ëŠ¥í•œ ì§€ì—­ì´ ì•„ë‹ˆë¯€ë¡œ íŠœí† ë¦¬ì–¼ì„ ì‹¤í–‰í•˜ì§€ ì•ŠìŠµë‹ˆë‹¤. _phaseNo : " .. tostring(self._phaseNo))
    return false
  end
  if self._startLimitLevel < getSelfPlayer():get():getLevel() then
    _PA_LOG("ê³½ë¯¼ìš°", "ìºë¦­í„°ì˜ ë ˆë²¨ì´ " .. tostring(self._startLimitLevel) .. "ë¥¼ ì´ˆê³¼í–ˆìœ¼ë¯€ë¡œ íŠœí† ë¦¬ì–¼ì„ ì§„í–‰í•˜ì§€ ì•ŠìŠµë‹ˆë‹¤. _phaseNo : " .. tostring(self._phaseNo))
    return false
  end
  return true
end
function PaGlobal_TutorialPhase_BasicControl:checkSkippablePhase()
  if true == self._isSkippable and true == PaGlobal_TutorialManager:checkHaveOverLevelCharacter() then
    return true
  end
  return false
end
function PaGlobal_TutorialPhase_BasicControl:startPhase(stepNo)
  if false == self:checkPossibleForPhaseStart(stepNo) then
    return
  end
  if true == PaGlobal_SummonBossTutorial_Manager:isDoingSummonBossTutorial() then
    PaGlobal_SummonBossTutorial_Manager:endTutorial()
    _PA_LOG("ê³½ë¯¼ìš°", "íŠœí† ë¦¬ì–¼ phase(" .. tostring(self._phaseNo) .. ")ê°€ ë³´ìŠ¤ ì†Œí™˜ íŠœí† ë¦¬ì–¼ì„ ì¢…ë£Œì‹œí‚´! _phaseNo : " .. tostring(self._phaseNo))
  end
  local isSkippable = self:checkSkippablePhase()
  if true == isSkippable and false == PaGlobal_TutorialManager:isDoingTutorial() then
    PaGlobal_TutorialManager:questionPhaseSkip(self, stepNo)
  else
    self:startPhaseXXX(stepNo)
  end
end
function PaGlobal_TutorialPhase_BasicControl:startPhaseXXX(stepNo)
  PaGlobal_TutorialManager:setCurrentPhaseNo(self._phaseNo)
  PaGlobal_TutorialManager:setDoingTutorial(true)
  _PA_LOG("ê³½ë¯¼ìš°", "PaGlobal_TutorialPhase_BasicControl:startPhase()")
  self._currentStep = 1
  self._nextStep = stepNo
  self._currentProgress = 1
  self._updateTime = 0
  ToClient_DeleteNaviGuideByGroup()
  PaGlobal_TutorialManager:setAllowCallBlackSpirit(false)
  PaGlobal_TutorialUiManager:hideAllTutorialUi()
  PaGlobal_TutorialUiManager:repositionScreen()
  self:setState(PaGlobal_TutorialState.eState_Start)
  Panel_Tutorial_Renew:SetShow(true, true)
end
function PaGlobal_TutorialPhase_BasicControl:endPhase()
  self._currentStep = 0
  self._nextStep = 1
  PaGlobal_TutorialUiBlackSpirit:showRotateArrow(false)
  PaGlobal_TutorialManager:startNextPhase()
  _PA_LOG("ì´ë‹¤í˜œ", "PaGlobal_TutorialPhase_BasicControl:endPhase()")
end
function PaGlobal_TutorialPhase_BasicControl:updatePerFrame(deltaTime)
  self:handleStep(deltaTime)
end
local currentInputMode
function PaGlobal_TutorialPhase_BasicControl:handleStep(deltaTime)
  if 1 == self._currentStep then
    self:Step01_LookAround(deltaTime)
  else
    self:endPhase()
  end
end
function PaGlobal_TutorialPhase_BasicControl:Step01_LookAround(deltaTime)
  local currentState = self:getState()
  if PaGlobal_TutorialState.eState_Start == currentState then
    self:Step01_Prepare()
  elseif PaGlobal_TutorialState.eState_Do == currentState then
    self:Step01_DoStep(deltaTime)
  elseif PaGlobal_TutorialState.eState_Done == currentState then
    self:Step01_Done()
  end
end
function PaGlobal_TutorialPhase_BasicControl:Step01_Prepare()
  local message = PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_60") .. " " .. PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_61")
  PaGlobal_TutorialUiManager:getUiBlackSpirit():setSpiritUiForTutorial_Desc(message)
  PaGlobal_TutorialUiManager:getUiGuideButton():showRotateArrow(true)
  self:setState(PaGlobal_TutorialState.eState_Do)
end
function PaGlobal_TutorialPhase_BasicControl:Step01_DoStep(deltaTime)
  self._updateTime = self._updateTime + deltaTime
  if 1 == self._currentProgress and 8 * timeRatio < self._updateTime then
    PaGlobal_TutorialUiManager:getUiGuideButton():showRotateArrow(false)
    self._updateTime = 0
    local message = PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_62") .. " " .. PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_63")
    PaGlobal_TutorialUiManager:getUiBlackSpirit():setSpiritUiForTutorial_Desc(message)
    PaGlobal_TutorialUiManager:getUiMasking():showBackgroundMasking(0, 0)
    PaGlobal_TutorialUiManager:getUiGuideButton():showCtrlGuide(true)
    PaGlobal_TutorialUiManager:getUiGuideButton():showClickableButton(true, "1 / 3")
    PaGlobal_TutorialUiManager:getUiGuideButton():setPosClickableButton(getScreenSizeX() * 0,5 - 100, getScreenSizeY() * 0,5 - 100)
    PaGlobal_TutorialUiGuideButton:setGuideButtonEventFunctor(function()
      audioPostEvent_SystemUi(4, 12)
      self._currentProgress = self._currentProgress + 1
    end)
    self._currentProgress = self._currentProgress + 1
  elseif 2 == self._currentProgress then
  elseif 3 == self._currentProgress then
    local message = PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_64") .. " " .. PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_65")
    PaGlobal_TutorialUiManager:getUiBlackSpirit():setSpiritUiForTutorial_Desc(message)
    PaGlobal_TutorialUiManager:getUiGuideButton():showClickableButton(true, "2 / 3")
    PaGlobal_TutorialUiManager:getUiGuideButton():setPosClickableButton(getScreenSizeX() * 0,3, getScreenSizeY() * 0,3)
    PaGlobal_TutorialUiGuideButton:setGuideButtonEventFunctor(function()
      audioPostEvent_SystemUi(4, 12)
      self._currentProgress = self._currentProgress + 1
    end)
    self._currentProgress = self._currentProgress + 1
  elseif 4 == self._currentProgress then
  elseif 5 == self._currentProgress then
    local message = PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_66") .. " " .. PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_67")
    PaGlobal_TutorialUiManager:getUiBlackSpirit():setSpiritUiForTutorial_Desc(message)
    PaGlobal_TutorialUiManager:getUiGuideButton():showClickableButton(true, "3 / 3")
    PaGlobal_TutorialUiManager:getUiGuideButton():setPosClickableButton(FGlobal_Panel_Radar_GetPosX() + FGlobal_Panel_Radar_GetSizeX() * 0,3, FGlobal_Panel_Radar_GetPosY() + FGlobal_Panel_Radar_GetSizeY() * 0,3)
    PaGlobal_TutorialUiGuideButton:setGuideButtonEventFunctor(function()
      audioPostEvent_SystemUi(4, 12)
      self._currentProgress = self._currentProgress + 1
      PaGlobal_TutorialUiGuideButton:showClickableButton(false)
    end)
    self._currentProgress = self._currentProgress + 1
  elseif 6 == self._currentProgress then
  elseif 7 == self._currentProgress then
    local message = PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_86") .. " " .. PAGetString(Defines.StringSheet_GAME, "LUA_TUTORIAL_OBSIDIAN_TEXT_87")
    PaGlobal_TutorialUiManager:getUiBlackSpirit():setSpiritUiForTutorial_Desc(message)
    PaGlobal_TutorialUiManager:getUiMasking():hideQuestMasking()
    FGlobal_Panel_Radar_Show_AddEffect()
    self._currentProgress = self._currentProgress + 1
    self._updateTime = 0
  elseif 8 == self._currentProgress and 6 * timeRatio < self._updateTime then
    self._updateTime = 0
    self._currentProgress = 1
    self:setState(PaGlobal_TutorialState.eState_Done)
  end
end
function PaGlobal_TutorialPhase_BasicControl:Step01_Done()
  self._updateTime = 0
  self._currentProgress = 1
  self._currentStep = self._currentStep + 1
  PaGlobal_TutorialUiManager:getUiGuideButton():showCtrlGuide(false)
  self:setState(PaGlobal_TutorialState.eState_Start)
end
