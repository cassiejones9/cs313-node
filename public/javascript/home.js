
function getAllBows() {
    console.log("made it to the home.js getALLBows function");
    $.ajax({
        url: "/allbows",
        type: 'GET',
        dataType: 'json',
        success: function(data) {
        console.log("Back from the server with: " + data.list);
        product = "";
        $.each(data.list, function (index, value) {
            product += "<div class='list-group'>";
            product += "<li class='list-group-item list-group-item-action flex-column align-items-start'>";
            product += "<div class='d-flex w-100 justify-content-between'>";
            product += "<h5 class='mb-1'>" + this.name + "</h5>";
            product += "<small>Level: " + this.level + "</small>";
            product += "</div>";
            // product += "<img src='" + this.imgSrc + "' alt='" + this.name + "'></img>";
            product += "<p class='mb-1'>Mass Weight: " + this.massweight + "</p>";
            product += "<p class='mb-1'>Axle 2 Axle: " + this.axle2axle + "</p>";
            product += "<p class='mb-1'>Draw Weight: " + this.drawweight + "</p>";
            product += "<p class='mb-1'>Draw Length: " + this.drawlength + "</p>";
            product += "<p class='mb-1'>Speed: " + this.speed + "</p>";
            product += "<p class='mb-1'>Color: " + this.color + "</p>";
            product += "<div class='d-flex w-100 justify-content-between'>";
            product += "<small>Manufacturer: " + this.url + "</small>";
            product += "<button class='btn btn-dark' onclick=save(" + this.name + ")>Save Bow to Favorites</button>";
            product += "</div>";
            product += "</li>";
        });
        result = "";
        result = product;
        $("#bowslist").html(result);
    }
    })
}

function searchBows() {
    console.log("made it to the searchBows() function in the home.js");
    data = {};
    const bowtype = $('#bowtype').attr('name');
    const type = $('#bowtype').val();
    data[bowtype] = type;
    console.log("This is the bowtype" + data[bowtype]);

    $.ajax({
        url: '/search',
        type: 'Post',
        dataType: 'json',
        data: data,
        success: (data) => {
            console.log('ajax success!', data);
            product = "";
        $.each(data.list, function (index, value) {
            product += "<div class='list-group'>";
            product += "<li class='list-group-item list-group-item-action flex-column align-items-start'>";
            product += "<div class='d-flex w-100 justify-content-between'>";
            product += "<h5 class='mb-1'>" + this.name + "</h5>";
            product += "<small>Level: " + this.level + "</small>";
            product += "</div>";
            // product += "<img src='" + this.imgSrc + "' alt='" + this.name + "'></img>";
            product += "<p class='mb-1'>Mass Weight: " + this.massweight + "</p>";
            product += "<p class='mb-1'>Axle 2 Axle: " + this.axle2axle + "</p>";
            product += "<p class='mb-1'>Draw Weight: " + this.drawweight + "</p>";
            product += "<p class='mb-1'>Draw Length: " + this.drawlength + "</p>";
            product += "<p class='mb-1'>Speed: " + this.speed + "</p>";
            product += "<p class='mb-1'>Color: " + this.color + "</p>";
            product += "<div class='d-flex w-100 justify-content-between'>";
            product += "<small>Manufacturer: " + this.url + "</small>";
            product += "<button class='btn btn-dark' onclick=save(" + this.name + ")>Save Bow to Favorites</button>";
            product += "</div>";
            product += "</li>";
        });
        result = "";
        result = product;
        $("#bowslist").html(result);
        }
    })
}