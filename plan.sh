#!/bin/bash

if [ $# -ne 2 ] ;
then
    echo "usage: $0 <domain.pddl> <problem.pddl>"
    exit 1
fi

DOMAINFILE="$1"
PROBFILE="$2"

# Use fast-downward to make a plan.
# The resulting plan is in sas_plan.
fast-downward.py "$DOMAINFILE" "$PROBFILE" --search "astar(blind())"

# Remove the last line in sas_plan. Required for lifter.py, according to
# private conversation with the author.
sed -i '$d' sas_plan

# Run the KK algorithm to get a plan deordering.
python ~/radboud/src/planningAndScheduling/pop-gen/lifter.py \
    -domain "$DOMAINFILE" \
    -prob "$PROBFILE" \
    -mercout sas_plan DOT > result.dot

# lifter.py outputs debugging info and the result data on stdout. Only take
# the DOT output of lifter
sed -ni '/digraph/,$p' result.dot

# Make svg image from dot file.
dot -Tsvg result.dot > result.svg
