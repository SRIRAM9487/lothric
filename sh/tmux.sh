#!/bin/sh

MAINDIR="/home/sriram/dev/project/lothric"


SESSION="e2e"
SUBDIR="$MAINDIR/e2e"
if tmux has-session -t "$SESSION" 2>/dev/null; then
     echo "Session '$SESSION' running."
else
    tmux new-session -d -s "$SESSION" -c "$SUBDIR"
    tmux rename-window -t "$SESSION:0" 'code'
    tmux new-window -t "$SESSION:1" -n "server" -c "$SUBDIR"
    tmux select-window -t "$SESSION:0"
    echo "$SESSION  created"
fi

SESSION="DOCKER"
SUBDIR="$MAINDIR/docker"
 if tmux has-session -t "$SESSION" 2>/dev/null; then
     echo "Session '$SESSION' running."
 else
    tmux new-session -d -s "$SESSION" -c "$SUBDIR"
    tmux rename-window -t "$SESSION:0" 'server'
    tmux new-window -t "$SESSION:1" -n "docker" -c "$SUBDIR"
    tmux select-window -t "$SESSION:0"
    echo "$SESSION  created"
 fi


SESSION="FRONT"
SUBDIR="$MAINDIR/frontend"
if tmux has-session -t "$SESSION" 2>/dev/null; then
     echo "Session '$SESSION' running."
else
    tmux new-session -d -s "$SESSION" -c "$SUBDIR"
    tmux rename-window -t "$SESSION:0" 'code'
    tmux new-window -t "$SESSION:1" -n "server" -c "$SUBDIR"
    tmux select-window -t "$SESSION:0"
    echo "$SESSION  created"
fi

SESSION="spring"
SUBDIR="$MAINDIR/spring_backend"
if tmux has-session -t "$SESSION" 2>/dev/null; then
     echo "Session '$SESSION' running."
else
    tmux new-session -d -s "$SESSION" -c "$SUBDIR"
    tmux rename-window -t "$SESSION:0" 'code'
    tmux new-window -t "$SESSION:1" -n "server" -c "$SUBDIR"
    tmux select-window -t "$SESSION:0"
    echo "$SESSION  created"
fi

SESSION="node"
SUBDIR="$MAINDIR/node_backend"
if tmux has-session -t "$SESSION" 2>/dev/null; then
     echo "Session '$SESSION' running."
else
    tmux new-session -d -s "$SESSION" -c "$SUBDIR"
    tmux rename-window -t "$SESSION:0" 'code'
    tmux new-window -t "$SESSION:1" -n "server" -c "$SUBDIR"
    tmux select-window -t "$SESSION:0"
    echo "$SESSION  created"
fi
