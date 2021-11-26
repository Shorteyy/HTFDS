connection: "htf2021"

# include all the views
include: "/views/**/*.view"

datagroup: htf2021datasight_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: htf2021datasight_default_datagroup

explore: companies {}

explore: ages {}

explore: appearance {}

explore: aib_bnbs_nyc {}

explore: company_employees {}

explore: bnbcheckins {}

explore: event_reviews {
  join: events {
    type: left_outer
    sql_on: ${event_reviews.event_id} = ${events.id} ;;
    relationship: many_to_one
  }
}

explore: bnbreservations {}

explore: locations {}

explore: gender {}

explore: events {}

explore: people {}

explore: nationalities {}

explore: physical_characteristics {}

explore: financial_status {}

explore: ride_info {}

explore: religions {}

explore: taxi_rides {
  join: taxis {
    type: left_outer
    sql_on: ${taxi_rides.taxi_id} = ${taxis.id} ;;
    relationship: many_to_one
  }
}

explore: roles {}

explore: sub_departments {}

explore: taxis {}

explore: ride_passengers {}
