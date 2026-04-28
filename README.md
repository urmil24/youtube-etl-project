#  YouTube Data Pipeline (ETL) & Analytics Dashboard

##  Project Overview

This project builds an end-to-end data pipeline using the YouTube Data API to analyze trending videos.

The pipeline extracts data, transforms it into meaningful insights, stores it in a database, and visualizes it using Microsoft Power BI.

---

##  Problem Statement

With the rapid growth of video content on YouTube, analyzing trending videos, engagement, and category performance manually is difficult.

This project aims to:

* Extract trending video data
* Transform and clean raw data
* Store it in a structured format
* Visualize insights using dashboards

---

## ⚙️ Tech Stack

* Python (Pandas, API handling)
* MySQL (Database)
* SQL (Data Analysis)
* Power BI (Dashboard)

---

## 🔄 ETL Pipeline

### 1. Extract

* Fetched trending videos using YouTube API
* Extracted fields like title, channel, views, likes, category, publish date

### 2. Transform

* Cleaned data using Pandas
* Converted data types (views, likes)
* Created engagement rate column
* Mapped category IDs to category names

### 3. Load

* Stored processed data into MySQL database

---

## 📊 Dashboard Features

* 🔝 Top 10 Trending Videos by Views
* 📊 Category-wise Distribution
* ❤️ Top Channels by Likes
* 📈 Views Trend Over Time
* 📊 Views vs Likes Analysis

---

## 🔍 Key Insights

* Top 5 videos contribute a major portion of total views
* Some videos have high views but low engagement
* Category performance varies significantly
* Engagement does not always correlate with views

---

## 📁 Project Structure

* `scripts/` → Python ETL scripts
* `data/` → Raw and processed data
* `sql/` → SQL analysis queries
* `dashboard/` → Power BI dashboard

---

## ▶️ How to Run

### 1. Clone Repository

```
git clone https://github.com/your-username/youtube-etl-dashboard.git
cd youtube-etl-dashboard
```

### 2. Install Dependencies

```
pip install -r requirements.txt
```

### 3. Run ETL Scripts

```
python scripts/extract.py
python scripts/transform.py
python scripts/load.py
```

---

## 📸 Dashboard Preview

(Add your screenshot here)

---

## 🎯 Conclusion

This project demonstrates the ability to build a complete data pipeline from API to dashboard and extract meaningful business insights.

---

## 💡 Future Improvements

* Automate pipeline using scheduler
* Store historical data
* Add real-time analytics

---

## 🙌 Author

Your Name
