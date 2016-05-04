"use strict";

// module Hubot

exports.respond = function(robot) {
  return function(regexp) {
    return function(callback) {
      return function() {
        var test = new RegExp(regexp.pattern, regexp.flag);
        robot.respond(test, function(res) {
          callback(res)();
        });
      };
    };
  };
};

exports.match = function(res) {
  return function(index) {
    return function() {
      return res.match[index];
    };
  };
};

exports.send = function(res) {
  return function(msg) {
    return function() {
      res.send(msg);
    };
  };
};
