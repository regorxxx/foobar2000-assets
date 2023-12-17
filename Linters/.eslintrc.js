module.exports = {
	"env": {
		"browser": true,
		"es6": true
	},
	"extends": "eslint:recommended",
	"overrides": [
		{
			"env": {
				"node": true
			},
			"files": [
				".eslintrc.{js,cjs}"
			],
			"parserOptions": {
				"sourceType": "script"
			}
		}
	],
	"parserOptions": {
		"ecmaVersion": "2020",
		"ecmaFeatures": {
			"experimentalObjectRestSpread": true
		},
	},
	"rules": {
		"indent": [
			"error",
			"tab"
		],
		"linebreak-style": [
			"error",
			"windows"
		],
		"quotes": [
			"error",
			"single"
		],
		"semi": [
			"error",
			"always"
		],
		"indent": [
			"error",
			"tab",
			{"SwitchCase": 1}
		],
	},
	"globals": {
		// globals
		"include": true,
		"clearTimeout": true,
		"clearInterval": true,
		"setInterval": true,
		"setTimeout": true,
		"ActiveXObject": true,
		"Enumerator": true,
		"console": true,
		"fb": true,
		"gdi": true,
		"plman": true,
		"utils": true,
		"window": true,
		"FbMetadbHandle": true,
		"FbFileInfo": true,
		"FbMetadbHandleList": true,
		"FbPlaylistRecycler": true,
		"FbPlayingItemLocation": true,
		"FbPlaybackQueueItem": true,
		"FbProfiler": true,
		"FbTitleFormat": true,
		"FbTooltip": true,
		"FbUiSelectionHolder": true,
		"GdiBitmap": true,
		"GdiFont": true,
		"GdiGraphics": true,
		"GdiRawBitmap": true,
		"DropTargetAction": true,
		"ContextMenuManager": true,
		"MainMenuManager": true,
		"MenuObject": true,
		"ThemeManager": true,
		// callbacks
		"on_always_on_top_changed": true,
		"on_char": true,
		"on_colours_changed": true,
		"on_cursor_follow_playback_changed": true,
		"on_drag_drop": true,
		"on_drag_enter": true,
		"on_drag_leave": true,
		"on_drag_over": true,
		"on_dsp_preset_changed": true,
		"on_focus": true,
		"on_font_changed": true,
		"on_get_album_art_done": true,
		"on_item_focus_change": true,
		"on_item_played": true,
		"on_key_down": true,
		"on_key_up": true,
		"on_library_items_added": true,
		"on_library_items_changed": true,
		"on_library_items_removed": true,
		"on_load_image_done": true,
		"on_main_menu": true,
		"on_main_menu_dynamic": true,
		"on_metadb_changed": true,
		"on_mouse_lbtn_dblclk": true,
		"on_mouse_lbtn_down": true,
		"on_mouse_lbtn_up": true,
		"on_mouse_leave": true,
		"on_mouse_mbtn_dblclk": true,
		"on_mouse_mbtn_down": true,
		"on_mouse_mbtn_up": true,
		"on_mouse_move": true,
		"on_mouse_rbtn_dblclk": true,
		"on_mouse_rbtn_down": true,
		"on_mouse_rbtn_up": true,
		"on_mouse_wheel": true,
		"on_mouse_wheel_h": true,
		"on_notify_data": true,
		"on_output_device_changed": true,
		"on_paint": true,
		"on_playback_dynamic_info": true,
		"on_playback_dynamic_info_track": true,
		"on_playback_edited": true,
		"on_playback_follow_cursor_changed": true,
		"on_playback_new_track": true,
		"on_playback_order_changed": true,
		"on_playback_pause": true,
		"on_playback_queue_changed": true,
		"on_playback_seek": true,
		"on_playback_starting": true,
		"on_playback_stop": true,
		"on_playback_time": true,
		"on_playlist_item_ensure_visible": true,
		"on_playlist_items_added": true,
		"on_playlist_items_removed": true,
		"on_playlist_items_reordered": true,
		"on_playlist_items_selection_change": true,
		"on_playlist_stop_after_current_changed": true,
		"on_playlist_switch": true,
		"on_playlists_changed": true,
		"on_replaygain_mode_changed": true,
		"on_script_unload": true,
		"on_selection_changed": true,
		"on_size": true,
		"on_volume_change": true,
	},
};