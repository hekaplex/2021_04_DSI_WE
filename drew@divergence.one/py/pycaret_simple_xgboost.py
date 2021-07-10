# 'dataset' holds the input data for this script
# import classification module and setup environment
from pycaret.classification import *
clf1 = setup(dataset, target = 'TARGET_OUTCOME', silent = True)
# train and save xgboost model
xgboost = create_model('xgboost', verbose = False)
mdlfin = finalize_model(mdl)
dataset = predict_model(xgboost, data = dataset)   