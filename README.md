- `scenedetect --input "<videofile-path>" --stats stats.csv detect-content --threshold 0.3 list-scenes`
- Stelle finden, wo ein sehr minimale Änderung auf der im Video eintritt, was aber noch ein Folienwechsel ist und in der `<stats.csv>`-Datei an der Stelle dieses Frames auf den `content_val` Wert schauen. Man sollte `treshold` so wählen, da dieser unter `content_val` liegt
> in `sc-im` lässt sich mittels `gt<column><line>` schnell eine `line` in der Nähe des gewollten Frames ansteuern
