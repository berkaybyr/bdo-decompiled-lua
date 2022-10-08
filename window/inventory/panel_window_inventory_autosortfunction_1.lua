function PaGlobal_InvenAutoSort:initialize()
  if self._initialize == true then
    return
  end
  self._isConsole = _ContentsGroup_UsePadSnapping
  self._ui._stc_sortMainArea = UI.getChildControl(Panel_Window_Inventory_AutoSortFunction, "Static_MainSort")
  self._ui._stc_sortMainArea:isValidate()
  self._ui._stc_sortSubArea = UI.getChildControl(Panel_Window_Inventory_AutoSortFunction, "Static_SubSort")
  self._ui._stc_sortSubArea:isValidate()
  local radioButtonTemplate = UI.getChildControl(self._ui._stc_sortMainArea, "RadioButton_Template")
  for index = __eInventorySortPropertyType_Auto, __eInventorySortPropertyType_Count - 1 do
    self._sortPropertyTypeButtonList[index] = UI.cloneControl(radioButtonTemplate, self._ui._stc_sortMainArea, "RadioButton_SortProperty_" .. index)
    self._sortPropertyTypeButtonList[index]:SetPosY(self._sortPropertyTypeButtonList[index]:GetPosY() + self._sortPropertyTypeButtonList[index]:GetSizeY() * index + 2 * index)
    self._sortPropertyTypeButtonList[index]:SetTextMode(__eTextMode_AutoWrap)
    self._sortPropertyTypeButtonList[index]:SetText(self:getSortPropertyTypeString(index))
    self._sortPropertyTypeButtonList[index]:SetShow(true)
    self._sortPropertyTypeButtonList[index]:isValidate()
    self._ui._stc_sortMainArea:SetSize(self._ui._stc_sortMainArea:GetSizeX(), self._sortPropertyTypeButtonList[index]:GetPosY() + self._sortPropertyTypeButtonList[index]:GetSizeY() + self._sortPropertyTypeButtonList[index]:GetSpanSize().y + 2)
  end
  UI.deleteControl(radioButtonTemplate)
  self._initialize = true
end
function PaGlobal_InvenAutoSort:getSortPropertyTypeString(sortPropertyType, isWareHouse)
  if sortPropertyType == __eInventorySortPropertyType_Auto then
    return PAGetString(Defines.StringSheet_GAME, "LUA_ARRANGED_RDOBTN_AUTOSORT")
  elseif sortPropertyType == __eInventorySortPropertyType_Grade then
    return PAGetString(Defines.StringSheet_GAME, "LUA_ARRANGED_RDOBTN_GRADE")
  elseif sortPropertyType == __eInventorySortPropertyType_EnchantGrade then
    return PAGetString(Defines.StringSheet_GAME, "LUA_ARRANGED_RDOBTN_ENCHANT_GRADE")
  elseif sortPropertyType == __eInventorySortPropertyType_Weight then
    return PAGetString(Defines.StringSheet_GAME, "LUA_ARRANGED_RDOBTN_WEIGHT")
  elseif sortPropertyType == __eInventorySortPropertyType_MarketPlaceWeight then
    return PAGetString(Defines.StringSheet_GAME, "LUA_ARRANGED_RDOBTN_MARKETPLACE_WEIGHT")
  elseif sortPropertyType == __eInventorySortPropertyType_EquipSlot then
    return PAGetString(Defines.StringSheet_GAME, "LUA_ARRANGED_RDOBTN_PARTS")
  else
    UI.ASSERT_NAME(false, "ë¹„ì •ìƒì…ë‹ˆë‹¤.", "ì´ì£¼")
    return ""
  end
end
function PaGlobal_InvenAutoSort:getPanelInfo(panelIndex)
  if Panel_Window_Inventory_AutoSortFunction == nil or panelIndex == nil then
    return nil
  end
  for index, value in pairs(self._panelList) do
    if index == panelIndex then
      return value
    end
  end
  return nil
