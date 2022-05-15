# Steps
1. `scenedetect --input "<videofile-path>" --stats stats.csv detect-content --threshold 0.3 list-scenes`
2. Stelle finden, wo ein sehr minimale Änderung auf der im Video eintritt, was aber noch ein Folienwechsel ist und in der `<stats.csv>`-Datei an der Stelle dieses Frames auf den `content_val` Wert schauen. Man sollte `treshold` so wählen, dass dieser unter `content_val` liegt
>- in `sc-im` lässt sich mittels `gt<column><line>` schnell eine `line` in der Nähe des gewollten Frames ansteuern
>- wenn man noch `save-images` anhängt werden automatisch Bilder generiert
>- wenn man nach `--input` noch `--output <dir>` anhängt werden alle Outputdateien in `<dir>` abgespeichert

# Resources
- http://www.scenedetect.com/en/latest/examples/usage/
- http://www.scenedetect.com/en/latest/examples/usage-example/
