# libraries
using DataFrames
using MLDataUtils



function image2Vector(M) = vec(Float64.(M))

# function matrix2Vector(M)
#     d = length(M)
#     v = reshape(M, (d,))   # columns are organized left-to-right as single vector
# end



function batchProcessImage2Vector(array3D, batchRange)
    # array3D = (h, v, N)
    # batchRange = a:b
    # output: vectorOfImageVectors
    vectorOfImageVectors = [ image2Vector( array3D[:, :, i] ) for i in batchRange]
end



vector2Image(vec, h, v) = reshape(Float64.(vec), (h, v))



function shuffleRowMatrix(X, Y)
    ndim = size(Y)[1]
    ind = randperm(ndim)   # shuffle array indices
    shuffledX = X[ind, :]
    shuffledY = trainY[ind]
    
    return (shuffledX, shuffledY)
end



function rescaleByColumns(X)
    # using StatsBase
    X = Float64.(X)
    dt = StatsBase.fit(ZScoreTransform, X; dims=1, center=true, scale=true)
    rescaledX = StatsBase.transform(dt, X)
end



function rescaleByRows(X)
    # using StatsBase
    X = Float64.(X)
    dt = StatsBase.fit(ZScoreTransform, X; dims=2, center=true, scale=true)
    rescaledX = StatsBase.transform(dt, X)
end