end
function PaGlobal_InvenAutoSort:loadSortOptionAndDoSort(panelIndex, doUpdateSlot)
  if Panel_Window_Inventory_AutoSortFunction == nil or panelIndex == nil then
    return
  end
  if panelIndex >= InvenSortLinkPanelIndex.Count then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:loadSortOptionAndDoSort] panelIndexê°€ ë¹„ì •ìƒì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:loadSortOptionAndDoSort] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    return
  end
  if self._currentPanelIndex ~= nil and self._currentPanelIndex ~= panelIndex then
    self:hidePanel(self._currentPanelIndex)
  end
  self._currentPanelIndex = panelIndex
  self:loadSortOption(self:getCurrentInventorySortWhereType(panelIndex), doUpdateSlot)
end
function PaGlobal_InvenAutoSort:linkPanel(panelIndex, panel, sortButtonControl, sortCheckButtonControl, sortComponentControlAddString)
  if panelIndex == nil or panel == nil or sortButtonControl == nil or sortCheckButtonControl == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:linkPanel] ì¸ìê°€ nilì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelIndex >= InvenSortLinkPanelIndex.Count then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:linkPanel] panelIndexê°€ ë¹„ì •ìƒì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:linkPanel] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._contentsOption == false then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:linkPanel] panelIndexì— í•´ë‹¹í•˜ëŠ” contentsOptionì´ êº¼ì ¸ìˆìŠµë‹ˆë‹¤!", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == true then
    return
  end
  panelInfo._panel = panel
  local sortCompoentControlName
  if sortComponentControlAddString == nil or sortComponentControlAddString == "" then
    sortCompoentControlName = "Static_SortComponent"
  else
    sortCompoentControlName = sortComponentControlAddString
  end
  local parent = UI.getChildControl(panelInfo._panel, sortCompoentControlName)
  if parent == nil then
    UI.ASSERT_NAME(false, "ì¸ë²¤ì •ë ¬ componentë¥¼ ì‚¬ìš©í•˜ê¸° ìœ„í•´ì„œëŠ” panel childë¡œ [Static_SortComponent] ì»¨íŠ¸ë¡¤ì´ í•„ìš”í•©ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  panelInfo._panel:SetChildIndex(parent, 9999)
  panelInfo._ui._parent = parent
  panelInfo._ui._parent:addInputEvent("Mouse_On", "HandleOn_AutoSortFunctionPanel_CheckIn(" .. panelIndex .. ")")
  panelInfo._ui._parent:addInputEvent("Mouse_Out", "HandleOut_AutoSortFunctionPanel_Hide()")
  panelInfo._ui._sortButton = sortButtonControl
  panelInfo._ui._checkButton = sortCheckButtonControl
  panelInfo._ui._checkButton:addInputEvent("Mouse_LUp", "HandleLUp_AutoSortFunctionPanel_ToggleUseSort(" .. panelIndex .. ")")
  panelInfo._ui._stc_sortMainArea = UI.cloneControl(self._ui._stc_sortMainArea, parent, "Static_MainSort")
  panelInfo._ui._stc_sortSubArea = UI.cloneControl(self._ui._stc_sortSubArea, parent, "Static_SubSort")
  panelInfo._ui._rdo_ascending = UI.getChildControl(panelInfo._ui._stc_sortSubArea, "RadioButton_Ascending")
  panelInfo._ui._rdo_ascending:addInputEvent("Mouse_LUp", "HandleLUp_AutoSortFunctionPanel_SortBy(" .. __eInventorySortByType_Ascending .. ")")
  panelInfo._ui._rdo_ascending:addInputEvent("Mouse_On", "HandleOn_AutoSortFunctionPanel_CheckIn(" .. panelIndex .. ")")
  panelInfo._ui._rdo_ascending:addInputEvent("Mouse_Out", "HandleOut_AutoSortFunctionPanel_Hide()")
  panelInfo._ui._rdo_descending = UI.getChildControl(panelInfo._ui._stc_sortSubArea, "RadioButton_Descending")
  panelInfo._ui._rdo_descending:addInputEvent("Mouse_LUp", "HandleLUp_AutoSortFunctionPanel_SortBy(" .. __eInventorySortByType_Descending .. ")")
  panelInfo._ui._rdo_descending:addInputEvent("Mouse_On", "HandleOn_AutoSortFunctionPanel_CheckIn(" .. panelIndex .. ")")
  panelInfo._ui._rdo_descending:addInputEvent("Mouse_Out", "HandleOut_AutoSortFunctionPanel_Hide()")
  panelInfo._currentSortProperty = __eInventorySortPropertyType_Auto
  panelInfo._currentSortByType = __eInventorySortByType_Count
  for index = __eInventorySortPropertyType_Auto, __eInventorySortPropertyType_Count - 1 do
    panelInfo._ui._sortPropertyTypeButtonList[index] = UI.getChildControl(panelInfo._ui._stc_sortMainArea, "RadioButton_SortProperty_" .. index)
    panelInfo._ui._sortPropertyTypeButtonList[index]:addInputEvent("Mouse_LUp", "HandleLUp_AutoSortFunctionPanel_SortProperty(" .. index .. ")")
    panelInfo._ui._sortPropertyTypeButtonList[index]:addInputEvent("Mouse_On", "HandleOn_AutoSortFunctionPanel_CheckIn(" .. panelIndex .. ")")
    panelInfo._ui._sortPropertyTypeButtonList[index]:addInputEvent("Mouse_Out", "HandleOut_AutoSortFunctionPanel_Hide()")
  end
  panelInfo._isInitialize = true
  self:calcPanelSize(panelIndex)
end
function PaGlobal_InvenAutoSort:calcPanelSize(panelIndex)
  if panelIndex == nil then
    return
  end
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:calcPanelSize] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:calcPanelSize] ë“±ë¡ë˜ì—ˆì§€ë§Œ ì´ˆê¸°í™” ë˜ì§€ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local parentSizeX = panelInfo._ui._parent:GetSizeX()
  local mainAreaSizeY = panelInfo._ui._stc_sortMainArea:GetSizeY()
  local subAreaSizeY = panelInfo._ui._stc_sortSubArea:GetSizeY()
  panelInfo._ui._stc_sortMainArea:SetSize(parentSizeX - 5, mainAreaSizeY)
  panelInfo._ui._stc_sortSubArea:SetSize(parentSizeX - 5, subAreaSizeY)
  for index = __eInventorySortPropertyType_Auto, __eInventorySortPropertyType_Count - 1 do
    panelInfo._ui._sortPropertyTypeButtonList[index]:SetSize(parentSizeX - 10, panelInfo._ui._sortPropertyTypeButtonList[index]:GetSizeY())
  end
  panelInfo._ui._rdo_ascending:SetEnableArea(0, 0, parentSizeX - 10, panelInfo._ui._rdo_ascending:GetSizeY())
  panelInfo._ui._rdo_descending:SetEnableArea(0, 0, parentSizeX - 10, panelInfo._ui._rdo_descending:GetSizeY())
  panelInfo._ui._parent:SetSize(panelInfo._ui._parent:GetSizeX(), mainAreaSizeY + subAreaSizeY + 15)
