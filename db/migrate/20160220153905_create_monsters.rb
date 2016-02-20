class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monster do |t|
      t.text :name
      t.column :cr, :decimal, precision: 5, scale: 2  #challenge rating - xxx.xx
      t.column :xp, :integer    #experience points
      t.text :environment_code  #codes for environment search
      t.text :description
      t.text :race_class_level
      t.text :align_size_type
      t.text :init
      t.text :senses
      t.text :aura
      t.text :ac                #armour class
      t.text :hp                #hit points
      t.text :fort              #saving throws
      t.text :ref               #saving throws
      t.text :will              #saving throws
      t.text :dr                #damage reduction
      t.text :immune
      t.text :resist
      t.text :sr                #spell resistance
      t.text :weaknesses
      t.text :speed
      t.text :melee
      t.text :ranged
      t.text :space
      t.text :reach
      t.text :special_attacks
      t.text :spell_like_abilities
      t.text :spells_known
      t.text :spells_prepared
      t.text :ability_scores
      t.text :base_atk          #base attack
      t.text :cmb               #combat maneuver bonus
      t.text :cmd               #combat maneuver defense
      t.text :feats
      t.text :skills
      t.text :languages
      t.text :sq                #special qualities
      t.text :env               #environment description
      t.text :organization
      t.text :treasure
      t.text :special_abilities
      t.text :more_info_link    #(e.g http://www.d20pfsrd.com/bestiary/monster-listings/aberrations/flumph)
      t.timestamps null: false
    end
  end
end
