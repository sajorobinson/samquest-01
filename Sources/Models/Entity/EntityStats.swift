struct EntityStats {
    private var _strength: Int
    private var _agility: Int
    private var _mystique: Int
    private var _understanding: Int
    private var _endurance: Int
    private var _logic: Int

    init(
        strength: Int,
        agility: Int,
        mystique: Int,
        understanding: Int,
        endurance: Int,
        logic: Int
    ) {
        self._strength = strength
        self._agility = agility
        self._mystique = mystique
        self._understanding = understanding
        self._endurance = endurance
        self._logic = logic
    }

    // Physical power
    var strength: Int {
        get { _strength }
        set { _strength = newValue }
    }

    // Speed and reflexes
    var agility: Int {
        get { _agility }
        set { _agility = newValue }
    }

    // Presence, charisma, and aura
    var mystique: Int {
        get { _mystique }
        set { _mystique = newValue }
    }

    // Intuition
    var understanding: Int {
        get { _understanding }
        set { _understanding = newValue }
    }

    // Stamina and resistance
    var endurance: Int {
        get { _endurance }
        set { _endurance = newValue }
    }

    // Intelligence and knowledge
    var logic: Int {
        get { _logic }
        set { _logic = newValue }
    }

}
