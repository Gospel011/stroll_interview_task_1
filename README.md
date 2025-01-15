# Stroll Interview Task 1

## Introduction
This is the repo for Stroll's frontend task. This app was built with flutter, state management and caching was done with hydrated_bloc and flutter_screenutil was used to ensure consistent feel across different devices.

## Considerations and Architecture used
Although the task is meant to replicate a single screen according to the provided figma design, I have structured the app into three layers according to bloc architecture (business_logic, presentation and data_layer).

## Overview of the Components Used in the Architecture
The **business_logic** would contain blocs which would serve as the communication link between the presentation and data_layer.

The **data_layer** contains the repository and data models.

The **repository** is the layer that communicates between the blocs, models and api_client.

The **presentation** is the layer that contains all the visual elements that the user can interact with.

The **api_client** is just a class responsible for communicating with the internet (Just like postman, but in code.).


## How Everything Works Together
The blocs react in response to ui events, handing off a request to the repository, the repository takes the request and hands it off to the client who makes the api_call, when a response is received, it gets returned to the repository who converts it to an actual object that can be used in our app and then hands it off to the bloc which then emits a new state to update the ui. The blocs also handle caching of relevant data, in this case I only cached **user** and **token**, also I used **cached_network_image** to cach images so they don't get fetched too frequently.

# IMAGES
## iPhone 16
![iPhone 16](https://github.com/user-attachments/assets/bfb1ad05-e338-4c5d-bddd-dbc1696042ba)

## iPhone 16 pro max
![iPhone 16 pro max ](https://github.com/user-attachments/assets/51baf5ac-0f5a-4415-8c8e-b594cdbd3936)

## Techno Spark 4
![Techno Spark 4](https://github.com/user-attachments/assets/4e786a14-3773-4d78-9dca-c2afa74731a3)

## Redmi note 13
![Redmi note 13](https://github.com/user-attachments/assets/24b9c198-8c20-4114-be64-4dc1ced1a583)





