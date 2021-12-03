import consumer from "./consumer";
var counter = 0;
consumer.subscriptions.create("RoomChannel", {
    connected() {
        // Called when the subscription is ready for use on the server
    },

    disconnected() {
        // Called when the subscription has been terminated by the server
    },

    received(data) {
        if (data.content != "") {
            // console.log(data);
            $("#messages-table").append(
                '<div class="message">' +
                '<div class="message-user">' +
                data.username +
                ":" +
                "</div>" +
                '<div class="message-content">' +
                data.content +
                "</div>" +
                "<button id='message" +
                counter +
                "' type='button' onclick='dismiss(this.id)'>Dismiss</button>" +
                "</div>"
            );
        }
        counter = counter + 1;
    },
});