local Mindamage = 0
local Maxdamage = 0
local SumCountDamage = 0
function StartQAequipArmor()
  ToClient_qaDebugDamage(0, 1, 1)
end
function StartQASkillUse(SkillQaNumber)
  ToClient_qaDebugDamage(1, SkillQaNumber)
end
function StartQASkillUseTamer(ST)
  local selfPlayer = getSelfPlayer()
  if nil == selfPlayer then
    return
  end
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2742)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1068)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1227)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1228)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1229)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1922)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1928)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1929)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 204)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1927)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2555)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 18)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 19)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 31)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 32)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 33)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1066)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1222)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1223)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1063)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1215)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1216)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 122)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 127)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 123)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 124)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 125)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 126)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 128)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1936)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 84)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 228)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2741)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 39)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 358)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 359)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 360)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 361)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 11)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 12)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 13)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 14)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 15)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 16)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 17)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2829)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1917)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1910)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1911)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1912)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 240)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 241)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1923)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1942)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1924)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1925)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1926)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 85)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 86)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 87)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 41)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 42)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1067)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1224)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1225)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1226)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 37)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1941)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 244)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1913)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1914)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1915)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1916)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2830)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1064)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1217)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1218)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1219)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1930)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1931)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1932)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 20)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 364)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 365)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 366)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 367)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1301)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1302)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1303)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1304)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2924)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2933)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2919)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2914)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2932)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2929)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2931)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2915)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2916)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2934)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2928)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2921)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2922)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2923)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2927)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2917)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2925)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2930)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2920)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2926)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 2918)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1918)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1919)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1920)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1921)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 133)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 134)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 135)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1905)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1906)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1907)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1908)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1909)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1065)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1220)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1221)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1062)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 362)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 363)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1938)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 224)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 226)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 38)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1940)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 40)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 225)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1939)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 223)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 43)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1934)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1937)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1933)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 227)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1072)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1237)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1238)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1239)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1240)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 235)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 236)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 237)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 238)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 239)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1076)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1308)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1309)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1310)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1311)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1074)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1246)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1247)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1248)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1249)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1295)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 208)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 209)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 210)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 211)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 212)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1073)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1241)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1242)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1243)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1244)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1245)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1071)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1235)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1236)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1069)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1230)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1231)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 129)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 130)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 131)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 132)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 205)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1935)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1899)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1070)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1232)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1233)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 1234)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3592)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3593)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3594)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3598)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3599)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3600)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3618)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3619)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3620)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3621)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3595)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3596)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3597)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3606)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3613)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3614)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3615)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3616)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3617)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3601)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3602)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3603)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3604)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3605)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3607)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3608)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3609)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3610)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3611)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 3612)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4483)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4484)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4485)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4486)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4487)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4488)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4489)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4490)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4491)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4492)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4493)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4494)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4495)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4496)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4497)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4498)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4499)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4500)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4501)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4502)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4503)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4504)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4505)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4506)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4507)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4778)
  luaTimer_AddEvent(TameSkill, 0, false, 0, ST, 4779)
  chatting_sendMessage("", "Tamer SkillTest End(PVP)", CppEnums.ChatType.Private)
end
function TameSkill(ST, SkillNo)
  if ST == 1 then
    ToClient_qaDebugDamage(1, SkillNo)
  elseif ST == 2 then
  end
end
