### create a json blob of lyrics by song, organized by album.
  ```{
    "No Label II": {
      "Fight Night": "Lyrics go here...",
      "Freak No More": "Lyrics go here..."
    }
  }```

### divining words
  - remove all non word characters (strip w/ regex)
  - remove all articles and common words
  - the first time the word occurs, create a json key
    - check if word exists in map
      -  if no: create, count = 1
      -  if yes: increment count += 1
  -
