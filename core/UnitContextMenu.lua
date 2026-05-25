-- ============================================================
-- IMAGO — core/UnitContextMenu.lua
-- Eintrag im Ziel-Rechtsklickmenü (Menu API, ab ~11.0)
-- ============================================================

IMAGO.UnitContextMenu = {}

function IMAGO.UnitContextMenu.TryShowLoreForUnit(unit)
    if not IMAGOSaved or not IMAGOSaved.enabled then return end
    if not unit or not UnitExists(unit) then return end
    if UnitIsPlayer(unit) then return end

    if InCombatLockdown() then
        print(IMAGO.L["CONTEXT_LORE_COMBAT"] or "|cFF888888IMAGO:|r Im Kampf nicht verfügbar.")
        return
    end

    -- Try GUID first
    local slug = nil
    local okGuid, guid = pcall(UnitGUID, unit)
    if okGuid and guid then
        local npcID = IMAGO.GetNPCIDFromGUID(guid)
        if npcID then
            slug = IMAGOdb.idToSlug and IMAGOdb.idToSlug[npcID]
        end
    end

    -- Fall back to name for protected GUIDs
    if not slug then
        local okName, name = pcall(UnitName, unit)
        if okName and name then
            slug = IMAGOdb.nameToSlug and IMAGOdb.nameToSlug[name:lower()]
        end
    end

    if not slug or not IMAGO.GetNPCData(slug) then
        print(IMAGO.L["CONTEXT_LORE_NONE"] or "|cFF888888IMAGO:|r Keine Lore für diesen NPC gefunden.")
        return
    end

    if IMAGO.Chronicle and IMAGO.Chronicle.OpenToNPCSlug then
        local ok = IMAGO.Chronicle.OpenToNPCSlug(slug, { skipDiscoveryCinematic = true })
        if not ok then
            print(IMAGO.L["CONTEXT_LORE_CHRONICLE_FAIL"] or "|cFF888888IMAGO:|r Chronik konnte den Eintrag nicht fokussieren.")
        end
    end
end

function IMAGO.UnitContextMenu.Init()
    if IMAGO.UnitContextMenu._registered then return end
    if not Menu or type(Menu.ModifyMenu) ~= "function" then return end

    Menu.ModifyMenu("MENU_UNIT_TARGET", function(_, rootDescription)
        --if not IMAGOSaved or not IMAGOSaved.enabled then return end
        --if not rootDescription or type(rootDescription.CreateButton) ~= "function" then return end

        -- Do NOT call UnitGUID, UnitExists, UnitIsPlayer, or any Unit* functions here
        -- Everything is deferred to the click handler to avoid tainting menu layout
        --if rootDescription.CreateDivider then
          --  rootDescription:CreateDivider()
        --end
        --rootDescription:CreateButton(IMAGO.L["CONTEXT_LORE_BTN"] or "IMAGO Lore", function()
          --  IMAGO.UnitContextMenu.TryShowLoreForUnit("target")
        --end)
    end)

    IMAGO.UnitContextMenu._registered = true
end