<!DOCTYPE html>
<html>
<head>
<title>Go simple CV Web</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>

<div class="container">
  <div class="row" style="margin-top: 50px;">
    <form action="/" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <select class="form-control" name="convert_type">
                <option value="convert-gray">Convert to gray</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleFormControlFile1">Upload file</label>
            <input onchange="readURL(this);" accept="image/gif, image/jpeg, image/png" type="file" 
              name="upload_file" class="form-control-file" id="exampleFormControlFile1">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
  </div>
  <div style="margin-top: 50px;">
    <h3>Selected file:</h3>
    <img id="blah" src="#" alt="your image" onerror="this.onerror=null; this.src='/static/img/img-not-found.png'" />
  </div>
  <div style="margin-top: 50px;">
    <h3>Single thread result: </h3>
    <img src="#" onerror="this.onerror=null; this.src='/static/img/img-not-found.png'" />
  </div>
  <div style="margin-top: 50px;">
    <h3>Multiple threads result: </h3>
    <img src="#" onerror="this.onerror=null; this.src='/static/img/img-not-found.png'" />
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="/static/js/script.js"></script>
</body>
</html>