end
function PaGlobal_InvenAutoSort:calcPanelPos(panelIndex)
  if panelIndex == nil then
    return
  end
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:calcPanelPos] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:calcPanelPos] ë“±ë¡ë˜ì—ˆì§€ë§Œ ì´ˆê¸°í™” ë˜ì§€ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local targetPanel = panelInfo._panel
  local parent = panelInfo._ui._parent
  local sortButtonControl = panelInfo._ui._sortButton
  if targetPanel == nil or parent == nil or sortButtonControl == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:calcPanelPos] í•„ìˆ˜ UI ì¤‘ì— nilì´ ìˆìŠµë‹ˆë‹¤. ìœ„ì¹˜ ê³„ì‚°ì„ í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local buttonPosX = sortButtonControl:GetParentPosX()
  local buttonPosY = sortButtonControl:GetParentPosY()
  local buttonSizeX = sortButtonControl:GetSizeX()
  local buttonSizeY = sortButtonControl:GetSizeY()
  local screenX = getScreenSizeX()
  local screenY = getScreenSizeY()
  local myParentPosX = parent:getParent():GetPosX()
  local myParentPosY = parent:getParent():GetPosY()
  local myPosX = parent:GetPosX()
  local myPosY = parent:GetPosY()
  local resultX = buttonPosX - myParentPosX
  local resultY = buttonPosY + buttonSizeY - myParentPosY - 2
  parent:SetPosX(resultX)
  parent:SetPosY(resultY)
  parent:ComputePosAllChild()
