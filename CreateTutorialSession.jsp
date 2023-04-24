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
	<link rel="stylesheet" type="text/css" href="style.css">
        <title>Create a New Tutorial Session</title>
        <style> 
            .container {
    width: 80%;
    margin: 0 auto;
    text-align: center;
    padding: 20px;
}

header {
    background-color: lightsteelblue; /* Set header color to blue */
    color: #fff; /* Set text color to white */
    padding: 20px;
    text-align: center;
}
h1 {
    color: #333;
    font-size: 36px;
}

label {
    display: inline-block;
    width: 150px;
    text-align: right;
    margin-right: 10px;
    font-size: 18px;
    color: #333;
}

input[type="text"], input[type="date"], input[type="time"] {
    width: 300px;
    padding: 10px;
    font-size: 18px;
    border: 2px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="submit"] {
    width: 150px;
    padding: 10px;
    background-color: lightsteelblue;
    color: #333;
    font-size: 18px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #ccc;
}
        </style>
    </head>
    <body>
      
             <header>
                 <h1>Create a New Session</h1>
                </header>
                
                <div class="container">
		<form method="post" action="create_session.jsp">
			<label for="tutorName">Name:</label>
			<input type="text" id="tutorName" name="tutorName" required>
			<br><br>
                        <label for="dateCreated">Date of Today:</label>
			<input type="date" id="dateCreated" name="dateCreated" required>
			<br><br>
			<label for="scheduledFor">Date of Session:</label>
			<input type="date" id="scheduledFor" name="scheduledFor" required>
			<br><br>
			<label for="startTime">Start Time:</label>
			<input type="time" id="startTime" name="startTime" required>
			<br><br>
			<label for="endTime">End Time:</label>
			<input type="time" id="endTime" name="endTime" required>
			<br><br>
                        <label for="status">status:</label>
			<input type="text" id="status" name="status" required>
                        <br><br>
			<input type="submit" value="Create Session">
                  
		</form>
                    
                    
	</div>
        
      <%
        String tutorName = request.getParameter("tutorName");
        String dateCreated = request.getParameter("dateCreated");
        String scheduledFor = request.getParameter("scheduledFor");
        String startTime = request.getParameter("startTime");
       String endTime = request.getParameter("endTime");
       String status = request.getParameter("status");
   
            // Insert the session information into the database
            //Use a try/catch block to catch any database exceptions
            try {
                //Create a connection to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/zest", "root", "admin");

                // Get the session information from the form
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO tutorialsessions(tutorName, dateCreated, scheduledFor, startTime, endTime, status) "
                + "VALUES (?, ?, ?, ?, ?, ?)");
pstmt.setString(1, tutorName);
pstmt.setString(2, dateCreated);
pstmt.setString(3, scheduledFor);
pstmt.setString(4, startTime);
pstmt.setString(5, endTime);
pstmt.setString(6, status);
    //Execute the PreparedStatement and close the connection:
            pstmt.executeUpdate();
            con.close();
            
           %>
         <%
                  
                    con.close();
                    }catch(Exception e){
                     out.println(e);
}//

                    %>   
           
        
        <br>

        <!-- Footer -->
        <footer class="w3-container w3-theme-d3 w3-padding-16">
            <h5>Footer</h5>
        </footer>

        <footer class="w3-container w3-theme-d5">
            <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
        </footer>
        
    </body>
</html>
