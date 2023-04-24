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
        <style>
        .container {
    width: 80%;
    margin: 0 auto;
    text-align: center;
    padding: 20px;
}

header {
    background-color: #1a202c; /* Set header color to blue */
    color: #fff; /* Set text color to white */
    padding: 20px;
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}
th, td {
    padding: 10px;
    text-align: center;
    border: 2px solid #ccc;
}

th {
    background-color: #1a202c;
    color: #fff;
    font-size
    </style>
        <title>Tutorial Sessions</title>
    </head>
    <body>
        <header>
        <h1>Tutorial Sessions</h1>
        </header>
        <div class="container">
	
		<table>
			<tr>
				<th>Date</th>
				<th>Start Time</th>
				<th>End Time</th>
				<th>Action</th>
			</tr>
                    
			<%
// Import JDBC packages
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zest", "root", "admin");

Statement stmt = con.createStatement();

// Execute SQL query to retrieve all sessions from the database
ResultSet rs = stmt.executeQuery("SELECT * FROM tutorialsessions");
				// Get the tutor's name from the previous page
				String tutorName = request.getParameter("tutorID");
			
				// Display each session in a table row
				while(rs.next()) {
					String sessionID= rs.getString("sessionID");
					String scheduledFor = rs.getString("scheduledFor");
					String startTime = rs.getString("startTime");
					String endTime = rs.getString("endTime");
					%>
					<tr>
						<td><%= scheduledFor %></td>
						<td><%= startTime %></td>
						<td><%= endTime %></td>
					        <td><%= sessionID %>">Book Now</td>
					</tr>
				<%
                    }//end while loop
                    //
                    con.close();
                    }catch(Exception e){
                     out.println(e);
}//

                    %>
		</table>
	</div>
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
