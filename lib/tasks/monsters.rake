namespace :monsters do
  task :destroy => :environment do |t, args|
    Monster.delete_all
  end

  task :setup => :environment do |t, args|
    Monster.create!(
        name:'Owlbear',
        cr:4,
        xp:1200,
        environment_code:'',
        description:'An amalgam of fur and feathers, this bizarre half-bear, half-owl monstrosity raises its huge, ursine claws in anger.',
        race_class_level:'',
        align_size_type:'N Large magical beast',
        init:'+5',
        senses:'darkvision 60 ft., low-light vision, scent; Perception +12',
        aura:'',
        ac:'15, touch 10, flat-footed 14 (+1 Dex, +5 natural, –1 size)',
        hp:'47 (5d10+20)',
        fort:'+10',
        ref:'+5',
        will:'+2',
        defensive_abilities:'',
        dr:'',
        immune:'',
        resist:'',
        sr:'',
        weaknesses:'',
        speed:'30 ft.',
        melee:'2 claws +8 (1d6+4 plus grab), bite +8 (1d6+4)',
        ranged:'',
        space:'10 ft.',
        reach:'5 ft.',
        special_attacks:'',
        spell_like_abilities:'',
        spells_known:'',
        spells_prepared:'',
        str:'19',
        dex:'12',
        con:'18',
        int:'2',
        wis:'12',
        cha:'10',
        base_atk:'+5',
        cmb:'+10 (+14 grapple)',
        cmd:'21 (25 vs. trip)',
        feats:'Improved Initiative, Great Fortitude, Skill Focus (Perception)',
        skills:'Perception +12',
        racial_modifiers:'',
        languages:'',
        sq:'',
        env:'temperate forests',
        organization:'solitary, pair, or pack (3–8)',
        treasure:'incidental',
        special_abilities:'',
        more_info_link:'http://www.d20pfsrd.com/bestiary/monster-listings/magical-beasts/owlbear'
    )
    Monster.create!(
        name:'Ghoul',
        cr:1,
        xp:400,
        environment_code:'',
        description:'This humanoid creature has long, sharp teeth, and its pallid flesh is stretched tightly over its starved frame.',
        race_class_level:'',
        align_size_type:'CE Medium undead',
        init:'+2',
        senses:'darkvision 60 ft.; Perception +7',
        aura:'',
        ac:'14, touch 12, flat-footed 12 (+2 Dex, +2 natural)',
        hp:'13 (2d8+4)',
        fort:'+2',
        ref:'+2',
        will:'+5',
        defensive_abilities:'channel resistance +2; Immune undead traits',
        dr:'',
        immune:'',
        resist:'',
        sr:'',
        weaknesses:'',
        speed:'30 ft.',
        melee:'bite +3 (1d6+1 plus disease and paralysis) and 2 claws +3 (1d6+1 plus paralysis)',
        ranged:'',
        space:'',
        reach:'',
        special_attacks:'paralysis (1d4+1 rounds, DC 13, elves are immune to this effect)',
        spell_like_abilities:'',
        spells_known:'',
        spells_prepared:'',
        str:'13',
        dex:'15',
        con:'-',
        int:'13',
        wis:'14',
        cha:'14',
        base_atk:'+1',
        cmb:'+2',
        cmd:'14',
        feats:'Weapon Finesse',
        skills:'Acrobatics +4, Climb +6, Perception +7, Stealth +7, Swim +3',
        racial_modifiers:'',
        languages:'Common',
        sq:'',
        env:'any land',
        organization:'solitary, gang (2–4), or pack (7–12)',
        treasure:'standard',
        special_abilities:'Disease (Su): Ghoul Fever: Bite—injury; save Fort DC 13; onset 1 day; frequency 1/day; effect 1d3 Con and 1d3 Dex damage; cure 2 consecutive saves. The save DC is Charisma-based.',
        more_info_link:'http://www.d20pfsrd.com/bestiary/monster-listings/undead/ghoul'
    )
    Monster.create!(
        name:'Ooze (Gelatinous Cube)',
        cr:3,
        xp:800,
        environment_code:'',
        description:'Bits of broken weapons, coins, and a partially digested skeleton are visible inside this quivering cube of slime.',
        race_class_level:'',
        align_size_type:'N Large ooze',
        init:'-5',
        senses:'blindsight 60 ft.; Perception –5',
        aura:'',
        ac:'4, touch 4, flat-footed 4 (–5 Dex, –1 size)',
        hp:'50 (4d8+32)',
        fort:'+9',
        ref:'-4',
        will:'-4',
        defensive_abilities:'',
        dr:'',
        immune:'electricity, ooze traits',
        resist:'',
        sr:'',
        weaknesses:'',
        speed:'15 ft.',
        melee:'slam +2 (1d6 plus 1d6 acid)',
        ranged:'',
        space:'10 ft.',
        reach:'5 ft.',
        special_attacks:'engulf, paralysis',
        spell_like_abilities:'',
        spells_known:'',
        spells_prepared:'',
        str:'10',
        dex:'1',
        con:'26',
        int:'-',
        wis:'1',
        cha:'1',
        base_atk:'+3',
        cmb:'+4',
        cmd:'9 (cannot be tripped)',
        feats:'',
        skills:'',
        racial_modifiers:'',
        languages:'',
        sq:'transparent',
        env:'any underground',
        organization:'solitary',
        treasure:'incidental',
        special_abilities:'Acid (Ex), Engulf (Ex), Paralysis (Ex), Transparent (Ex)',
        more_info_link:'http://www.d20pfsrd.com/bestiary/monster-listings/oozes/gelatinous-cube'
    )
    Monster.create!(
        name:'Shark, Common',
        cr:2,
        xp:600,
        environment_code:'',
        description:'This blue shark"s fins slice through the water, its black eyes rolling and its gaping jaws showing countless teeth.',
        race_class_level:'',
        align_size_type:'N Large animal (aquatic)',
        init:'+5',
        senses:'blindsense 30 ft., keen scent; Perception +8',
        aura:'',
        ac:'14, touch 10, flat-footed 13 (+1 Dex, +4 natural, –1 size)',
        hp:'22 (4d8+4)',
        fort:'+7',
        ref:'+5',
        will:'+2',
        defensive_abilities:'',
        dr:'',
        immune:'',
        resist:'',
        sr:'',
        weaknesses:'',
        speed:'swim 60 ft.',
        melee:'bite +5 (1d8+4)',
        ranged:'',
        space:'10 ft.',
        reach:'5 ft.',
        special_attacks:'',
        spell_like_abilities:'',
        spells_known:'',
        spells_prepared:'',
        str:'17',
        dex:'12',
        con:'13',
        int:'1',
        wis:'12',
        cha:'2',
        base_atk:'+3',
        cmb:'+7',
        cmd:'18',
        feats:'Great Fortitude, Improved Initiative',
        skills:'Perception +8, Swim +11',
        racial_modifiers:'',
        languages:'',
        sq:'',
        env:'any ocean',
        organization:'solitary, pair, school (3–6), or pack (7–13)',
        treasure:'none',
        special_abilities:'',
        more_info_link:'http://www.d20pfsrd.com/bestiary/monster-listings/animals/shark/shark'
    )
    Monster.create!(
        name:'Shoggoth',
        cr:19,
        xp:204800,
        environment_code:'',
        description:'This immense mound of black slime thunders forward, eyes and mouths and even stranger things forming in its heaving bulk.',
        race_class_level:'',
        align_size_type:'CN Huge ooze (aquatic)',
        init:'+11',
        senses:'all-around vision, darkvision 120 ft., low-light vision, scent, tremorsense 60 ft.; Perception +33',
        aura:'',
        ac:'33, touch 15, flat-footed 26 (+7 Dex, +18 natural, –2 size)',
        hp:'333 (23d8+230); fast healing 10',
        fort:'+19',
        ref:'+14',
        will:'+15',
        defensive_abilities:'',
        dr:'10/—',
        immune:'blindness, charm effects, cold, deafness, ooze traits, sonic',
        resist:'acid 20, electricity 20, fire 20',
        sr:'30',
        weaknesses:'',
        speed:'50 ft., climb 30 ft., swim 50 ft.',
        melee:'4 slams +30 (3d6+15/19–20 plus grab) ',
        ranged:'',
        space:'15 ft.',
        reach:'30 ft.',
        special_attacks:'constrict (3d6+15), maddening cacophony, engulf (4d6+22 bludgeoning damage plus 8d6 acid damage, AC 19, hp 33), trample (4d8+15, DC 36)',
        spell_like_abilities:'',
        spells_known:'',
        spells_prepared:'',
        str:'40',
        dex:'24',
        con:'31',
        int:'5',
        wis:'22',
        cha:'13',
        base_atk:'+17',
        cmb:'+34 (+39 grapple)',
        cmd:'51 (cannot be tripped)',
        feats:'Blind-Fight, Cleave, Combat Reflexes, Critical Focus, Great Cleave, Great Fortitude, Improved Critical (slam), Improved Initiative, Improved Sunder, Iron Will, Power Attack, Staggering Critical',
        skills:'Climb +23, Perception +33, Swim +23',
        racial_modifiers:'+4 Perception',
        languages:'Aklo',
        sq:'amphibious',
        env:'cold aquatic or underground',
        organization:'solitary or tide (2–6)',
        treasure:'standard',
        special_abilities:'All-Around Vision (Ex), Maddening Cacophony (Su), Engulf (Ex)',
        more_info_link:'http://www.d20pfsrd.com/bestiary/monster-listings/oozes/shoggoth'
    )
    Monster.create!(
        name:'Aasimar',
        cr:0.5,
        xp:200,
        environment_code:'',
        description:'This supernaturally beautiful woman looks human, yet emanates a strange sense of calm and benevolence.',
        race_class_level:'Aasimar cleric 1',
        align_size_type:'NG Medium outsider (native)',
        init:'+0',
        senses:'darkvision 60 ft.; Perception +5',
        aura:'',
        ac:'15, touch 10, flat-footed 15 (+5 armor)',
        hp:'11 (1d8+3)',
        fort:'+4',
        ref:'+0',
        will:'+5',
        defensive_abilities:'',
        dr:'',
        immune:'',
        resist:'acid 5, cold 5, electricity 5',
        sr:'',
        weaknesses:'',
        speed:'30 ft. (20 ft. in armor)',
        melee:'heavy mace –1 (1d8–1)',
        ranged:'light crossbow +0 (1d8/19–20)',
        space:'',
        reach:'',
        special_attacks:'channel positive energy (5/day, 1d6, DC 12); rebuke death (1d4+1, 6/day); touch of good (6/day)',
        spell_like_abilities:'(CL 1st) - 1/day–daylight',
        spells_known:'',
        spells_prepared:'(CL 1st) - 1st–bless, command (DC 14), protection from evilD; 0th (at will)–detect magic, guidance, stabilize; D domain spell; Domains Good, Healing',
        str:'8',
        dex:'10',
        con:'14',
        int:'13',
        wis:'17',
        cha:'14',
        base_atk:'+0',
        cmb:'-1',
        cmd:'9',
        feats:'Turn Undead',
        skills:'Diplomacy +8, Heal +7, Knowledge (religion) +5',
        racial_modifiers:'+2 Diplomacy, +2 Perception',
        languages:'Celestial, Common, Draconic',
        sq:'',
        env:'any land',
        organization:'solitary, pair, or team (3–6)',
        treasure:'NPC gear (scale mail, heavy mace, light crossbow with 10 bolts, other treasure)',
        special_abilities:'',
        more_info_link:'http://www.d20pfsrd.com/bestiary/monster-listings/outsiders/aasimar'
    )
    Monster.create!(
        name:'Archon, Trumpet',
        cr:14,
        xp:38400,
        environment_code:'',
        description:'',
        race_class_level:'',
        align_size_type:'LG Medium outsider (archon, extraplanar, good, lawful)',
        init:'+7',
        senses:'darkvision 60 ft., low-light vision; Perception +22',
        aura:'aura of menace (DC 22), magic circle against evil',
        ac:'27, touch 13, flat-footed 24 (+3 Dex, +14 natural; +2 deflection vs. evil)',
        hp:'175 (14d10+98)',
        fort:'+16',
        ref:'+9',
        will:'+14; +4 vs. poison, +2 resistance vs. evil',
        defensive_abilities:'',
        dr:'10/evil',
        immune:'electricity, petrification',
        resist:'',
        sr:'25',
        weaknesses:'',
        speed:'40 ft., fly 90 ft. (good)',
        melee:'+4 greatsword +23/+18/+13 (2d6+11/19-20)',
        ranged:'',
        space:'',
        reach:'',
        special_attacks:'trumpet',
        spell_like_abilities:'(CL 14th) - Constant—magic circle against evil; At will—aid, continual flame, detect evil, greater teleport (self plus 50 lbs. of objects only), message',
        spells_known:'',
        spells_prepared:'(CL 14th) - 7th—mass cure serious wounds (2); 6th—banishment (DC 21), heal (2); 5th—dispel evil (DC 20), mass cure light wounds, plane shift (DC 20), raise dead;
4th—dismissal (DC 19), divine power, neutralize poison (DC 19), spell immunity; 3rd—cure serious wounds, daylight, invisibility purge, magic vestment, protection from energy; 2nd—bull"s
strength, consecrate, cure moderate wounds (2), lesser restoration (2), owl"s wisdom; 1st—bless, cure light wounds (3), divine favor, sanctuary (DC 16), shield of faith; 0 (at will)—detect
magic, purify food and drink, stabilize, virtue',
        str:'20',
        dex:'17',
        con:'25',
        int:'16',
        wis:'20',
        cha:'17',
        base_atk:'+14',
        cmb:'+19',
        cmd:'32',
        feats:'Blind-Fight, Cleave, Combat Reflexes, Improved Initiative, Lightning Reflexes, Persuasive, Power Attack',
        skills:'Diplomacy +24, Escape Artist +17, Fly +24, Handle Animal +20, Knowledge (religion) +20, Perception +22, Perform (wind instruments) +20, Sense Motive +24, Stealth +20',
        racial_modifiers:'',
        languages:'Celestial, Draconic, Infernal; truespeech',
        sq:'',
        env:'any (Heaven)',
        organization:'solitary, pair, or squad (3–5)',
        treasure:'standard',
        special_abilities:'Trumpet (Su), Spells',
        more_info_link:'http://www.d20pfsrd.com/bestiary/monster-listings/outsiders/archon/trumpet-archon'
    )
