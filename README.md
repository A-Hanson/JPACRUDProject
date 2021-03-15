# JPACRUDProject
## A full-stack Spring Boot application using a MySQL database
<img src="http://clipart-library.com/data_images/36001.jpg" alt="paperwork with magnifying glass"/>

### Description
This is an application that will allows a users to perform CRUD (create, read, update, and delete) on information about IRS previous year forms from a database. This application adheres to the MVC pattern to ensure seperation of concerns.
The application deployed on an AWS EC2 instance on (3/15). 
<a href="http://3.13.173.184:8080/BootIRSCrud/">Link to site</a>

---

### Technologies Used
* Spring Tool Suite 4 - IDE optimized for working with Spring enabled projects.
* JDBC - using Object Relational Maping (ORM) class entities were created for each of the tables being interacted with. Each of those classes matched the database column name to the Java object field name. 
* Gradle - Used to manage the project dependencies.
* JavaServer Pages (JSPs) - Used to create dynamic content to be displayed to the user based on the objects created by their queries. The DispatcherServlet handled the routing to our Controller, which supplied details of methods being called and adding objects to the model.
* JSTL - The core tag library was used in conjection with JSP Expression language to utilize the JavaBean properties when displaying specific aspects of the objects.

---

### How to Run

Run as Spring Boot App from the BootIRSCrud folder. Will spin up on Localhost:8081

---

### Lessons Learned
When I was initially writing the interaction to update objects, I was only having to option from the page displaying the assigned object value within the model. Then I passed this value through my controller to the DAOImplementation, where I was getting a null pointer error. With help, I realized that I had forgotten to explicitly pass along the current objects primary key in a hidden method. To fix this we added a hidden input type for the Controller to use in order to make a bean of that exact reference to be passed to the DAO for the update method. Once we solved this, then the DAOImplementation was able to successfully update that specific object.