module PrettyPlots

using Colors
using DataFrames
using Plots
#import Plots.gr
#import Plots.pyplot
import Plots.xlims!, Plots.ylims!, Plots.plot
gr(); # default backend
#pyplot()
using VehicleModels # need for parameters
using NLOptControl  # need for resultsDir!()

include("PrettyUtils.jl")
include("NLOptControl_plots.jl")
include("MPCPlots.jl")
include("VehicleModels_plots.jl")

export
    # PrettyUtils.jl
    minDF,
    maxDF,
    plotSettings,
    _pretty_defaults,
    currentSettings,

    # NLOptControl.jl plots
    statePlot,
    controlPlot,
    costatesPlot,
    costatesPlots,
    allPlots,
    adjust_axis,

    # MPC plots
    mpcPlot,
    tPlot,
    optPlot,

  # MAVs.jl & VehicleModel.jl plots
    obstaclePlot,
    trackPlot,
    mainSim,
    posterP,
    posPlot,
    vtPlot,
    pSimGR,
    axLimsPlot,

    # Plots.jl exported functions
    xlims!,
    ylims!,
    plot
    #Plots.gui(),
    #Plots.pyplot(),
    #Plots.gr(),
    #Plots.pgfplots()

end # module
