#include <raylib.h>

#define SCREEN_WIDTH  800
#define SCREEN_HEIGHT 600

int main() {
	// Window initialization
	InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Game mechanics");
	SetTargetFPS(60);

	Texture2D player = LoadTexture("assets/owlet-monster-walk.png");
	float frame_width  = player.width / 6.0f;
	float frame_height = player.height;

	Rectangle frame = {0.0f, 0.0f, frame_width, frame_height};
	float player_position_x = SCREEN_WIDTH / 2.0f;
	float player_position_y = SCREEN_HEIGHT / 2.0f;

	Rectangle dest = {player_position_x, player_position_y, frame_width * 3.0f, frame_height * 3.0f};

//	Vector2 player_position = {player_position_x, player_position_y};
	Vector2 origin = {frame_width, frame_height};

	int current_frame = 0;
	int frame_counter = 0;
	int walking_speed = 8;

	float rotate = 0;
	while (!WindowShouldClose()) {
		if (IsKeyDown(KEY_D)) {
			if (frame.width < 0) {
				frame.width = -frame.width;
			}
			else {
				dest.x += 0.5;
				frame_counter++;
				if (frame_counter >= 60/walking_speed) {
					frame_counter = 0;
					current_frame++;
					if (frame_counter > 5) {
						current_frame = 0;
					}
					frame.x = (float) current_frame * frame_width;
				}
			}
		}
		if (IsKeyDown(KEY_A)) {
			if (frame.width > 0) {
				frame.width = -frame.width;
			}
			else {
				dest.x -= 0.5;
				frame_counter++;
				if (frame_counter >= 60/walking_speed) {
					frame_counter = 0;
					current_frame++;
					if (frame_counter > 5) {
						current_frame = 0;
					}
					frame.x = (float) current_frame * frame_width;
				}
			}
		}
		// Game rendering
		BeginDrawing();
		ClearBackground(RAYWHITE);
			DrawTexturePro(player, frame, dest, origin, rotate, WHITE);
		EndDrawing();

	}
	CloseWindow();
	return 0;
}