end
function PaGlobal_InvenAutoSort:showPanel(panelIndex)
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:showPanel] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤. show í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:showPanel] ë“±ë¡ì€ ë˜ì—ˆìœ¼ë‚˜ ì´ˆê¸°í™” ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤. show í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  panelInfo._ui._sortButton:ChangeTextureInfoTextureIDAsync("Combine_Btn_Check_Dropbox_Click", 0)
  panelInfo._ui._sortButton:ChangeTextureInfoTextureIDAsync("Combine_Btn_Check_Dropbox_Click", 1)
  panelInfo._ui._sortButton:setRenderTexture(panelInfo._ui._sortButton:getBaseTexture())
  if self._isConsole == true then
    ToClient_padSnapRefreshTarget(panelInfo._ui._parent)
  end
  panelInfo._ui._parent:SetShow(true)
  self._currentPanelIndex = panelIndex
  self:calcPanelPos(self._currentPanelIndex)
end
function PaGlobal_InvenAutoSort:hidePanel(panelIndex)
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:hidePanel] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤. show í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:hidePanel] ë“±ë¡ì€ ë˜ì—ˆìœ¼ë‚˜ ì´ˆê¸°í™” ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤. show í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._ui._parent:GetShow() == false then
    return
  end
  panelInfo._ui._sortButton:ChangeTextureInfoTextureIDAsync("Combine_Btn_Check_Dropbox_Normal", 0)
  panelInfo._ui._sortButton:ChangeTextureInfoTextureIDAsync("Combine_Btn_Check_Dropbox_Over", 1)
  panelInfo._ui._sortButton:setRenderTexture(panelInfo._ui._sortButton:getBaseTexture())
  if self._isConsole == true then
    ToClient_padSnapChangeToTarget(panelInfo._ui._sortButton)
  end
  panelInfo._ui._parent:SetShow(false)
  panelInfo._checkIn = false
  self._currentPanelIndex = nil
end
function PaGlobal_InvenAutoSort:prepareOpen(panelIndex)
  if panelIndex == nil then
    return
  end
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:prepareOpen] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤. show í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:prepareOpen] ë“±ë¡ì€ ë˜ì—ˆìœ¼ë‚˜ ì´ˆê¸°í™” ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤. show í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if self._currentPanelIndex ~= nil then
    self:hidePanel(self._currentPanelIndex)
  end
  self:open(panelIndex)
end
function PaGlobal_InvenAutoSort:open(panelIndex)
  self:showPanel(panelIndex)
end
function PaGlobal_InvenAutoSort:prepareClose()
  self:close()
end
function PaGlobal_InvenAutoSort:close()
  if self._currentPanelIndex ~= nil then
    self:hidePanel(self._currentPanelIndex)
  end
