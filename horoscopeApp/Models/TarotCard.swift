//
//  TarotCard.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 28.12.2024..
//

import Foundation

struct TarotCard {
    let name: String
    let image: String
    let meaning: String
}

let majorArcanaCards: [TarotCard] = [
    TarotCard(name: "The Fool", image: "fool", meaning: "The Fool represents new beginnings, adventure, and spontaneity. It signifies a leap of faith and embracing the unknown."),
    TarotCard(name: "The Magician", image: "magician", meaning: "The Magician symbolizes creativity, skill, and resourcefulness. It reflects using your abilities to manifest your desires."),
    TarotCard(name: "The High Priestess", image: "highPriestess", meaning: "The High Priestess represents intuition, mystery, and inner wisdom. It suggests listening to your inner voice and trusting your instincts."),
    TarotCard(name: "The Empress", image: "empress", meaning: "The Empress symbolizes fertility, nurturing, and abundance. It signifies growth, creativity, and connection to nature."),
    TarotCard(name: "The Emperor", image: "emperor", meaning: "The Emperor represents authority, structure, and leadership. It suggests stability and control over one's environment."),
    TarotCard(name: "The Hierophant", image: "hierophant", meaning: "The Hierophant signifies tradition, spirituality, and guidance. It represents conformity and following established rules."),
    TarotCard(name: "The Lovers", image: "lovers", meaning: "The Lovers represents relationships, choices, and harmony. It signifies love, union, and alignment with your true desires."),
    TarotCard(name: "The Chariot", image: "chariot", meaning: "The Chariot symbolizes victory, determination, and willpower. It signifies overcoming obstacles and maintaining focus."),
    TarotCard(name: "Strength", image: "strength", meaning: "Strength represents courage, patience, and inner fortitude. It suggests resilience and the power of soft control."),
    TarotCard(name: "The Hermit", image: "hermit", meaning: "The Hermit represents introspection, solitude, and inner guidance. It reflects the need to withdraw and reflect for clarity."),
    TarotCard(name: "Wheel of Fortune", image: "wheelOfFortune", meaning: "The Wheel of Fortune symbolizes cycles, fate, and luck. It suggests that things are in motion and change is inevitable."),
    TarotCard(name: "Justice", image: "justice", meaning: "Justice represents fairness, balance, and accountability. It signifies legal matters and the need for impartial decisions."),
    TarotCard(name: "The Hanged Man", image: "hangedMan", meaning: "The Hanged Man represents suspension, release, and new perspectives. It signifies letting go and seeing things in a new light."),
    TarotCard(name: "Death", image: "death", meaning: "Death symbolizes transformation, endings, and rebirth. It signifies the closing of one chapter to make way for new beginnings."),
    TarotCard(name: "Temperance", image: "temperance", meaning: "Temperance represents balance, moderation, and patience. It suggests harmony and finding middle ground."),
    TarotCard(name: "The Devil", image: "devil", meaning: "The Devil symbolizes addiction, temptation, and materialism. It suggests breaking free from negative patterns and attachments."),
    TarotCard(name: "The Tower", image: "tower", meaning: "The Tower represents sudden upheaval, destruction, and revelation. It signifies a collapse of false structures and the need for change."),
    TarotCard(name: "The Star", image: "star", meaning: "The Star symbolizes hope, inspiration, and healing. It reflects spiritual renewal and the promise of brighter days ahead."),
    TarotCard(name: "The Moon", image: "moon", meaning: "The Moon represents illusion, intuition, and the subconscious. It signifies confusion and the need to trust your instincts."),
    TarotCard(name: "The Sun", image: "sun", meaning: "The Sun symbolizes positivity, success, and vitality. It represents joy, abundance, and the clarity that comes with light."),
    TarotCard(name: "Judgement", image: "judgement", meaning: "Judgement represents reflection, redemption, and transformation. It signifies a call to action and embracing personal growth."),
    TarotCard(name: "The World", image: "world", meaning: "The World symbolizes completion, fulfillment, and unity. It reflects the successful completion of a journey and a sense of accomplishment.")
]
