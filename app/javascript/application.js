// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import consumer from "./consumer"

$(document).on('turbolinks:load', function() {
  const chatroomContainer = document.getElementById('chatroom-container')
  if (chatroomContainer) {
    const chatroomId = chatroomContainer.dataset.chatroomId
    consumer.subscriptions.create({ channel: 'ChatroomsChannel', chatroom_id: chatroomId }, {
      received(data) {
        if (data.chatroom_id == chatroomId) {
          $('#messages-container').append(data.message);
        }
      }
    });
  }
});
