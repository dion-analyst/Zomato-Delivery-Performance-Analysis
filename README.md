# Zomato Delivery Performance Analysis

An end-to-end data analytics project analyzing delivery performance and customer experience using **MySQL, Power BI, and DAX**. The analysis examines how traffic, weather, multiple deliveries, and other operational factors relate to delivery time and customer ratings.

---

## Section 1 – Business Problem

### Business Context

Zomato operates a food-delivery service where delivery speed is an important component of the customer experience.

### Business Challenge

Delivery times may vary depending on operational and environmental factors such as traffic, weather, vehicle type, multiple deliveries, and city characteristics.

### Primary KPI

**Average Delivery Time (`time_taken`)**

### Stakeholder

**Delivery / Operations Management**

### Goal

Identify which factors are associated with longer delivery times and where operational improvements may be most beneficial.

### Why Does It Matter?

Improving delivery efficiency can contribute to a more consistent delivery experience and help operations teams identify areas requiring attention.

---

## Section 2 – Hypothesis

### Primary Hypothesis (H1)

**Higher road traffic density is associated with longer average delivery times.**

### Null Hypothesis (H0)

**Road traffic density is not associated with longer average delivery times.**

### Expected Relationship

As road traffic density increases, average delivery time is expected to increase.

### Hypothesis Result: Supported

The analysis supports the primary hypothesis that higher road traffic density is associated with longer delivery times. Average delivery time was consistently higher under heavier traffic conditions, suggesting that traffic congestion is an important operational factor affecting delivery performance.

---

## Section 3 – Method

### Tools & Technologies

- **MySQL** – Data quality assessment, data cleaning, and exploratory/business analysis
- **Power BI** – Data modeling and interactive dashboard development
- **DAX** – Calculated measures and KPI development

### Dataset

Zomato delivery dataset containing information related to:

- Orders
- Delivery performance
- Traffic
- Weather
- Vehicle characteristics
- Customer ratings

*Please refer to the Power BI dashboard for visuals.*

---

## Section 4 – Insights

### 1. Multiple Deliveries Are Strongly Associated with Longer Delivery Times

**Business Meaning:**  
Orders involving multiple deliveries take substantially longer, suggesting that delivery batching or multiple-order assignments may be an important operational factor affecting delivery speed.

### 2. Higher Traffic Density Is Associated with Longer Delivery Times

**Business Meaning:**  
Traffic conditions appear to be an important operational constraint. Delivery planning and route allocation may need to account for traffic intensity, particularly during congested periods.

### 3. Weather Conditions Also Correspond with Meaningful Differences in Delivery Time

**Business Meaning:**  
Adverse weather conditions may create additional delivery challenges and should be considered when evaluating expected delivery performance.

### 4. Customer Ratings Are Concentrated at the Higher End of the Rating Scale

**Business Meaning:**  
Overall customer feedback is strongly positive, suggesting that the majority of recorded orders received favorable ratings.

### 5. Longer Delivery Times Are Associated with Lower Ratings

**Business Meaning:**  
Delivery speed appears to be an important component of customer experience. However, the rating-1 result should be treated cautiously because there are very few 1-star observations.

---

## Section 5 – Business Recommendations

### 1. Optimize Rider Allocation During High-Traffic Periods

Use traffic patterns to improve rider assignment and route planning during periods with elevated delivery times.

### 2. Review Multiple-Delivery Operations

Investigate whether batching multiple orders is causing excessive delivery delays and identify situations where batching should be limited.

### 3. Introduce Condition-Based Delivery Planning

Adjust delivery expectations and rider allocation during adverse weather conditions to minimize customer impact.

### Further Analysis

Incorporate delivery distance, restaurant preparation time, GPS data, and exact timestamps to identify the root causes of delivery delays.
