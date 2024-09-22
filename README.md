[README.md](https://github.com/user-attachments/files/17090284/README.md)
# QuanLyBanSach - Bookstore Management System

### Overview
QuanLyBanSach is a comprehensive Bookstore Management System designed to streamline the management of books, customers, and sales. This system allows administrators to manage inventory, track customer purchases, and maintain sales records efficiently.

### Features
- **Book Management:** Add, edit, and delete books with relevant details like title, author, category, and price.
- **Customer Management:** Keep track of customer information including name, contact details, and purchase history.
- **Sales Management:** Manage and record sales transactions and generate reports for daily, monthly, or yearly sales.
- **Search Functionality:** Quickly search for books by title, author, or category.
- **Inventory Monitoring:** Monitor stock levels and receive notifications when books are running low.
  
### Technology Stack
- **Backend:** [Backend technology/framework being used, e.g., Java, Spring Boot, Node.js, etc.]
- **Frontend:** [Frontend technology, e.g., HTML/CSS, JavaScript, Angular, React, etc.]
- **Database:** [Database used, e.g., MySQL, PostgreSQL, MongoDB]
- **Tools:** [Tools or libraries, e.g., Maven, npm, etc.]

### Requirements
- [Programming language version, e.g., Java 17+]
- [Framework version, e.g., Spring Boot 2.5+]
- [Database version, e.g., MySQL 8.0+]
- [Other dependencies, e.g., Maven 3.6+, npm]

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/bthope/QuanLyBanSach.git
   ```
2. Navigate to the project directory:
   ```bash
   cd QuanLyBanSach
   ```
3. Set up the database (e.g., MySQL):
   - Create a new database called `bookstore_db`.
   - Update the database connection details in the configuration file (e.g., `application.properties` for Java-based projects).
   - Run the database migrations or import the provided schema.

4. Build and run the application:
   - For Java projects:
     ```bash
     mvn clean install
     mvn spring-boot:run
     ```

5. Access the application at:
   ```
   http://localhost:8080
   ```

### Usage
- **Admin login:** Use the default admin credentials to log in and manage the bookstore.
- **Customer:** Search and browse available books, view details, and make purchases.

### Contributing
Contributions are welcome! Feel free to open a pull request or issue if you encounter any problems or have suggestions for improvement.

### License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

