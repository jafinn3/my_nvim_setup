call textobj#user#plugin('svlblock', {
\ 'beginend': {
\     'pattern': ['begin\n', '\n\s*end'],
\     'select-a': 'abe',
\     'select-i': 'ibe'
\ }
\})

call textobj#user#plugin('commentblock', {
\ 'std': {
\     'pattern': ['/\*', '\*/'],
\     'select-a': 'a/',
\     'select-i': 'i/'
\ }
\})
