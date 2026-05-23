-- ============================================================
-- IMAGO — locales/base/data/burning_crusade/npcs.lua (enUS fallback)
-- ============================================================

IMAGOdb = IMAGOdb or {}
IMAGOdb.npcs = IMAGOdb.npcs or {}
IMAGOdb.npcs.CAT_HORDE = IMAGOdb.npcs.CAT_HORDE or {}
IMAGOdb.npcs.CAT_ALLIANCE = IMAGOdb.npcs.CAT_ALLIANCE or {}

-- CAT_HORDE
IMAGOdb.npcs.CAT_HORDE["lorthemar_theron"].name = "Lor'themar Theron"
IMAGOdb.npcs.CAT_HORDE["lorthemar_theron"].race = "Blood Elf"
IMAGOdb.npcs.CAT_HORDE["lorthemar_theron"].lore =
[[
A ranger at heart, Lor'themar Theron didn't choose to lead the blood elves. When Quel'thalas fell to the Scourge in the Third War he was appointed, in absence of any other surviving candidates, to serve the fallen kingdom as regent by Prince Kael'thas.
He was forced to make difficult decisions, such as allying the blood elves with the Horde, exiling the high elves to combat unrest, and leading the battle against Kael'thas after the prince's betrayal. Lor'themar's pragmatism and strategic cunning made him an inspiring leader nontheless, commanding respect from friends and foes alike. 
A staunch advocate for peace, Lor'themar serves now both as regent lord of Quel'thalas and as a member of the Horde's ruling council. His loyality lies first and foremost with his people.
]]
IMAGOdb.npcs.CAT_HORDE["lorthemar_theron"].zones = {"Silvermoon City"}
IMAGOdb.npcs.CAT_HORDE["lorthemar_theron"].source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"
IMAGOdb.npcs.CAT_HORDE["lorthemar_theron"].timeline = {
    {era = "WC2", text = "Successfully defended Silvermoon under Sylvanas Windrunner's command and was promoted to ranger lord."},
    {era = "WC3", text = "After surviving Quel'thalas' destruction, Prince Kael'Thas promoted him to regent lord. He successfully reclaimed Silvermoon from the Scourge"},
    {era = "TBC", text = "He led the blood elves to join the Horde, made the decision to exile the high elves, and deposed of Kael'thas after his treachery. After the civil war, Lor'themar remained as regent lord."},
    {era = "WotLK", text = "Reluctantly agreed to send elven troops to Northrend to aid the Horde in the battle against the Lich King and helped recover the ancient weapon Quel'delar."},
    {era = "Pre-MoP", text = "Refused to personally take part in the attack on Theramore, drawing the ire of Garrosh Hellscream."},
    {era = "MoP", text = "Negotiated with King Varian Wrynn to rejoin the Alliance after heavily disagreeing with Garrosh's leadership. After the purge of Dalaran, he remained in the Horde and played a key part in the rebellion against Garrosh Hellscream."},
    {era = "BfA", text = "Successfully invited the nightborne of Suramar to join the Horde. He later personally led the Horde forces in the campaign against Queen Aszhara and joined the rebellion against Sylvanas Windrunner. After the Fourth War he joined the newly-formed Horde council as one of its leaders."},
    {era = "Pre-DF", text = "Married Thalyssra and invited both Horde and Alliance leaders to the wedding in a show of support for peace between the factions."},
    {era = "DF", text = "Joined in the defense of Amirdrassil."},
    {era = "Midnight", text = "Led the blood elf forces in Silvermoon's defense against the Void."},
}