end
function PaGlobal_InvenAutoSort:loadSortOption(sortWhereType, doUpdateSlot)
  if Panel_Window_Inventory_AutoSortFunction == nil then
    return
  end
  if sortWhereType == nil then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:loadSortOption] sortWhereTypeì´ ì§€ì •ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if self._currentPanelIndex == nil then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:loadSortOption] í˜„ì¬ íŒ¨ë„ì´ ì§€ì •ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local panelInfo = self:getPanelInfo(self._currentPanelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:loadSortOption] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤. load í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:loadSortOption] í˜„ì¬ íŒ¨ë„ì´ ì´ˆê¸°í™”ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  panelInfo._currentSortProperty = ToClient_GetSortPropertyType(sortWhereType)
  panelInfo._currentSortByType = ToClient_GetSortByType(sortWhereType)
  panelInfo._isUseSort = ToClient_GetIsUseSort(sortWhereType)
  self:syncUI(sortWhereType)
  self:updateSlot(sortWhereType, doUpdateSlot)
end
function PaGlobal_InvenAutoSort:syncUI(sortWhereType)
  if Panel_Window_Inventory_AutoSortFunction == nil or sortWhereType == nil then
    return
  end
  local panelInfo = self:getPanelInfo(self._currentPanelIndex)
  if panelInfo == nil or panelInfo._isInitialize == false then
    return
  end
  panelInfo._ui._rdo_ascending:SetIgnore(false)
  panelInfo._ui._rdo_ascending:SetMonoTone(false)
  panelInfo._ui._rdo_descending:SetIgnore(false)
  panelInfo._ui._rdo_descending:SetMonoTone(false)
  local loadedUseSort = ToClient_GetIsUseSort(sortWhereType)
  panelInfo._isUseSort = loadedUseSort
  panelInfo._ui._checkButton:SetCheck(loadedUseSort)
  panelInfo._currentSortProperty = ToClient_GetSortPropertyType(sortWhereType)
  panelInfo._currentSortByType = ToClient_GetSortByType(sortWhereType)
  if panelInfo._currentSortByType == __eInventorySortByType_Ascending then
    panelInfo._ui._rdo_ascending:SetCheck(true)
    panelInfo._ui._rdo_descending:SetCheck(false)
  elseif panelInfo._currentSortByType == __eInventorySortByType_Descending then
    panelInfo._ui._rdo_ascending:SetCheck(false)
    panelInfo._ui._rdo_descending:SetCheck(true)
  else
    panelInfo._ui._rdo_ascending:SetCheck(false)
    panelInfo._ui._rdo_descending:SetCheck(false)
  end
  if panelInfo._currentSortProperty == __eInventorySortPropertyType_Auto then
    panelInfo._ui._rdo_ascending:SetCheck(false)
    panelInfo._ui._rdo_ascending:SetIgnore(true)
    panelInfo._ui._rdo_ascending:SetMonoTone(true)
    panelInfo._ui._rdo_descending:SetCheck(false)
    panelInfo._ui._rdo_descending:SetIgnore(true)
    panelInfo._ui._rdo_descending:SetMonoTone(true)
    if panelInfo._currentSortByType ~= __eInventorySortByType_Count then
      self:updateSortBy(__eInventorySortByType_Count, false)
      panelInfo._currentSortByType = __eInventorySortByType_Count
    end
  elseif panelInfo._currentSortByType == __eInventorySortByType_Count then
    panelInfo._ui._rdo_ascending:SetCheck(false)
    panelInfo._ui._rdo_descending:SetCheck(true)
    self:updateSortBy(__eInventorySortByType_Descending, false)
    panelInfo._currentSortByType = __eInventorySortByType_Descending
  end
  for index = __eInventorySortPropertyType_Auto, __eInventorySortPropertyType_Count - 1 do
    if index == panelInfo._currentSortProperty then
      panelInfo._ui._sortPropertyTypeButtonList[index]:SetCheck(true)
    else
      panelInfo._ui._sortPropertyTypeButtonList[index]:SetCheck(false)
    end
  end
  panelInfo._ui._sortButton:SetTextMode(__eTextMode_LimitText)
  panelInfo._ui._sortButton:SetText(panelInfo._ui._sortPropertyTypeButtonList[panelInfo._currentSortProperty]:GetText())
