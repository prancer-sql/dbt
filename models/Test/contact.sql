{{config (
        materialized = 'table'
        )}}

with test as (

    Select 1 As contactid
        , 'Dave' As firstname
        , 'Corris' As lastname
)

Select Cast(contactid As int) As contactid
    , cast(firstname as varchar (50)) As firstname
    , lastname
From test