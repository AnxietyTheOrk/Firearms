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

  Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function (caster, target, spell, spellType, spellElement, storyActionID)
    if spell == "ATO_RandomShot" then
        print("Caught!")
        Osi.UseSpell(caster, RandomShot[ math.random( #RandomShot ) ], target)
    end
end)