end
function PaGlobal_InvenAutoSort:getCurrentInventorySortWhereType(panelIndex)
  local targetPanelIndex
  if panelIndex == nil then
    if self._currentPanelIndex == nil then
      UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:getCurrentInventorySortWhereType] í˜„ì¬ íŒ¨ë„ì´ ì§€ì •ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
      return nil
    end
    targetPanelIndex = self._currentPanelIndex
  else
    targetPanelIndex = panelIndex
  end
  local panelInfo = self:getPanelInfo(targetPanelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:getCurrentInventorySortWhereType] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return nil
  end
  if panelInfo._isInitialize == false then
    return nil
  end
  if targetPanelIndex == InvenSortLinkPanelIndex.Inventory then
    local currentInventoryWhereType = Inventory_GetCurrentInventoryType()
    if currentInventoryWhereType == CppEnums.ItemWhereType.eInventory then
      return __eInventorySortWhereType_Inventory
    elseif currentInventoryWhereType == CppEnums.ItemWhereType.eCashInventory then
      return __eInventorySortWhereType_CashInventoryForCharacter
    elseif currentInventoryWhereType == CppEnums.ItemWhereType.eFamilyInventory then
      return __eInventorySortWhereType_FamilyInventory
    else
      return __eInventorySortWhereType_Inventory
    end
  elseif targetPanelIndex == InvenSortLinkPanelIndex.WareHouse then
    return __eInventorySortWhereType_WareHouse
  elseif targetPanelIndex == InvenSortLinkPanelIndex.FamilyInventory then
    return __eInventorySortWhereType_FamilyInventory
  elseif targetPanelIndex == InvenSortLinkPanelIndex.AnotherCharacterInventory then
    return __eInventorySortWhereType_AnotherCharacterInventory
  elseif targetPanelIndex == InvenSortLinkPanelIndex.MarketPlaceInventory then
    return __eInventorySortWhereType_MarketPlaceInventory
  elseif targetPanelIndex == InvenSortLinkPanelIndex.MarketPlaceWallet or targetPanelIndex == InvenSortLinkPanelIndex.MarketPlaceWalletMain then
    return __eInventorySortWhereType_MarketPlaceWallet
  elseif targetPanelIndex == InvenSortLinkPanelIndex.ColsoleInventory then
    local currentConsoleInventoryWhereType = PaGlobalFunc_GetCurrentConsoleInventoryType()
    if currentConsoleInventoryWhereType == CppEnums.ItemWhereType.eCashInventory then
      return __eInventorySortWhereType_CashInventoryForCharacter
    else
      return __eInventorySortWhereType_Inventory
    end
  elseif targetPanelIndex == InvenSortLinkPanelIndex.ColsoleFamilyInventory then
    return __eInventorySortWhereType_FamilyInventory
  else
    UI.ASSERT_NAME(false, "panel ë‹¨ìœ„ë¡œ getCurrentInventorySortWhereType í•¨ìˆ˜ë¥¼ ì—¬ê¸°ì—ì„œ ì²˜ë¦¬í•´ì£¼ì„¸ìš”.", "ì´ì£¼")
    return __eInventorySortWhereType_Count
  end
end
function PaGlobal_InvenAutoSort:toggleUseSort(panelIndex, isConsole)
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:toggleUseSort] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:toggleUseSort] íŒ¨ë„ì´ ì´ˆê¸°í™”ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  self._currentPanelIndex = panelIndex
  local isCheck = panelInfo._ui._checkButton:IsCheck()
  if isConsole ~= nil and isConsole == true then
    isCheck = not isCheck
  end
  ToClient_SetIsUseSort(self:getCurrentInventorySortWhereType(), isCheck)
  self:syncUI(self:getCurrentInventorySortWhereType())
  self:updateSlot(self:getCurrentInventorySortWhereType())
