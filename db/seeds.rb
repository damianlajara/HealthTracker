# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Symptom.create([
  # Acne
  {common_term: "Whiteheads"},
  {common_term: "Blackheads"},
  {common_term: "Red Bumps"},
  {common_term: "Pimples"},
  {common_term: "Lumps"},
  # HIV/AIDS
  {common_term: "Fever"},
  {common_term: "Headache"},
  {common_term: "Muscle Ache"},
  {common_term: "Rash"},
  {common_term: "Sore Throat"},
  {common_term: "Swollen Lymph Glands"},
  # Asthma
  {common_term: "Shortness of breath"},
  {common_term: "Chest pain"},
  {common_term: "Coughing"},
  {common_term: "Wheezing"},
  {common_term: "Whistling sound when exhailing"},
  #{common_term: "Whiteheads"},
  # Back Pain
  #{common_term: "Muscle Ache"},
  {common_term: "Leg pain"},
  {common_term: "Limited flexibility"},
  {common_term: "Rigid back motion"},
  # Cellulitis
  {common_term: "Swelling"},
  {common_term: "Tenderness"},
  {common_term: "Pain"},
  {common_term: "Warmth"},
  #{common_term: "Fever"},
  {common_term: "Red Spots"},
  {common_term: "Blisters"},
  {common_term: "Skin dimpling"},
  # Chicken Pox
  {common_term: "Fever"},
  {common_term: "Loss of appetite"},
  {common_term: "Headache"},
  {common_term: "Whiteheads"},
  {common_term: "Tired"},
  # Constipation
  {common_term: "Lumpy stools"},
  {common_term: "Blockage in rectum"},
  {common_term: "Stomach pain"},
  # Hives
  {common_term: "Wheals"},
  {common_term: "Itching"},
  {common_term: "Burning throat"},
  {common_term: "Swollen genitals"},
  # Cold Sore
  {common_term: "Blisters"},
  {common_term: "Tingling"},
  {common_term: "Itching"},
  {common_term: "Oozing Blisters"},
  #{common_term: "Muscle aches"},
  {common_term: "Swollen Lymph Nodes"},
  {common_term: "Sore Throat"}
])

Illness.create([
  {common_term: "Acne"},
  {common_term: "HIV/AIDS"},
  {common_term: "Asthma"},
  {common_term: "Back Pain"},
  {common_term: "Cellulitis"},
  {common_term: "Chicken Pox"},
  {common_term: "Constipation"},
  {common_term: "Hives"},
  {common_term: "Cold Sore"},
  {common_term: "Muscle aches"}
])

x = Illness.find_or_create_by(common_term: "Acne")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Whiteheads"),
    Symptom.find_or_create_by(common_term: "Blackheads"),
    Symptom.find_or_create_by(common_term: "Red Bumps"),
    Symptom.find_or_create_by(common_term: "Pimples"),
    Symptom.find_or_create_by(common_term: "Lumps") 
  ]
x.save

x = Illness.find_or_create_by(common_term: "HIV/AIDS")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Fever"),
    Symptom.find_or_create_by(common_term: "Headache"),
    Symptom.find_or_create_by(common_term: "Muscle Ache"),
    Symptom.find_or_create_by(common_term: "Rash"),
    Symptom.find_or_create_by(common_term: "Sore Throat"),
    Symptom.find_or_create_by(common_term: "Swollen Lymph Glands") 
  ]
x.save

x = Illness.find_or_create_by(common_term: "Asthma")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Shortness of breath"),
    Symptom.find_or_create_by(common_term: "Chest pain"),
    Symptom.find_or_create_by(common_term: "Coughing"),
    Symptom.find_or_create_by(common_term: "Wheezing"),
    Symptom.find_or_create_by(common_term: "Whistling sound when exhailing"), 
  ]
x.save

x = Illness.find_or_create_by(common_term: "Back Pain")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Muscle Ache"),
    Symptom.find_or_create_by(common_term: "Leg pain"),
    Symptom.find_or_create_by(common_term: "Limited flexibility"),
    Symptom.find_or_create_by(common_term: "Rigid back motion")
  ]
x.save

x = Illness.find_or_create_by(common_term: "Cellulitis")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Swelling"),
    Symptom.find_or_create_by(common_term: "Tenderness"),
    Symptom.find_or_create_by(common_term: "Pain"),
    Symptom.find_or_create_by(common_term: "Warmth"),
    Symptom.find_or_create_by(common_term: "Red Spots"),
    Symptom.find_or_create_by(common_term: "Blisters"),
    Symptom.find_or_create_by(common_term: "Fever"),
    Symptom.find_or_create_by(common_term: "Skin dimpling")
  ]
x.save

x = Illness.find_or_create_by(common_term: "Chicken Pox")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Fever"),
    Symptom.find_or_create_by(common_term: "Loss of appetite"),
    Symptom.find_or_create_by(common_term: "Headache"),
    Symptom.find_or_create_by(common_term: "Whiteheads"),
    Symptom.find_or_create_by(common_term: "Tired")
  ]
x.save

x = Illness.find_or_create_by(common_term: "Constipation")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Lumpy stools"),
    Symptom.find_or_create_by(common_term: "Blockage in rectum"),
     Symptom.find_or_create_by(common_term: "Stomach pain") 
  ]
x.save

x = Illness.find_or_create_by(common_term: "Hives")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Wheals"),
    Symptom.find_or_create_by(common_term: "Itching"),
    Symptom.find_or_create_by(common_term: "Burning throat"),
    Symptom.find_or_create_by(common_term: "Swollen genitals")
  ]
x.save

x = Illness.find_or_create_by(common_term: "Cold Sore")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Blisters"),
    Symptom.find_or_create_by(common_term: "Tingling"),
    Symptom.find_or_create_by(common_term: "Itching"),
    Symptom.find_or_create_by(common_term: "Oozing Blisters"),
    Symptom.find_or_create_by(common_term: "Muscle aches"),
    Symptom.find_or_create_by(common_term: "Sore Throat"),
    Symptom.find_or_create_by(common_term: "Swollen Lymph Nodes")
  ]
x.save

