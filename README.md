# RickAndMorty


Это iOS приложение, отображающее информацию о персонажах мульт-сериала "RickAndMorty".

# Интерфейс
Приложение отображает список персонажей мульт-сериала "RickAndMorty" и их детальную информацию.

Основные классы:

1. CharactersCollectionViewController (UIKit), который отображает изображения и имена персонажей в CollectionViewController. Обновление данных из сети осуществляется по свайп экрана сверху-вниз:

<p align="center" width="100%">
    <img width="30%" src="https://github.com/LidiaNKR/RickAndMorty/blob/c7a87b99ac2ea400106b981c9c1c618aa213d8fc/Images/MainView.png">
</p>

2. CharacterDetailView (SwiftUI), отображающий более детальную информацию о интересующем персонаже, такую как: изображение, имя, рановидность, тип, происхождение и список эпизодов, в которых принимал участие данный персонаж. 

<p align="center" width="100%">
    <img width="30%" src="https://github.com/LidiaNKR/RickAndMorty/blob/c7a87b99ac2ea400106b981c9c1c618aa213d8fc/Images/DetailView.png">
</p>

# Используемый стек технологий
- Язык программирования - `Swift`
- Интерфейс - `UIKit`, `SwiftUI`
- Архитектура - `MVVM`
- Верстка интерфейса - `Code`
