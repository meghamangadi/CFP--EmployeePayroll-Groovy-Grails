<!DOCTYPE html>
<html>
<head>
    <title>Create Employee Payroll</title>
    <g:if env="development"><asset:stylesheet src="create.css"/></g:if>
</head>


<body>
<h1> Employee Payroll</h1>
<g:form resource="${this.employee}" method="POST">

    <div > <span class="attributes">  FullName: </span>  <span class="fields"><g:textField class="name" name="name" /></span> </div>
    <br />
    <div ><span class="nameattribute">ProfileImage: </span> <span class="pifield"> <g:radio name="profile" value="Ellipse -1.png" class="radio"/><g:img dir="images" file="Ellipse -1.png" width="40" height="40"/>
    <g:radio name="profile" value="Ellipse -2.png" /><g:img dir="images" file="Ellipse -2.png" width="40" height="40"/>
    <g:radio name="profile" value="Ellipse -3.png"/><g:img dir="images" file="Ellipse -3.png" width="40" height="40"/>
        <g:radio name="profile" value="Ellipse -4.png" /><g:img dir="images" file="Ellipse -4.png" width="40" height="40"/></span></div >
    <br />
    <div >  <span class="attributes">  Gender : </span> <span class="gfields"> <g:radio name="gender" value="Male" /> Male <g:radio name="gender" value="Female" /> Female </span> </div> <br />
    <div >  <span class="attributes"> Departments :  </span> <span class="dfields">  <g:checkBox name="departments" value="Enginner"  checked="true"/> Engineer <g:checkBox name="departments" value="HR" /> HR <g:checkBox name="departments" value="Sales" /> Sales <g:checkBox name="departments" value="Finance" /> Finance </span></div> <br />
    <div > <span class="attributes"> Salary :</span> <span class="sfields"> <g:field type="number" name="salary" min="10000" max="1000000" /> </span> </div> <br />
    <div >  <span class="attributes">StartDate : </span> <span class="datefields">  <g:datePicker name="startDate" value="${new Date()}"
                                                                                                  precision="day" years="${1980..2022}"/> </span></div> <br />
    <g:submitButton name="create" class="button" value="${message(code: 'default.button.create.label', default: 'Create')}" />

</g:form>
</div>
</body>
</html>
