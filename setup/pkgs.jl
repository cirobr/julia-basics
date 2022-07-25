using Pkg
Pkg.update()

# environment
Pkg.add("CUDA")
Pkg.add("IJulia")   # Jupyter i/f
Pkg.add("PyCall")

#ai/ml
Pkg.add("Flux")
Pkg.add("MLJ")
Pkg.add("MLJFlux")
Pkg.add("MLDataUtils")
Pkg.add("MLDatasets")
Pkg.add("MLJLinearModels")
Pkg.add("MultivariateStats")
Pkg.add("MLJMultivariateStatsInterface")
Pkg.add("ScikitLearn")
Pkg.add("MLJScikitLearnInterface")
Pkg.add("GLM")
# Pkg.add("ObjectDetector")   # yolo

# math
Pkg.add("LinearAlgebra")
Pkg.add("Metrics")
Pkg.add("Random")
Pkg.add("StatsBase")
Pkg.add("Distributions")

# charts
Pkg.add("Plots")
Pkg.add("StatsPlots")
Pkg.add("Printf")

# media
Pkg.add("Colors")
Pkg.add("Images")
Pkg.add("ImageView")
Pkg.add("ImageTransformations")
Pkg.add("ImageDraw")
Pkg.add("OpenCV")
Pkg.add("GLMakie")
Pkg.add("VideoIO")

# hpc
Pkg.add("Distributed")
Pkg.add("FLoops")

# data
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("DataStructures")   # stacks, queues, ...
Pkg.add("FileIO")
Pkg.add("ImageIO")

#build
Pkg.update()
Pkg.build()