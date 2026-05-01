py -3.12 -m venv .venv
.venv\Scripts\avtivate
python --versión
python -m pip install --upgrade pip setuptools wheel
pip install pandas matplotlib numpy plotly openpyxl scipy kagglehub xlrd scikit-learn statsmodels xgboost lightgbm jupyter notebook
pip freeze > requirements.txt