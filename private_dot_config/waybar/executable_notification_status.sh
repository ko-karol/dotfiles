#!/bin/bash

# Get notification count
count=$(makoctl list 2>/dev/null | jq 'length' 2>/dev/null || echo "0")

# Check if DND mode is active
if makoctl mode 2>/dev/null | grep -q "do-not-disturb"; then
    if [ "$count" -gt 0 ]; then
        echo "{\"text\":\"󰂛 $count\", \"class\":\"dnd-notification\", \"tooltip\":\"$count notifications (DND active)\"}"
    else
        echo "{\"text\":\"󰂛\", \"class\":\"dnd\", \"tooltip\":\"Do Not Disturb active\"}"
    fi
else
    if [ "$count" -gt 0 ]; then
        echo "{\"text\":\"󰂚 $count\", \"class\":\"notification\", \"tooltip\":\"$count notifications\"}"
    else
        echo "{\"text\":\"󰂜\", \"class\":\"none\", \"tooltip\":\"No notifications\"}"
    fi
fi