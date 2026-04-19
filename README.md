# Titanic — Surviving the Titanic 🚢

A SwiftUI iOS app that predicts your survival chances on the Titanic using a **Core ML machine learning model**. Users input their passenger details and the app computes a survival probability in real time.

---

## 📁 Project Structure

```
Titanic/
├── Views/
│   ├── MainView.swift               # Main form screen with all inputs & compute button
│   ├── SegmentSectionView.swift     # Reusable segmented control section (class, gender)
│   └── SliderSectionView.swift      # Reusable slider section (age, siblings, fare, etc.)
├── TitanicModel.swift               # Data model — passenger properties & options
├── TitanicRegressionModel 1.mlmodel # Trained Core ML logistic regression model
├── Assets.xcassets                  # App assets
└── TitanicApp.swift                 # App entry point
```

---

## 🤖 How It Works

The app collects passenger data through an interactive form and feeds it into a **Core ML logistic regression model** to predict survival probability.

### Input Parameters

| Field | Type | Description |
|-------|------|-------------|
| Passenger Class | Segment | First / Second / Third Class |
| Gender | Segment | Male / Female |
| Age | Slider | Passenger age |
| Siblings & Spouses | Slider | Number of siblings/spouses aboard |
| Parents & Children | Slider | Number of parents/children aboard |
| Fare | Slider | Ticket fare paid |
| Port of Embarkation | Segment | Cherbourg / Queenstown / Southampton |

### Output

- ✅ **Survived** / ❌ **Did not survive** — binary prediction
- 📊 **Survival rate** — probability percentage from the regression model

---

## 🏗️UI Components

### `SegmentSectionView`
A reusable segmented picker component used for categorical inputs:
```swift
SegmentSectionView(
    selected: $tm.passengerClass,
    options: TitanicModel.passengerClasses,
    sectionTitle: "Passenger Class",
    prompt: "What passenger class are you?"
)
```

### `SliderSectionView`
A reusable slider component used for numerical inputs like age, fare, and family size.

---

## 🧠 Machine Learning

- **Model type:** Logistic Regression
- **Framework:** Core ML (`import CoreML`)
- **Model file:** `TitanicRegressionModel 1.mlmodel`
- **Training data:** Classic Titanic dataset (passengers, survival labels)

> The model was trained on historical Titanic passenger data and exported to `.mlmodel` format for on-device inference — no internet connection required.

---

## 📚 What I Learned

- 🤖 **Core ML integration** — importing and running a `.mlmodel` file inside a SwiftUI app
- 📊 **Logistic regression** — understanding how ML models predict binary outcomes
- 🎛️ **Reusable form components** — building `SegmentSectionView` and `SliderSectionView` for clean, DRY form UI
- 🔗 **`@State` & data binding** — wiring up form inputs to a model struct in real time
- 📦 **On-device ML inference** — running predictions locally without any backend or API

---

## 🚀 Getting Started

### Requirements

- Xcode 15+
- iOS 17+
- Swift 5.9+

### Run

1. Clone the repository:
   ```bash
   git clone https://github.com/Skylowerr/Titanic.git
   ```
2. Open `Titanic.xcodeproj` in Xcode.
3. Select a simulator (e.g. **iPhone 17 Pro**) and press **Run** (`⌘R`).

> No API keys or external dependencies required. The ML model runs fully on-device.

---
