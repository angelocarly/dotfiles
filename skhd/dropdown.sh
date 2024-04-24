WINDOW_TITLE="dropdown"
WINDOW_ID=$(yabai -m query --windows | jq -e ".[] | select(.title==\"$WINDOW_TITLE\") | .id") || true
if [[ -z "$WINDOW_ID" ]]; then
	pgrep -x kitty >/dev/null &&
		open -na /Applications/Kitty.app --args --title "$WINDOW_TITLE"

	# Unmanage (float) the window to allow moving it
	WINDOW_ID=$(yabai -m query --windows | jq -e ".[] | select(.title==\"$WINDOW_TITLE\") | .id") || true
	WINDOW_QUERY=$(yabai -m query --windows --window "$WINDOW_ID")
	yabai -m window "$WINDOW_ID" --toggle float
else
	WINDOW_QUERY=$(yabai -m query --windows --window "$WINDOW_ID")
	IS_HIDDEN=$(echo "$WINDOW_QUERY" | jq '."is-hidden"')
	HAS_FOCUS=$(echo "$WINDOW_QUERY" | jq '."has-focus"')
	if [[ "${HAS_FOCUS}" != "true" ]]; then
		yabai -m window "$WINDOW_ID" --space mouse --grid "10:10:1:1:8:8" --focus
	fi
	if [[ "${IS_HIDDEN}" != "true" ]]; then
		skhd -k "cmd - h"
	fi
fi
