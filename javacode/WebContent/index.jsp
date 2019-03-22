<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://bootswatch.com/_assets/css/custom.min.css">
<title>Form</title>
</head>
<body>

	<%!String driverName = "com.mysql.jdbc.Driver";%>
	<%!String url = "jdbc:mysql://localhost/lundegaard";%>
	<%!String userName = "dbmuhammed";%>
	<%!String password = "dbpassword";%>
	<%
		Connection con = null;
		PreparedStatement ps = null;
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, userName, password);
			String sql = "SELECT * FROM menu";
			ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
	%>
	<div class="container">
		<div class="bs-docs-section">
			<div class="bs-component">
				<div class="jumbotron">
					<h1 align="center">
						<label class="control-label">Contact Us</label>
					</h1>

					<div class="bs-component">
						<fieldset>
							<legend>
								<label class="control-label">Kind Of Request</label>
							</legend>
							<form action="SaveData" method="post">
								<div class="form-group">
									<select class="form-control" name="reqChooice">

										<%
											while (rs.next()) {
													String menuSelectData = rs.getString("head");
										%>
										<option value="<%=menuSelectData%>"><%=menuSelectData%></option>
										<%
											}
										%>

										<%
											} catch (SQLException sqe) {
												out.println(sqe);
											} finally {

												try {
													con.close();
												} catch (SQLException e) {
													// TODO Auto-generated catch block
													e.printStackTrace();
												}

											}
										%>

									</select>
								</div>
								<div class="form-group">
									<label class="control-label">Policy Number</label> 
									<input class="form-control" type="text" name="policyNum" min="1" pattern="[A-Za-z0-9]+" title="only allow alfanumeric characters" required></input>
								</div>
								<div class="form-group">
									<label class="control-label">Name</label> 
									<input class="form-control" type="text" name="nameV" pattern="^[A-Za-z]+$" title="only allow characters" required></input>
								</div>
								<div class="form-group">
									<label class="control-label">Surname</label> 
									<input class="form-control" type="text" name="surnameV" pattern="^[A-Za-z]+$" title="only allow characters" required></input>
								</div>

								<label class="control-label">Your Request</label>
								<textarea class="form-control" required rows="4" cols="50" name="requestMes" minlength="10" maxlength="150"></textarea>
								<br>
								<button type="submit" value="Submit" class="btn btn-primary">SEND REQUEST</button>

							</form>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>