IMAGOdb.npcs.CAT_HORDE["grand_magister_rommath"].name = "Grand Magister Rommath"
IMAGOdb.npcs.CAT_HORDE["grand_magister_rommath"].race = "Blood Elf"
IMAGOdb.npcs.CAT_HORDE["grand_magister_rommath"].lore = "Uncompromising and confrontational, the Grand Magister of Silvermoon is a man fiercely loyal to his people. As Kael'thas' staunchest supporter after the Third War, Rommath did whatever he thought was necessary to ensure the survival of the blood elves. Even if it meant using fel magic or torturing a Naaru for its holy power, Rommath was ready and willing. His loyalty was tested when Kael'thas allied himself with the Burning Legion; in the end, he chose his people over his former prince."
IMAGOdb.npcs.CAT_HORDE["grand_magister_rommath"].zones = {"Silvermoon City"}
IMAGOdb.npcs.CAT_HORDE["grand_magister_rommath"].source = "Cadash & Austin - IMAGO Community"
IMAGOdb.npcs.CAT_HORDE["grand_magister_rommath"].timeline = {
    {era = "Pre-WC1", text = "Studied the arcane in the mage capital of Dalaran alongside his friends Umbric and Dar'khan Drathir."},
    {era = "WC3", text = "Survived Silvermoon's destruction and joined Kael'thas Sunstrider in his defense of Dalaran. Followed the prince to Outland after escaping the dungeons of the Kirin Tor and learned how to combat the blood elves' addiction to magic from Illidan Stormrage. He returned to Silvermoon as Grand Magister."},
    {era = "TBC", text = "Helped found the order of the Blood Knights and joined the civil war against Kael'thas Sunstrider. Sometime after the prince's defeat, Rommath exiled Magister Umbric and his followers for practicing void magic."},
    {era = "WotLK", text = "Attempted to dissuade Lor'themar from sending the diminished blood elves to war in Northrend, ultimately failing. Helped in the restoration of the weapon Quel'delar."},
    {era = "MoP", text = "Rescued Aethas Sunreaver and many other mages from the purge of Dalaran. He fought for the Horde as part of the Sunreavers on the Isle of Thunder."},
    {era = "Legion", text = "Helped to free Suramar from the occupation of the Burning Legion."},
    {era = "BfA", text = "Took part in welcoming the nightborne into the Horde and defended the Sunwell from Alleria's influence."},
    {era = "SL", text = "Defended Silvermoon from new Scourge incursions alongside Lady Liadrin and Aethas Sunreaver."},
    {era = "Midnight", text = "Rommath led the magisters of Silvermoon in their defense from the Devouring Host. Still wary of Umbric's use of Void magic, Rommath reluctantly agreed that his expertise is needed to defeat their common enemy."},
}

-- CAT_ALLIANCE
IMAGOdb.npcs.CAT_ALLIANCE["arator"].name = "Arator"
IMAGOdb.npcs.CAT_ALLIANCE["arator"].race = "Half-Elf"
IMAGOdb.npcs.CAT_ALLIANCE["arator"].lore =
[[When his parents Alleria Windrunner and Turalyon left for Draenor to save Azeroth, they left their newborn behind. Raised by family, Arator only knew his parents through legend. As the child of two of the Alliance's most famous war heroes, Arator has always struggled to step out of their shadows and find his own destiny. 
    
Choosing to emulate his father, he became a paladin for the Alliance and rose up in the ranks by showing true strength and faith in the Light. With the Dark Portal to the Outlands now opened, he journeys through with the Alliance, searching for any clues of his parents]]
IMAGOdb.npcs.CAT_ALLIANCE["arator"].zones = {"Hellfire Penisula"}
IMAGOdb.npcs.CAT_ALLIANCE["arator"].source = "Silver_Wind"
IMAGOdb.npcs.CAT_ALLIANCE["arator"].timeline = {
    {era = "WC2", text = "Born during the Second War and left behind on Azeroth to be raised by his aunt, Vereesa Windrunner."},
    {era = "WC3", text = "After surviving the Third War, Vereesa brought him to Silvermoon where he was trained by Lor'themar and Liadrin in the ways of the Light."},
    {era = "TBC", text = [[Joined the expedition to Outland to look for his parents. Served under the banner Alliance as a paladin. He was dubbed "Arator the Redeemer".]]},
    {era = "Legion", text = "Joined the Order of the Silver Hand and defended the Netherlight Temple. Fought the Burning Legion on Argus and was finally reunited with his parents."},
    {era = "TWW", text = "Tried to rally Alleria and Sylvanas Windrunner to the imminent defense of Silvermoon."},
    {era = "Midnight", text = "After being summoned by the Sunwell, Arator fought on the front lines against the Void. He organized the reunification of the elven nations of Azeroth to fight a common foe."},
}