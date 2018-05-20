AdminUser.find_or_create_by!(email: 'admin@example.com') do |user|
  user.password = 'password'
end

# Groups
group_a = Group.find_or_create_by!(name: 'A')
group_b = Group.find_or_create_by!(name: 'B')
group_c = Group.find_or_create_by!(name: 'C')
group_d = Group.find_or_create_by!(name: 'D')
group_e = Group.find_or_create_by!(name: 'E')
group_f = Group.find_or_create_by!(name: 'F')
group_g = Group.find_or_create_by!(name: 'G')
group_h = Group.find_or_create_by!(name: 'H')

# Initial predictions (special categories)
initial_predictions = {
  uruguay_top_scorer: { description: 'Goleador de Uruguay', points: 2 },
  uruguay_final_phase: { description: 'Máxima fase a la que llega Uruguay', points: 2 },
  top_scorer: { description: 'Goleador de la copa', points: 2 },
  best_goalie: { description: 'Mejor arquero de la copa', points: 2 },
  round_of_16: { description: 'Equipos clasificados a octavos de final', points: 2 },
  quarterfinals: { description: 'Equipos clasificados a cuartos de final', points: 2 },
  semifinals: { description: 'Equipos clasificados a semifinales', points: 2 },
  third_place: { description: 'Tercer puesto', points: 2 },
  final: { description: 'Equipos finalistas', points: 2 },
  champion: { description: 'Campeón', points: 2 }
}
initial_predictions.each do |code, opts|
  InitialPrediction.find_or_create_by!(code: code) do |pred|
    pred.description = opts[:description]
    pred.points = opts[:points]
  end
end
