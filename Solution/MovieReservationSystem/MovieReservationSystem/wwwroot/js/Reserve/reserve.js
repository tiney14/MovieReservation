function reserveSeat(id,floor,number,isAvailable) {

    var label = $('#ReserveSeat');
    if (label.text() == "") {
        $("#ReserveSeat").text(floor + number);
    }
    else {
        $("#ReserveSeat").text(label.text() + ", " + floor + number);
    }

    if ($('#' + floor + number).hasClass('btn-success')) {
        $("#" + floor + number).removeClass('btn-success').addClass('btn-danger');
        isAvailable = false;
    }
    else {
        $("#" + floor + number).removeClass('btn-danger').addClass('btn-success');
        isAvailable = true;
        $("#ReserveSeat").text().replace(floor + number, '');
    }

    $.ajax({
        cache: false,
        method: "post",
        url: urlString,
        data: { 'id': id, 'isavailable': isAvailable , 'floor' : floor, 'number': number},
        success: function (data) {

        }
    });

}

function movieChange() {
    var a = $('#movie').val();
    $("#divSeat").html("");
    $("#stage").attr("style", "none");
    if (a != 0) {
        var select = document.getElementById("timeSlot");
        $('#timeSlot').prop('disabled', false);
        $("#timeSlot").empty();

        var el = document.createElement("option");
        el.textContent ="Select Time";
        el.value = "0";
        select.appendChild(el);

        $.ajax({
            cache: false,
            method: "post",
            url: timeSlotUrlString,
            data: { 'id': a},
            success: function (data) {
                
                for (var i = 0; i < data.length; i++) {
                    var opt = data[i];
                    var el = document.createElement("option");
                    el.textContent = opt.movieTime;
                    el.value = opt.id;
                    select.appendChild(el);
                }
            }
        });  
    }
}

function timeChange() {
    var movieId = $('#movie').val();
    var timeId = $('#timeSlot').val();
    $("#divSeat").html("");
    $("#stage").attr("style", "none");
    if (timeId != 0) {
        $.ajax({
            cache: false,
            method: "post",
            url: seatSlotUrlString,
            data: { 'id': movieId, 'timeSlotId': timeId},
            success: function (data) {
                var divSeat = document.getElementById('divSeat');
                var floorA="", floorB="", floorC="";
                var div = document.createElement('div');
                //div.className = 'row col-12 offset-3';
                for (var i = 0; i < data.length; i++) {
                    var seat = data[i];
                    
                    if (seat.seatFloor == "A") {
                        if (seat.seatNumber == "3") {
                            floorA += '<label style = "text-align:center;" >' + seat.seatFloor + ' </label >';
                            if (seat.isAvailable) {
                                floorA += '<a onclick="return reserveSeat(&quot;' + seat.id + '&quot;,&quot;' + seat.seatFloor + '&quot;,&quot;' + seat.seatNumber + '&quot;,&quot;' + seat.isAvailable + '&quot;);" class="btn btn-success text-white"  id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                            else {
                                floorA += '<a class="btn btn-danger text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                        }
                        else {
                            if (seat.isAvailable) {
                                floorA += '<a onclick="return reserveSeat(&quot;' + seat.id + '&quot;,&quot;' + seat.seatFloor + '&quot;,&quot;' + seat.seatNumber + '&quot;,&quot;' + seat.isAvailable + '&quot;);" class="btn btn-success text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                            else {
                                floorA += '<a  class="btn btn-danger text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                        } 
                    }

                    if (seat.seatFloor == "B") {
                        if (seat.seatNumber == "5") {
                            floorB += '<label style = "text-align:center;" >' + seat.seatFloor + ' </label >';
                            if (seat.isAvailable) {
                                floorB += '<a onclick="return reserveSeat(&quot;' + seat.id + '&quot;,&quot;' + seat.seatFloor + '&quot;,&quot;' + seat.seatNumber + '&quot;,&quot;' + seat.isAvailable + '&quot;);" class="btn btn-success text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                            else {
                                floorB += '<a  class="btn btn-danger text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                        }
                        else {
                            if (seat.isAvailable) {
                                floorB += '<a onclick="return reserveSeat(&quot;' + seat.id + '&quot;,&quot;' + seat.seatFloor + '&quot;,&quot;' + seat.seatNumber + '&quot;,&quot;' + seat.isAvailable + '&quot;);" class="btn btn-success text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                            else {
                                floorB += '<a  class="btn btn-danger text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                        }
                    }

                    if (seat.seatFloor == "C") {
                        if (seat.seatNumber == "5") {
                            floorC += '<label style = "text-align:center;" >' + seat.seatFloor + ' </label >';
                            if (seat.isAvailable) {
                                floorC += '<a onclick="return reserveSeat(&quot;' + seat.id + '&quot;,&quot;' + seat.seatFloor + '&quot;,&quot;' + seat.seatNumber + '&quot;,&quot;' + seat.isAvailable + '&quot;);" class="btn btn-success text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                            else {
                                floorC += '<a  class="btn btn-danger text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                        }
                        else {
                            if (seat.isAvailable) {
                                floorC += '<a onclick="return reserveSeat(&quot;' + seat.id + '&quot;,&quot;' + seat.seatFloor + '&quot;,&quot;' + seat.seatNumber + '&quot;,&quot;' + seat.isAvailable + '&quot;);" class="btn btn-success text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                            else {
                                floorC += '<a onclick="return reserveSeat(&quot;' + seat.id + '&quot;,&quot;' + seat.seatFloor + '&quot;,&quot;' + seat.seatNumber + '&quot;,&quot;' + seat.isAvailable + '&quot;);" class="btn btn-danger text-white" id="' + seat.seatFloor + seat.seatNumber + '"> ' + seat.seatFloor + seat.seatNumber + '</a>';
                            }
                        }
                    }
                    
                }
                div.innerHTML = "<div class='row col-8 offset-4'>" + floorA + "</div><br />" +
                    "<div class='row col-8 offset-3' >" + floorB + "</div><br />" +
                    "<div class='row col-8 offset-3' >" + floorC + "</div><br />" ;
                divSeat.appendChild(div);
                
                $("#stage").attr("style","block");

            }
        });
    }

}