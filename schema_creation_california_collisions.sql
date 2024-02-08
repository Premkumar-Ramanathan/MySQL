DROP SCHEMA IF EXISTS california_collisions;

CREATE SCHEMA california_collisions;

USE california_collisions;

CREATE TABLE case_ids(case_id TEXT,db_year INT);

CREATE TABLE collisions(
  case_id TEXT,
  jurisdiction INT,
  officer_id TEXT,
  reporting_district TEXT,
  chp_shift TEXT,
  population TEXT,
  county_city_location TEXT,
  county_location TEXT,
  special_condition TEXT,
  beat_type TEXT,
  chp_beat_type TEXT,
  city_division_lapd TEXT,
  chp_beat_class TEXT,
  beat_number TEXT,
  primary_road TEXT,
  secondary_road TEXT,
  distance REAL,
  direction TEXT,
  intersection INT,
  weather_1 TEXT,
  weather_2 TEXT,
  state_highway_indicator INT,
  caltrans_county TEXT,
  caltrans_district INT,
  state_route INT,
  route_suffix TEXT,
  postmile_prefix TEXT,
  postmile REAL,
  location_type TEXT,
  ramp_intersection TEXT,
  side_of_highway TEXT,
  tow_away INT,
  collision_severity TEXT,
  killed_victims INT,
  injured_victims INT,
  party_count INT,
  primary_collision_factor TEXT,
  pcf_violation_code TEXT,
  pcf_violation_category TEXT,
  pcf_violation INT,
  pcf_violation_subsection TEXT,
  hit_and_run TEXT,
  type_of_collision TEXT,
  motor_vehicle_involved_with TEXT,
  pedestrian_action TEXT,
  road_surface TEXT,
  road_condition_1 TEXT,
  road_condition_2 TEXT,
  lighting TEXT,
  control_device TEXT,
  chp_road_type TEXT,
  pedestrian_collision INT,
  bicycle_collision INT,
  motorcycle_collision INT,
  truck_collision INT,
  not_private_property INT,
  alcohol_involved INT,
  statewide_vehicle_type_at_fault TEXT,
  chp_vehicle_type_at_fault TEXT,
  severe_injury_count INT,
  other_visible_injury_count INT,
  complaint_of_pain_injury_count INT,
  pedestrian_killed_count INT,
  pedestrian_injured_count INT,
  bicyclist_killed_count INT,
  bicyclist_injured_count INT,
  motorcyclist_killed_count INT,
  motorcyclist_injured_count INT,
  primary_ramp TEXT,
  secondary_ramp TEXT,
  latitude REAL,
  longitude REAL,
  collision_date TEXT,
  collision_time TEXT,
  process_date TEXT
);

CREATE TABLE victims(
  id INT,
  case_id TEXT,
  party_number INT,
  victim_role TEXT,
  victim_sex TEXT,
  victim_age INT,
  victim_degree_of_injury TEXT,
  victim_seating_position TEXT,
  victim_safety_equipment_1 TEXT,
  victim_safety_equipment_2 TEXT,
  victim_ejected TEXT
);

CREATE TABLE parties(
  id INT,
  case_id TEXT,
  party_number INT,
  party_type TEXT,
  at_fault INT,
  party_sex TEXT,
  party_age INT,
  party_sobriety TEXT,
  party_drug_physical TEXT,
  direction_of_travel TEXT,
  party_safety_equipment_1 TEXT,
  party_safety_equipment_2 TEXT,
  financial_responsibility TEXT,
  hazardous_materials INT,
  cellphone_in_use INT,
  cellphone_use_type TEXT,
  school_bus_related INT,
  oaf_violation_code TEXT,
  oaf_violation_category TEXT,
  oaf_violation_section TEXT,
  oaf_violation_suffix TEXT,
  other_associate_factor_1 TEXT,
  other_associate_factor_2 TEXT,
  party_number_killed INT,
  party_number_injured INT,
  movement_preceding_collision TEXT,
  vehicle_year INT,
  vehicle_make TEXT,
  statewide_vehicle_type TEXT,
  chp_vehicle_type_towing TEXT,
  chp_vehicle_type_towed TEXT,
  party_race TEXT
);