=begin
    Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:'',
    max_num:,
    gear:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
Monster.create!(
    name:'',
    cr:4,
    xp:1200,
    description:'',
    race_class_level:'',
    align_size_type:'',
    init:'',
    senses:'',
    aura:'',
    ac:'',
    hp:'',
    fort:'',
    ref:'',
    will:'',
    defensive_abilities:'',
    dr:'',
    immune:'',
    resist:'',
    sr:'',
    weaknesses:'',
    speed:'',
    melee:'',
    ranged:'',
    space:'',
    reach:'',
    special_attacks:'',
    spell_like_abilities:'',
    spells_known:'',
    spells_prepared:'',
    str:'',
    dex:'',
    con:'',
    int:'',
    wis:'',
    cha:'',
    base_atk:'',
    cmb:'',
    cmd:'',
    feats:'',
    skills:'',
    racial_modifiers:'',
    languages:'',
    sq:'',
    env:'',
    organization:'',
    treasure:'',
    special_abilities:'',
    more_info_link:''
)
=end
=begin
    Monster.create!(
        name:'',
        cr:4,
        xp:1200,
        environment_code:'',
        description:'',
        race_class_level:'',
        align_size_type:'',
        init:'',
        senses:'',
        aura:'',
        ac:'',
        hp:'',
        fort:'',
        ref:'',
        will:'',
        defensive_abilities:'',
        dr:'',
        immune:'',
        resist:'',
        sr:'',
        weaknesses:'',
        speed:'',
        melee:'',
        ranged:'',
        space:'',
        reach:'',
        special_attacks:'',
        spell_like_abilities:'',
        spells_known:'',
        spells_prepared:'',
        str:'',
        dex:'',
        con:'',
        int:'',
        wis:'',
        cha:'',
        base_atk:'',
        cmb:'',
        cmd:'',
        feats:'',
        skills:'',
        racial_modifiers:'',
        languages:'',
        sq:'',
        env:'',
        organization:'',
        treasure:'',
        special_abilities:'',
        more_info_link:''
    )
=end
  end
end