end
function PaGlobal_InvenAutoSort:updateSortProperty(sortPropertyType, doUpdateUI)
  if sortPropertyType == nil then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:updateSortProperty] ì¸ìê°€ nil ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if self._currentPanelIndex == nil then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:updateSortProperty] í˜„ì¬ íŒ¨ë„ì´ ì§€ì •ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local panelInfo = self:getPanelInfo(self._currentPanelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:updateSortProperty] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:updateSortProperty] íŒ¨ë„ì´ ì´ˆê¸°í™”ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._currentSortProperty == sortPropertyType then
    return
  end
  if sortPropertyType == __eInventorySortPropertyType_Auto then
    ToClient_SetSortByType(self:getCurrentInventorySortWhereType(), __eInventorySortByType_Count)
  end
  ToClient_SetSortPropertyType(self:getCurrentInventorySortWhereType(), sortPropertyType)
  ToClient_SetIsUseSort(self:getCurrentInventorySortWhereType(), true)
  if doUpdateUI ~= nil and doUpdateUI == true then
    self:syncUI(self:getCurrentInventorySortWhereType())
    self:updateSlot(self:getCurrentInventorySortWhereType())
  end
end
function PaGlobal_InvenAutoSort:updateSortBy(inventorySortByType, doUpdateUI)
  if inventorySortByType == nil then
    return
  end
  if self._currentPanelIndex == nil then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:updateSortBy] í˜„ì¬ íŒ¨ë„ì´ ì§€ì •ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local panelInfo = self:getPanelInfo(self._currentPanelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:updateSortBy] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:updateSortBy] íŒ¨ë„ì´ ì´ˆê¸°í™”ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._currentSortByType == inventorySortByType then
    return
  end
  ToClient_SetSortByType(self:getCurrentInventorySortWhereType(), inventorySortByType)
  ToClient_SetIsUseSort(self:getCurrentInventorySortWhereType(), true)
  if doUpdateUI ~= nil and doUpdateUI == true then
    self:syncUI(self:getCurrentInventorySortWhereType())
    self:updateSlot(self:getCurrentInventorySortWhereType())
  end
end
function PaGlobal_InvenAutoSort:updateSlot(sortWhereType, doUpdateSlot)
  if sortWhereType == nil then
    return
  end
  if self._currentPanelIndex == nil then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:updateSlot] í˜„ì¬ íŒ¨ë„ì´ ì§€ì •ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local panelInfo = self:getPanelInfo(self._currentPanelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:updateSlot] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:updateSlot] íŒ¨ë„ì´ ì´ˆê¸°í™”ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local selfPlayer = getSelfPlayer():get()
  if selfPlayer == nil then
    return
  end
  if panelInfo._isUseSort == true then
    selfPlayer:sortInventorySlotNoNew(sortWhereType, panelInfo._currentSortProperty, panelInfo._currentSortByType)
  end
  if doUpdateSlot == nil or doUpdateSlot == true then
    if self._currentPanelIndex == InvenSortLinkPanelIndex.Inventory then
      Inventory_updateSlotData()
    elseif self._currentPanelIndex == InvenSortLinkPanelIndex.WareHouse then
      Warehouse_updateSlotData()
    elseif self._currentPanelIndex == InvenSortLinkPanelIndex.FamilyInventory then
      FailyInventory_updateSlotData()
    elseif self._currentPanelIndex == InvenSortLinkPanelIndex.AnotherCharacterInventory then
      SimpleInventory_updateSlotData()
    elseif self._currentPanelIndex == InvenSortLinkPanelIndex.MarketPlaceInventory then
      if ToClient_isConsole() == true then
        MarketPlaceMyInventory_updateSlotData_Console()
      else
        MarketPlaceMyInventory_updateSlotData()
      end
    elseif self._currentPanelIndex == InvenSortLinkPanelIndex.MarketPlaceWallet then
      if ToClient_isConsole() == true then
        MarketPlaceMyWallet_updateSlotData_Console()
      else
        MarketPlaceMyWallet_updateSlotData()
      end
    elseif self._currentPanelIndex == InvenSortLinkPanelIndex.MarketPlaceWalletMain then
      if ToClient_isConsole() == true then
        MarketPlaceWallet_updateSlotData_Console()
      else
        MarketPlaceWallet_updateSlotData()
      end
    elseif self._currentPanelIndex == InvenSortLinkPanelIndex.ColsoleInventory then
      ConsoleInventory_updateSlotData()
    elseif self._currentPanelIndex == InvenSortLinkPanelIndex.ColsoleFamilyInventory then
      ConsoleFamilyInventory_updateSlotData()
    else
      UI.ASSERT_NAME(false, "panel ë‹¨ìœ„ë¡œ slot update í•¨ìˆ˜ë¥¼ ì—¬ê¸°ì—ì„œ ì²˜ë¦¬í•´ì£¼ì„¸ìš”.", "ì´ì£¼")
    end
  end
