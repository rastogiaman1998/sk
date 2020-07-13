
   <?php 

include_once("./sections/heading.php");
getSectionHeading("SERVICE REQUEST"); 
?>

<div class="container" style="margin-bottom:50px;">
    <div class="row card">

        <div class="col-lg-12">
            <br/>
            <div class="alert alert-primary">
            
            <ul>
                    <li>Please fill this form and describe the issue</li>
                    <li>Once we recieve information, our agents will call you to understand problem</li>
                    <li> We will resolve issue as soon as possible</li>
            </ul>   
            </div>
            <form class="form">

            <div class="form-group">
            
            <select id="product" name="product">
                <option selected>Select...</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
            </div>

            <div class="form-group">
            <label>Mobile Number</label><br/>
                <input type="text"></input>
            </div>

            <div class="form-group">
            <label>Email Id</label><br/>
                <input type="text"></input>
            </div>

            <div class="form-group">
                <label>Describe Issue</label><br/>
                <textarea></textarea>
            </div>

            <button type="submit" class="btn btn-outline-danger">Submit</button>
            </form>

</div>
</div>
