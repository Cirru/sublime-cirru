
fs = require "fs"
name = "Cirru.plist"
fs.watchFile name, interval: 100, ->
  fs.readFile name, "utf8", (err, content) ->
    fs.writeFile "Cirru.tmLanguage", content

name2 = "Color.plist"
fs.watchFile name2, interval: 100, ->
  fs.readFile name2, "utf8", (err, content) ->
    fs.writeFile "Color.tmTheme", content