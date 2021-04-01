function getAllBows() {
    // console.log("made it to the home.js getALLBows function");
    $.ajax({
        url: "/allbows",
        type: 'GET',
        dataType: 'json',
        success: function (data) {
            // console.log("Back from the server with: " + data.list);
            product = "";
            $.each(data.list, function (index, value) {
                product += "<div class='list-group'>";
                product += "<li class='list-group-item list-group-item-action flex-column align-items-start'>";
                product += "<div class='d-flex w-100 justify-content-between'>";
                product += "<h5 class='mb-1'>" + this.name + "</h5>";
                product += "<small>Level: " + this.level + "</small>";
                product += "</div>";
                imagename = this.name;
                imagetrimed = imagename.replace(/ /g, '');
                // console.log("this is the name trimmed of spaces" + imagetrimed);
                product += "<img src='images/" + imagetrimed + ".png' alt='" + this.name + "'></img>";
                product += "<p class='mb-1'>Mass Weight: " + this.massweight + "</p>";
                product += "<p class='mb-1'>Axle 2 Axle: " + this.axle2axle + "</p>";
                product += "<p class='mb-1'>Draw Weight: " + this.drawweight + "</p>";
                product += "<p class='mb-1'>Draw Length: " + this.drawlength + "</p>";
                product += "<p class='mb-1'>Speed: " + this.speed + "</p>";
                product += "<p class='mb-1'>Color: " + this.color + "</p>";
                product += "<div class='d-flex w-100 justify-content-between'>";
                product += "<small>Manufacturer: <a href='" + this.url + "' target='_blank'>" + this.url + "</a></small>";
                // product += "<button class='btn btn-dark' onclick=save(" + this.name + ")>Save Bow to Favorites</button>";
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
    // console.log("made it to the searchBows() function in the home.js");
    data = {};
    const bowtype = $('#bowtype').attr('name');
    const type = $('#bowtype').val();
    data[bowtype] = type;
    // console.log("This is the bowtype " + data[bowtype]);

    $.ajax({
        url: '/search',
        type: 'Post',
        dataType: 'json',
        data: data,
        success: (data) => {
            // console.log('ajax success!', data);
            product = "";
            $.each(data, function (index, value) {
                product += "<div class='list-group'>";
                product += "<li class='list-group-item list-group-item-action flex-column align-items-start'>";
                product += "<div class='d-flex w-100 justify-content-between'>";
                product += "<h5 class='mb-1'>" + this.name + "</h5>";
                product += "<small>Level: " + this.level + "</small>";
                product += "</div>";
                imagename = this.name;
                imagetrimed = imagename.replace(/ /g, '');
                // console.log("this is the name trimmed of spaces" + imagetrimed);
                product += "<img src='images/" + imagetrimed + ".png' alt='" + this.name + "'></img>";
                product += "<p class='mb-1'>Mass Weight: " + this.massweight + "</p>";
                product += "<p class='mb-1'>Axle 2 Axle: " + this.axle2axle + "</p>";
                product += "<p class='mb-1'>Draw Weight: " + this.drawweight + "</p>";
                product += "<p class='mb-1'>Draw Length: " + this.drawlength + "</p>";
                product += "<p class='mb-1'>Speed: " + this.speed + "</p>";
                product += "<p class='mb-1'>Color: " + this.color + "</p>";
                product += "<div class='d-flex w-100 justify-content-between'>";
                product += "<small>Manufacturer: <a href='" + this.url + "' target='_blank'>" + this.url + "</a></small>";
                // id = this.id;
                // console.log(id);
                // product += "<button class='btn btn-dark' onclick=save(" + id + ")>Save Bow to Favorites</button>";
                // console.log(this.id + " is the bow id");
                product += "</div>";
                product += "</li>";
            });
            result = "";
            result = product;
            // console.log(result);
            $("#bowslist").html(result);
        }
    })
}

// function clear() {
//     console.log("made it to the clear function");
//     // result = " ";
//     let bowslist = document.getElementById("bowslist");
//     bowslist.innerHTML = "";
//     // $('#bowslist').html(result);
// }

function clearList() {
    console.log("into the dummy function that doesn't do anything");
    // let bowslist = document.getElementById("bowslist");
    // bowslist.innerHTML = "";
    result = " ";
    $('#bowslist').html(result);
}

// function save(bowid){
//     data = {};
//     console.log(bowid + " is the bowid");

//     $.ajax({
//         url: '/save',
//         type: 'Post',
//         dataType: 'json',
//         data: data,
//         success: (data) => {
//             // console.log('ajax success!', data);
//             product = "";
//         $.each(data, function (index, value) {
//             product += "<div class='list-group'>";
//             product += "<li class='list-group-item list-group-item-action flex-column align-items-start'>";
//             product += "<div class='d-flex w-100 justify-content-between'>";
//             product += "<h5 class='mb-1'>" + this.name + "</h5>";
//             product += "<small>Level: " + this.level + "</small>";
//             product += "</div>";
//             imagename = this.name;
//             imagetrimed = imagename.replace(/ /g, '');
//             // console.log("this is the name trimmed of spaces" + imagetrimed);
//             product += "<img src='../images/" + imagetrimed + ".png' alt='" + this.name + "'></img>";
//             product += "<p class='mb-1'>Mass Weight: " + this.massweight + "</p>";
//             product += "<p class='mb-1'>Axle 2 Axle: " + this.axle2axle + "</p>";
//             product += "<p class='mb-1'>Draw Weight: " + this.drawweight + "</p>";
//             product += "<p class='mb-1'>Draw Length: " + this.drawlength + "</p>";
//             product += "<p class='mb-1'>Speed: " + this.speed + "</p>";
//             product += "<p class='mb-1'>Color: " + this.color + "</p>";
//             product += "<div class='d-flex w-100 justify-content-between'>";
//             product += "<small>Manufacturer: " + this.url + "</small>";
//             id = this.id;
//             console.log(id);
//             product += "<button class='btn btn-dark' onclick=save(" + id + ")>Save Bow to Favorites</button>";
//             // console.log(this.id + " is the bow id");
//             product += "</div>";
//             product += "</li>";
//         });
//         result = "";
//         result = product;
//         // console.log(result);
//         $("#bowslist").html(result);
//         }
//     })

// }