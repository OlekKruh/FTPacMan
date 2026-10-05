```mermaid
classDiagram
    %% Исправлен нейминг и добавлены новые классы по ТЗ
    namespace Entities {
        class Player
        class Ghost
        class Consumable
    }
    
    namespace Managers {
        class Man_App
        class Man_Physics
        class Man_Menu
        class Man_Config
        class Man_Highscore
    }
    
    namespace GFX {
        class gfx_Screen
        class gfx_Player
        class gfx_Ghost
        class gfx_Consumable
        class gfx_Hud
        class gfx_Menu
    }
    
    namespace Utils {
        class Maze_Adapter
        class Cheats
        class Exits
    }
    
    namespace Assets {
        class Sprites
        class Sounds
    }

    %% Базовые связи (зависимости и управление)
    Man_App --> Man_Config : Загрузка config.json
    Man_App --> Man_Menu : Управление экранами
    Man_App --> Man_Physics : Игровой цикл
    
    Man_Physics --> Maze_Adapter : A-Maze-ing (PERFECT=False)
    Man_Physics --> Entities : Обновление координат и состояний
    Man_Physics --> Man_Highscore : Сохранение топ-10
    Man_Physics ..> Cheats : Проверка чит-кодов
    
    Man_App --> gfx_Screen : Очистка и обновление экрана
    gfx_Screen --> GFX : Вызов отрисовки объектов
    GFX ..> Assets : Подгрузка медиа
    
    Utils ..> Exits : Безопасное завершение при ошибках
```