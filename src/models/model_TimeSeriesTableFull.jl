# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


"""
```
TimeSeriesTableFull(;
    name=nothing,
    description=nothing,
    geographicIntegration=nothing,
    sequence=nothing,
    timeSeries=nothing,
    geogLevels=nothing,
)
```

This function returns an object containing the attributes for downloading a
Time Series Table.

# Arguments

- `name::String`- **(Optional)** The unique variable identifier for the time series table, (eg. "A00", "OWNERSHP").
- `description::String`- **(Optional)** A short description of the time series variable referred to in `name`.
- `geographicIntegration::String`- **(Optional)** Specifies how the variable accounts for changes in geographic boundaries over time, (eg. "Nominal").
- `sequence::Float32`- **(Optional)** The order of appearence of the dataset in the metadata API and extract.
- `timeSeries::Vector{TimeSeriesTableFullTimeSeriesInner}`- **(Optional)** A list of time series records corresponding to the variable specified in `name`.
- `geogLevels::Vector{TimeSeriesTableFullTimeSeriesInner}`-  **(Optional)** A list of geographic levels available for this time series table.

# Returns

This function return a `TimeSeriesTableFull` object containing the variable
name, description, time series, and geographical information of the data.

# Examples

```julia-repl

julia> IPUMS.TimeSeriesTableFull(name="A00",
                                description= "Total Population", 
                                geographicIntegration= "Nominal", 
                                sequence= 0.01, 
                                timeSeries=[IPUMS.TimeSeriesTableFullTimeSeriesInner(name = "AA",
                                                                                     description = "Persons: Total",
                                                                                     sequence = 1 )], 
                                geogLevels= [ IPUMS.TimeSeriesTableFullTimeSeriesInner(name = "state",
                                                                                       description = "State",
                                                                                       sequence = 4 ), 
                                              IPUMS.TimeSeriesTableFullTimeSeriesInner(name = "county",
                                                                                       description = "State--County",
                                                                                       sequence = 25 )])
# Output
{
  "name": "A00",
  "description": "Total Population",
  "geographicIntegration": "Nominal",
  "sequence": 0.01,
  "timeSeries": [
    {
      "name": "AA",
      "description": "Persons: Total",
      "sequence": 1
    }
  ],
  "geogLevels": [
    {
      "name": "state",
      "description": "State",
      "sequence": 4
    },
    {
      "name": "county",
      "description": "State--County",
      "sequence": 25
    }
  ]
}


```

# References

For additional information please refer to the following sources:

* https://developer.ipums.org/docs/v2/workflows/explore_metadata/nhgis/time_series/
* https://www.nhgis.org/time-series-tables

"""
Base.@kwdef mutable struct TimeSeriesTableFull <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    geographicIntegration::Union{Nothing, String} = nothing
    sequence::Union{Nothing, Float32} = nothing
    timeSeries::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{TimeSeriesTableFullTimeSeriesInner} }
    geogLevels::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{TimeSeriesTableFullTimeSeriesInner} }

    function TimeSeriesTableFull(name, description, geographicIntegration, sequence, timeSeries, geogLevels, )
        OpenAPI.validate_property(TimeSeriesTableFull, Symbol("name"), name)
        OpenAPI.validate_property(TimeSeriesTableFull, Symbol("description"), description)
        OpenAPI.validate_property(TimeSeriesTableFull, Symbol("geographicIntegration"), geographicIntegration)
        OpenAPI.validate_property(TimeSeriesTableFull, Symbol("sequence"), sequence)
        OpenAPI.validate_property(TimeSeriesTableFull, Symbol("timeSeries"), timeSeries)
        OpenAPI.validate_property(TimeSeriesTableFull, Symbol("geogLevels"), geogLevels)
        return new(name, description, geographicIntegration, sequence, timeSeries, geogLevels, )
    end
end # type TimeSeriesTableFull

const _property_types_TimeSeriesTableFull = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("description")=>"String", Symbol("geographicIntegration")=>"String", Symbol("sequence")=>"Float32", Symbol("timeSeries")=>"Vector{TimeSeriesTableFullTimeSeriesInner}", Symbol("geogLevels")=>"Vector{TimeSeriesTableFullTimeSeriesInner}", )
OpenAPI.property_type(::Type{ TimeSeriesTableFull }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TimeSeriesTableFull[name]))}

function check_required(o::TimeSeriesTableFull)
    true
end

function OpenAPI.validate_property(::Type{ TimeSeriesTableFull }, name::Symbol, val)
end
