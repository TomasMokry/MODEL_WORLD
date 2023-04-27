# **MODEL WORLD ESHOP BACK END APP**
### Second project for Engeto academy 
---
## **Project description**
The application is designed to be part of the fictional e-shop that offers 3D models. 
This part of application deals manage the list of products that the e-shop offers.
Application is wrote in Java, it retrieve and modify the information via a REST API and use JDBC to communicate with mySQL database.
## **Model**
We keep the following information about each type of items:
* part number (part no)
* product name (name)
* textual description of the product (description)
* information on whether the product is currently on sale (is for sale)
* the price of the product (price).

## **REST API endpoints**
* load all available items
* load product by ID
* save item
* update price by ID
* delete out of sale items
