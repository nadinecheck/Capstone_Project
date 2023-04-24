<%@page import= "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
body {
    background-color: #fff; /* Set background color to white */
    margin:0 auto;
    padding: 0 auto ;
}

header {
    background-color: #1a202c; /* Set header color to blue */
    color: #fff; /* Set text color to white */
    padding: 20px;
    text-align: center;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    display: flex; /* Display the child elements as a flex container */
    flex-wrap: wrap; /* Allow child elements to wrap to a new line if necessary */
    justify-content: space-between; /* Add space between child elements */
}
.container > div {
    width: 200px; /* Set width of each child element */
    margin-bottom: 20px;
    text-align: center;
    
    .container img {
    width: 1000px; /* Set width of each image */
    height: 1000px; /* Set height of each image */
    border-radius: 50%; /* Make the images round */
}

</style>
        
        <title>Tutors</title>
    </head>
    
    
    <body>
        <header>
         <h1>Meet Your Tutors</h1>
      </header>
        <div class="container">
<%
// Import JDBC packages
try  { 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zest", "root", "admin");

Statement stmt = con.createStatement();

// Execute SQL query to retrieve all tutors from the database
ResultSet rs = stmt.executeQuery("SELECT tutorFirstName, tutorLastName FROM tutors;");

// Loop through the result set and display each tutor's name
while (rs.next()) {
    String name = rs.getString("tutorFirstName");
   
%>
    <div>
        <img src="avatar3.png" alt="Avatar" width= "100" height = "150">
        <p><%= name %></p>
        <button class="book-now-btn">Book a Session</button>
        
    </div>
  <%
                    }//end while loop
                    //
                    con.close();
                    }catch(Exception e){
                     out.println(e);
}//

                    %>
   </div> 
   
   <br>

        <!-- Footer -->
        <footer class="w3-container w3-theme-d3 w3-padding-16">
            <h5>Footer</h5>
        </footer>

        <footer class="w3-container w3-theme-d5">
            <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
        </footer>
        
        <script>
// Add an event listener to each tutor name element
document.querySelectorAll('name').forEach(function(element) {
    element.addEventListener('click', function() {
        // Toggle the 'tutor-info' class for the selected tutor
        element.nextElementSibling.classList.toggle('Tutor Profile');
    });
});
</script>
    </body>
</html>
