Title: First blog post
Date: 2017-08-13 10:20
Modified: 2017-08-13 10:20
Category: Test
Tags: test, blog
Slug: linear-regression
Authors: Tornike Natsvlishvili
Summary: Test blog post

Linear regression is a way to find a function that can model a set of observation with the least amount of error.

```python

function alive() {
  kill -0 $1 >/dev/null 2>&1
}

function shut_down(){
  PID=$(cat $SRV_PID)
  if [[ $? -eq 0 ]]; then
    if alive $PID; then
      echo "Stopping HTTP server"
      kill $PID
    else
      echo "Stale PID, deleting"
    fi
    rm $SRV_PID
  else
    echo "HTTP server PIDFile not found"
  fi

  PID=$(cat $PELICAN_PID)
  if [[ $? -eq 0 ]]; then
    if alive $PID; then
      echo "Killing Pelican"
      kill $PID
    else
      echo "Stale PID, deleting"
    fi
    rm $PELICAN_PID
  else
    echo "Pelican PIDFile not found"
  fi
}

```

$l(f(x),y)=-\sum_c 1_{(y=c)} \log f(x)_c$