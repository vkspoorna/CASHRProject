<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
< HEAD
<title>Department Details</title>

<title>Insert title here</title>



 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" 
	    src="https://public.tableau.com/javascripts/api/tableau-2.min.js"></script>
    <script type="text/javascript">
        function initViz() {
            var containerDiv = document.getElementById("vizContainer"),
                url = "https://public.tableau.com/views/Average_sal_dept_dashboard/Dashboard1?:embed=y&:display_count=yes",
                options = {
                    hideTabs: true,
					
                    onFirstInteractive: function () {
                        console.log("Run this code when the viz has finished loading.");
                    }
                };
            
            var viz = new tableau.Viz(containerDiv, url, options); 
            // Create a viz object and embed it in the container div.
        }
		$(initViz);
    </script>
    


</head>
<body>

</body>
</html>
