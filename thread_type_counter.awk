#!/usr/bin/awk -f

BEGIN {
  count["WAITING(onobject"] = 0
  count["WAITING(parking)"] = 0
  count["RUNNABLE"] = 0
  count["TIMED_WAITING(onobject"] = 0
  count["TIMED_WAITING(sleeping)"] = 0
  count["TIMED_WAITING(parking)"] = 0
  count["BLOCKED(onobject"] = 0
  count["TERMINATED"] = 0
}

{
  count[$2$3$4]++
}

END {
  print count["WAITING(onobject"],            \
        count["WAITING(parking)"], \
        count["RUNNABLE"], \
        count["TIMED_WAITING(onobject"], \
        count["TIMED_WAITING(sleeping)"], \
        count["TIMED_WAITING(parking)"], \
        count["BLOCKED(onobject"], \
        count["TERMINATED"]
}
