# ✅ Install dependencies
pip install --upgrade pip && \
pip install -r requirements.txt

# 🧹 Format code using Black
black *.py

# 🏋️ Train the model
python train.py

# 📊 Evaluate and generate markdown report
echo "## Model Metrics" > report.md
cat ./Results/metrics.txt >> report.md

echo "" >> report.md
echo "## Confusion Matrix Plot" >> report.md
echo "![Confusion Matrix](./Results/model_results.png)" >> report.md

# 🚀 Post results as a comment (e.g., to GitHub/GitLab merge request)
cml comment create report.md
