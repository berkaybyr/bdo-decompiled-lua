local Mindamage = 0
local Maxdamage = 0
local SumCountDamage = 0
function StartQAequipArmor()
  ToClient_qaDebugDamage(0, 1, 1)
end
function StartQASkillUse(SkillQaNumber)
  ToClient_qaDebugDamage(1, SkillQaNumber)
end
function StartQASkillUseDrakania(ST)
  local selfPlayer = getSelfPlayer()
  if nil == selfPlayer then
    return
  end
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6800)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6801)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6802)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6803)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6804)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6805)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6806)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6807)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6808)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6809)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6810)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6811)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6812)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6813)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6814)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6815)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6816)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6817)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6818)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6819)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6820)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6821)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6822)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6823)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6824)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6825)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6826)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6827)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6828)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6829)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6830)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6831)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6832)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6833)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6834)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6835)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6836)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6837)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6838)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6839)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6840)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6841)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6842)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6843)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6844)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6845)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6846)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6847)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6848)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6849)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6850)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6851)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6852)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6853)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6854)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6855)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6856)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6857)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6858)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6859)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6860)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6861)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6862)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6863)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6864)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6865)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6866)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6867)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6868)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6869)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6870)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6871)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6872)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6873)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6874)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6875)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6876)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6877)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6878)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6879)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6880)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6881)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6882)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6883)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6884)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6885)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6886)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6887)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6888)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6889)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6890)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6891)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6892)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6893)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6894)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6895)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6896)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6897)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6898)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6899)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6900)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6901)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6902)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6903)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6904)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6905)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6906)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6907)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6908)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6909)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6910)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6911)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6912)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6913)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6914)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6915)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6916)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6917)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6918)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6919)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6920)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6921)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6922)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6923)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6924)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6925)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6926)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6927)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6928)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6929)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6930)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6931)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6932)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6933)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6934)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6935)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6936)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6937)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6938)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6939)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6940)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6941)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6942)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6943)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6944)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6945)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6946)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6947)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6948)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6949)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6950)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6951)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6952)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6953)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6954)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6955)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6956)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6957)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6958)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6959)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6960)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6961)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6962)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6963)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6964)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6965)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6966)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6967)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6968)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6969)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6970)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6971)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6972)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6973)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6974)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6975)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6976)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6977)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6978)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6979)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6980)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6981)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6982)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6983)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6984)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6985)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6986)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6987)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6988)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6989)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6990)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6991)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6992)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6993)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6994)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6995)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6996)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6997)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6998)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 6999)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7000)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7001)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7002)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7003)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7004)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7005)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7006)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7007)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7008)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7009)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7010)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7011)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7012)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7013)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7014)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7015)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7016)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7017)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7018)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7019)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7020)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7021)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7022)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7023)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7024)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7025)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7026)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7027)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7028)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7029)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7030)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7031)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7032)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7033)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7034)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7035)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7036)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7037)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7038)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7039)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7040)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7041)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7042)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7043)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7044)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7045)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7048)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7063)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7049)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7065)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7066)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7047)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7050)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7057)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7058)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7059)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7060)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7061)
  luaTimer_AddEvent(DrakaniaSkill, 0, false, 0, ST, 7062)
  chatting_sendMessage("", "Drakania SkillTest End(PVP)", CppEnums.ChatType.Private)
end
function DrakaniaSkill(ST, SkillNo)
  if ST == 1 then
    ToClient_qaDebugDamage(1, SkillNo)
  elseif ST == 2 then
  end
end
