Theme.delete_all
Theme.reset_pk_sequence
Theme.create!([
                {name: "-----"},
                {name: "Осень"},
                {name: "Финский залив"},
                {name: "Нева"},
                {name: "Парк"},
              ])

Image.delete_all
Image.reset_pk_sequence
Image.create!([
                {name: 'Я и осень', file: '1.jpg', theme_id: 2},
                {name: 'Я и осень 2', file: '2.jpg', theme_id: 2},
                {name: 'Я и Финский залив', file: '3.jpg', theme_id: 3},
                {name: 'Я и Финский залив 2', file: '4.jpg', theme_id: 3},
                {name: 'Я и Финский залив 3', file: '5.jpg', theme_id: 3},
                {name: 'Я и Финский залив 4', file: '6.jpg', theme_id: 3},
                {name: 'Я и Финский залив 5', file: '7.jpg', theme_id: 3},
                {name: 'Я и Нева', file: '8.jpg', theme_id: 4},
                {name: 'Я и Финский залив 6', file: '9.jpg', theme_id: 3},
                {name: 'Я в Парке', file: '11.jpg', theme_id: 5},
              ])

Value.delete_all
Value.reset_pk_sequence

User.delete_all
User.reset_pk_sequence
User.create!([
               {name: "Timofey", email: "belyakoff.timka@yandex.ru"},
             ])