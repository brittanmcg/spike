require_relative "action"


class AttackAction < Action
	attr_reader :owner, :dicepool

	# def initialize(owner, dicepool)
	# 	@owner = owner
	# 	@dicepool = dicepool

	# 	action_attributes
	# end

	def action_attributes
		@attribute = :strength
		@difficulty = :toughness
	end

	# def activate(target)
	# 	if dicepool.skill_check(owner.strength, target.toughness)
	# 		success(target)
	# 	else
	# 		failure(target)
	# 	end
	# end

	def success(target)
		target.kill
		owner.gain_exp
		owner.gain_gold
	end

	def failure(target)
		owner.damage(target.damage)
	end
	
	
end