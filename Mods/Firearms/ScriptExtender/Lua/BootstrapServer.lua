local function on_session_loaded()
    _P('Firearms session loaded!')
  end
  Ext.Events.SessionLoaded:Subscribe(on_session_loaded)

  local RandomShot=
  {
    "ATO_BulletOfFire_R",
    "ATO_BulletOfDarkness_R",
    "ATO_BulletOfDetonation",
    "ATO_BulletOfSmokePowder",
    "ATO_BulletOfIce",
    "ATO_BulletOfAcid",
    "ATO_BulletOfLightning",
    "ATO_BulletOfPiercing",
    "ATO_Barbed_Bullet",
    "ATO_BulletOfRicochet",
    "ATO_BulletOfWraithsEmbrace"
  }

  local Chainfire=
  {
    "ATO_Chain_1",
    "ATO_Chain_2",
    "ATO_Chain_3",
    "ATO_Chain_4",
    "ATO_Chain_5",
    "ATO_Chain_6",
  }

  local ChainfireOH=
  {
    "ATO_Chain_1_OH",
    "ATO_Chain_2_OH",
    "ATO_Chain_3_OH",
    "ATO_Chain_4_OH",
    "ATO_Chain_5_OH",
    "ATO_Chain_6_OH",
  }

  Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function (caster, target, spell, spellType, spellElement, storyActionID)
    if spell == "ATO_RandomShot" then
        Osi.UseSpell(caster, RandomShot[ math.random( #RandomShot ) ], target)
    end
end)

Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function (caster, target, spell, spellType, spellElement, storyActionID)
  if spell == "ATO_Chainfire" then
      Osi.UseSpell(caster, Chainfire[ math.random( #Chainfire ) ], target)
      print(spell)
  end
end)

Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function (caster, target, spell, spellType, spellElement, storyActionID)
  if spell == "ATO_Chainfire_OH" then
      Osi.UseSpell(caster, ChainfireOH[ math.random( #ChainfireOH ) ], target)
      print(spell)
  end
end)