# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DataExtract_extractDefinition

    DataExtractDefinition(;
        datasets=nothing,
        timeSeriesTables=nothing,
        dataFormat=nothing,
        timeSeriesTableLayout=nothing,
        breakdownAndDataTypeLayout=nothing,
        shapefiles=nothing,
        geographicExtents=nothing,
        description=nothing,
        version=nothing,
        collection=nothing,
    )

    - datasets::Dict{String, Dataset}
    - timeSeriesTables::Dict{String, TimeSeriesTable}
    - dataFormat::String
    - timeSeriesTableLayout::String
    - breakdownAndDataTypeLayout::String
    - shapefiles::Vector{String}
    - geographicExtents::Vector{String}
    - description::String
    - version::Int64
    - collection::String
"""
Base.@kwdef mutable struct DataExtractDefinition <: OpenAPI.APIModel
    datasets::Union{Nothing, Dict} = nothing # spec type: Union{ Nothing, Dict{String, Dataset} }
    timeSeriesTables::Union{Nothing, Dict} = nothing # spec type: Union{ Nothing, Dict{String, TimeSeriesTable} }
    dataFormat::Union{Nothing, String} = nothing
    timeSeriesTableLayout::Union{Nothing, String} = nothing
    breakdownAndDataTypeLayout::Union{Nothing, String} = nothing
    shapefiles::Union{Nothing, Vector{String}} = nothing
    geographicExtents::Union{Nothing, Vector{String}} = nothing
    description::Union{Nothing, String} = nothing
    version::Union{Nothing, Int64} = nothing
    collection::Union{Nothing, String} = nothing

    function DataExtractDefinition(datasets, timeSeriesTables, dataFormat, timeSeriesTableLayout, breakdownAndDataTypeLayout, shapefiles, geographicExtents, description, version, collection, )
        OpenAPI.validate_property(DataExtractDefinition, Symbol("datasets"), datasets)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("timeSeriesTables"), timeSeriesTables)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("dataFormat"), dataFormat)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("timeSeriesTableLayout"), timeSeriesTableLayout)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("breakdownAndDataTypeLayout"), breakdownAndDataTypeLayout)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("shapefiles"), shapefiles)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("geographicExtents"), geographicExtents)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("description"), description)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("version"), version)
        OpenAPI.validate_property(DataExtractDefinition, Symbol("collection"), collection)
        return new(datasets, timeSeriesTables, dataFormat, timeSeriesTableLayout, breakdownAndDataTypeLayout, shapefiles, geographicExtents, description, version, collection, )
    end
end # type DataExtractDefinition

const _property_types_DataExtractDefinition = Dict{Symbol,String}(Symbol("datasets")=>"Dict{String, Dataset}", Symbol("timeSeriesTables")=>"Dict{String, TimeSeriesTable}", Symbol("dataFormat")=>"String", Symbol("timeSeriesTableLayout")=>"String", Symbol("breakdownAndDataTypeLayout")=>"String", Symbol("shapefiles")=>"Vector{String}", Symbol("geographicExtents")=>"Vector{String}", Symbol("description")=>"String", Symbol("version")=>"Int64", Symbol("collection")=>"String", )
OpenAPI.property_type(::Type{ DataExtractDefinition }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_DataExtractDefinition[name]))}

function check_required(o::DataExtractDefinition)
    true
end

function OpenAPI.validate_property(::Type{ DataExtractDefinition }, name::Symbol, val)
    if name === Symbol("dataFormat")
        OpenAPI.validate_param(name, "DataExtractDefinition", :enum, val, ["csv_no_header", "csv_header", "fixed_width"])
    end
    if name === Symbol("timeSeriesTableLayout")
        OpenAPI.validate_param(name, "DataExtractDefinition", :enum, val, ["time_by_column_layout", "time_by_row_layout", "time_by_file_layout"])
    end
    if name === Symbol("breakdownAndDataTypeLayout")
        OpenAPI.validate_param(name, "DataExtractDefinition", :enum, val, ["separate_files", "single_file"])
    end
    if name === Symbol("version")
        OpenAPI.validate_param(name, "DataExtractDefinition", :format, val, "int32")
    end
end