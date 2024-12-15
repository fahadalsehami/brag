@echo off
:: Create project root directory

cd brag

:: Create app directory and its subdirectories
mkdir app
mkdir app\components
mkdir app\utils

:: Create files in app directory
cd app
copy nul app.py
cd components
copy nul video_processing.py
cd ..\utils
copy nul analysis.py
copy nul inference.py
copy nul aws_integration.py
copy nul database.py
cd ..\..

:: Create models directory and files
mkdir models
cd models
copy nul cnn_rnn_model.h5
copy nul rag_model.pt
cd ..

:: Create data directory and its subdirectories
mkdir data
mkdir data\raw
mkdir data\processed

:: Create aws directory and its subdirectories
mkdir aws
mkdir aws\lambda
mkdir aws\terraform
mkdir aws\sagemaker

:: Create files in aws subdirectories
cd aws\lambda
copy nul lambda_handler.py
cd ..\terraform
copy nul main.tf
cd ..\sagemaker
copy nul training_script.py
cd ..\..

:: Create tests directory and files
mkdir tests
cd tests
copy nul test_app.py
copy nul test_analysis.py
copy nul test_aws_integration.py
cd ..

:: Create root-level files
copy nul .gitignore

@echo Project structure created successfully!
