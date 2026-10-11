# Rentify

Haider Mustafa
Ammar Khawaja
1. Introduction

Rentify is a centralized, multi-category rental web application designed to make renting everyday products, vehicles, short-term stays, and events more convenient through a single online platform. The system provides categories such as home and furniture items, electronics, car rentals, event venues/equipment, and hostel/stay accommodations. Users can register, browse listings, search and filter available options, view rental information, receive AI-driven recommendations, select rental or booking periods, and place rental/booking requests.


Payments within the platform are handled through Rentify Credits, an in-app wallet that users top up from their bank account or card and then use to pay for any rental or booking. An administrator manages listings, availability, inventory, bookings, and wallet transactions through an administrative interface. The system uses Python FastAPI for the backend, HTML/CSS/Bootstrap/JavaScript for the frontend, and MySQL for data storage.


2. Objective

To design and develop a centralized web-based rental marketplace that enables users to discover, compare, and book multiple categories of rental products and stays—including electronics, furniture, cars, event venues/equipment, and hostels—through categorized listings, availability information, rental periods, AI-based personalized recommendations, an integrated Rentify Credits wallet for adding funds and paying for rentals, and an easy-to-use online interface.


3. Problem Description

Rental services are often fragmented across physical rental shops and separate online platforms. Customers looking for furniture or electronics may need to visit different shops, while car rentals, event equipment, and hostel accommodations are commonly searched through separate services. This makes it difficult to compare available options, prices, rental periods, and availability from one place. Physical rental processes can also involve limited visibility of stock, inconsistent information, additional effort for customers, and payment that is handled separately for every transaction.


Rentify addresses this problem by providing a centralized rental marketplace where different categories can be browsed from a single platform. Users can search and filter listings, view rental information, check availability, receive AI recommendations tailored to their preferences, select appropriate rental or booking dates, and submit rental requests. Payments are simplified through Rentify Credits: users add funds to their wallet once from their bank account or card, and the equivalent balance in credits can then be used to pay for any rental or booking without re-entering payment details each time. The system also provides administrative management of listings, inventory, availability, bookings, and wallet transactions.


4. Target Industry

Consumer (Home Users) / E-commerce / Automotive / Event Planning / Real Estate & Tourism / Rental Services


5. Methodology

Rentify will be developed using the Python FastAPI framework for the backend with a modular structure separating authentication, listings, rentals/bookings, the Rentify Credits wallet, AI recommendations, and administration. The frontend will use HTML, CSS, Bootstrap, and JavaScript. Communication between the frontend and backend will be handled through REST APIs with interactive documentation via FastAPI Swagger UI. MySQL will be used for persistent data storage, with direct database connectivity through MySQL Connector or PyMySQL and parameterized SQL queries rather than an ORM.


User authentication will use token-based/session authentication with securely hashed passwords. Wallet top-ups will be processed through a sandbox/test-mode payment gateway, with the resulting balance stored and updated server-side as Rentify Credits so that all rental payments are deducted from this internal balance. An AI recommendation module will analyze user booking history and browsing preferences to suggest relevant rentals. The project will follow an incremental development approach divided across FYP-I and FYP-II milestones. Testing will be performed during development, and Git/GitHub will be used for version control.


6. Project Scope

The scope of Rentify includes user registration and login; categorized listings for home/furniture, electronics, car rentals, event venues/equipment, and hostel/stay properties; search and filtering; availability information; rental or booking period selection; AI-driven item recommendations; cart or booking functionality; rental/booking date records; price calculation; a Rentify Credits wallet that lets users add funds from their bank account or card and receive an equivalent balance in in-app credits, view their wallet balance and top-up/transaction history, and pay for rentals and bookings using those credits; refundable security deposits where applicable, deducted from and refunded to the wallet; user rental/booking history; and an admin panel for managing listings, inventory, availability, bookings, and wallet transaction records.


Beyond the wallet top-up flow and AI recommendation module, full third-party Airbnb API integration, direct card-based checkout for individual rentals, delivery and logistics management, and a native mobile application are outside the scope of the project and may be considered as future enhancements.


7. Tools/Technology

Category | Tool / Technology

Programming Language | Python 3

Web Framework | FastAPI

API Architecture | REST APIs (with Swagger / OpenAPI Docs)

Database | MySQL

Database Connectivity | PyMySQL / MySQL Connector Python

AI / Recommendation Module | Python (Scikit-Learn / Pandas for collaborative filtering/content-based recommendations)

Frontend | HTML, CSS, Bootstrap, JavaScript

Payment Gateway (Wallet Top-up) | Sandbox/test-mode payment API (e.g., Stripe Test Mode, JazzCash/EasyPaisa sandbox)

IDE | Visual Studio Code

Version Control | Git / GitHub

Testing | Pytest


8. Milestones


8.1 FYP-I Features (Core Platform + Furniture, Electronics, Car Rental, & Events)

• Requirements gathering and finalization of functional and non-functional requirements.

• System design including use case diagram, ER diagram, and overall system architecture.

• MySQL database schema design and implementation.

• User registration, login, authentication (JWT/Passlib), and user management.

• Home/Furniture and Electronics listing modules.

• Car Rental module with duration, specs, and availability tracking.

• Event Rental module (Event venues, equipment, lighting, and party rentals).

• Basic categorized browsing, listing details, filtering, and FastAPI REST API structure.

• Initial frontend web interface using HTML, CSS, Bootstrap, and JavaScript.


8.2 FYP-II Features (Hostel Stays, AI Recommendations, Wallet & Admin)

• Hostel & Short-Term Stays module with room/bed availability and check-in/check-out date management.

• AI Recommendation Engine: Personalized rental suggestions based on user rental history and category preferences using content-based / collaborative filtering.

• Advanced multi-category search, filtering, and date-overlap availability checking.

• Rentify Credits Wallet: Users add funds from bank/card (sandbox mode) to receive in-app credits.

• Wallet balance display along with top-up history and transaction logging for each user.

• Cart/booking flow and rental/booking request placement, with payment deducted directly from Rentify Credits balance.

• Price calculation and refundable deposit handling (credited back upon rental completion).

• User rental/booking history and tracking.

• Comprehensive Admin Dashboard for managing listings, inventory, availability, bookings, AI metrics, and wallet transactions.

• System integration, unit testing with Pytest, documentation, deployment, and final presentation.