end
function PaGlobal_InvenAutoSort:isSorted(panelIndex)
  if panelIndex == nil then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:isSorted] panelIndexê°€ nilì…ë‹ˆë‹¤.", "ì´ì£¼")
    return false
  end
  local currentSortWhereType = self:getCurrentInventorySortWhereType(panelIndex)
  return ToClient_GetIsUseSort(currentSortWhereType)
end
function PaGlobal_InvenAutoSort:checkInControl(panelIndex)
  local panelInfo = self:getPanelInfo(panelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:checkAndHideByMouseOut] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:checkAndHideByMouseOut] íŒ¨ë„ì´ ì´ˆê¸°í™”ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  panelInfo._checkIn = true
end
function PaGlobal_InvenAutoSort:checkAndHideByMouseOut()
  if self._currentPanelIndex == nil then
    return
  end
  local panelInfo = self:getPanelInfo(self._currentPanelIndex)
  if panelInfo == nil then
    UI.ASSERT_NAME(false, "[failed PaGlobal_InvenAutoSort:checkAndHideByMouseOut] ë“±ë¡ë˜ì§€ ì•Šì€ panel ì…ë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  if panelInfo._isInitialize == false then
    UI.ASSERT_NAME(false, "[Failed PaGlobal_InvenAutoSort:checkAndHideByMouseOut] íŒ¨ë„ì´ ì´ˆê¸°í™”ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.", "ì´ì£¼")
    return
  end
  local targetPanel = panelInfo._panel
  if targetPanel == nil then
    return
  end
  local targetParent = panelInfo._ui._parent
  if targetParent == nil then
    return
  end
  local panelPosX = targetPanel:GetPosX()
  local panelPosY = targetPanel:GetPosY()
  if targetPanel:IsUISubApp() == true then
    panelPosX = targetPanel:GetScreenParentPosX()
    panelPosY = targetPanel:GetScreenParentPosY()
  end
  local parentPosX = panelPosX + targetParent:GetPosX()
  local parentPosY = panelPosY + targetParent:GetPosY()
  local parentSizeX = targetParent:GetSizeX()
  local parentSizeY = targetParent:GetSizeY()
  local mousePosX = getMousePosX()
  local mousePosY = getMousePosY()
  if parentPosX <= mousePosX and mousePosX <= parentPosX + parentSizeX and parentPosY <= mousePosY and mousePosY <= parentPosY + parentSizeY then
    return
  end
  if panelInfo._checkIn == false then
    return
  end
  self:hidePanel(self._currentPanelIndex)
end