```mermaid
classDiagram
    namespace Entities {
        class Player {
            +int lives
            +int score
            +float x
            +float y
            +move(direction)
            +lose_life()
        }
        style Player fill:#F5F5F5, stroke:#0000FF, stroke-width:2px
        
        class Ghost {
            +float x
            +float y
            +bool is_edible
            +chase_player()
            +run_away()
        }
        style Ghost fill:#F5F5F5, stroke:#0000FF, stroke-width:2px
        
        class Consumable {
            +float x
            +float y
        }
        style Consumable fill:#F5F5F5, stroke:#0000FF, stroke-width:2px
    }
    
    namespace Managers {
        class Man_App{
        }
        
        class Man_Physics {
        }
        
        class Man_Menu {
        }
        
        class Man_Config {
            +dict settings
            +load_json(filepath)
            -clamp_defaults()
        }
        
        class Man_Highscore
    }

    namespace GFX {
        class gfx_Screen
        class gfx_Player
        class gfx_Ghost
        class gfx_Consumable
        class gfx_Hud
        class gfx_Menu
        class Sprites
        class Sounds
    }

    namespace Utils {
        class Maze_Adapter
        class Cheats
        class Exits
    }
```