# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


"""
```
Dataset(;
    dataTables=nothing,
    geogLevels=nothing,
    breakdownValues=nothing,
    years=nothing,
)
```
This function creates a new record of a Dataset given geographical levels, breakdown values and years.

# Arguments

- `dataTables::Vector{String}`- A list of available data tables for this Dataset.
- `geogLevels::Vector{String}`- A list of geographic levels available for the Dataset,(eg. "county","state").
- `breakdownValues::Vector{String}`- Breakdown values available for this grouping for the available Dataset.
- `years::Vector{String}`- List of the years if data of multiple years are present.

# Returns

This function returns a new record of a Dataset giving the geographical levels, breakdown values and years.

# Examples

```julia-repl
julia> IPUMS.Dataset(dataTables =["1790_cPop"],geogLevels =[ "state"],breakdownValues =["bs32.ge00"],years = ["1790"])
{
  "dataTables": [
    "1790_cPop"
  ],
  "geogLevels": [
    "state"
  ],
  "breakdownValues": [
    "bs32.ge00"
  ],
  "years": [
    "1790"
  ]
}
```
# References

To know more about the Dataset type visit the links:
* https://developer.ipums.org/docs/v2/workflows/explore_metadata/nhgis/datasets/
* https://www.nhgis.org/frequently-asked-questions-faq#breakdowns
"""
Base.@kwdef mutable struct Dataset <: OpenAPI.APIModel
    dataTables::Union{Nothing, Vector{String}} = nothing
    geogLevels::Union{Nothing, Vector{String}} = nothing
    breakdownValues::Union{Nothing, Vector{String}} = nothing
    years::Union{Nothing, Vector{String}} = nothing

    function Dataset(dataTables, geogLevels, breakdownValues, years, )
        OpenAPI.validate_property(Dataset, Symbol("dataTables"), dataTables)
        OpenAPI.validate_property(Dataset, Symbol("geogLevels"), geogLevels)
        OpenAPI.validate_property(Dataset, Symbol("breakdownValues"), breakdownValues)
        OpenAPI.validate_property(Dataset, Symbol("years"), years)
        return new(dataTables, geogLevels, breakdownValues, years, )
    end
end # type Dataset

const _property_types_Dataset = Dict{Symbol,String}(Symbol("dataTables")=>"Vector{String}", Symbol("geogLevels")=>"Vector{String}", Symbol("breakdownValues")=>"Vector{String}", Symbol("years")=>"Vector{String}", )
OpenAPI.property_type(::Type{ Dataset }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Dataset[name]))}

function check_required(o::Dataset)
    o.dataTables === nothing && (return false)
    o.geogLevels === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ Dataset }, name::Symbol, val)
end
