# encoding: utf-8

DEFAULTS = [
  "Эту тайну мне раскрыть не позволено",
  "Сегодня Луна во Льве, и на этот вопрос я не могу ответить",
  "Магия наука точная и требует точных вопросов...",
  "Можно помедленнее? Я записываю",
  "Вы что-то сказали?",
  "Ничего не могу сказать по этому поводу",
  "А? Что?"
]

INSULTS = {
  "тест"   => "Все системы в норме! Магический шар 1.0 готов вас выслушивать!",
  "test"   => "Все системы в норме! Магический шар 1.0 готов вас выслушивать!",
  "привет" => "И тебе привет",
  "привед" => "И тебе привет",
  "превед" => "Превед медвед!",
  "как дела" => "Ещё не родила",
  "что делаешь" => "На вопросы глупые отвечаю",
  "чо делаешь" => "На вопросы глупые отвечаю",
  "чо делаеш" => "На вопросы глупые отвечаю",
  "хуй"    => "На себя посмотри ;)",
  "ты хуй" => "На себя посмотри ;)",
  "бля"    => "Да ты что!",
  "код"       => "Заработай ;)",
  "дай код"   => "Заработай ;)",
  "давай код" => "Заработай ;)",
  "пошёл ты" => "Я же шар! У меня нет ног. Я не могу ходить.",
  "пошел ты" => "Я же шар! У меня нет ног. Я не могу ходить.",
  "пошол ты" => "Я же шар! У меня нет ног. Я не могу ходить.",
  "иди ты" => "Я же шар! У меня нет ног. Я не могу ходить.",
  "да иди ты" => "Я же шар! У меня нет ног. Я не могу ходить.",
  "да пошёл ты" => "Я же шар! У меня нет ног. Я не могу ходить.",
  "иди в жопу" => "Я же шар! У меня нет ног. Я не могу ходить.",
  "пошёл в жопу" => "Только после вас! ;)",
  "пошел в жопу" => "Только после вас! ;)",
  "иди нахуй" => "Только после вас! ;)",
  "нахуй иди" => "Только после вас! ;)",
  "пошел нахуй" => "Только после вас! ;)",
  "пошёл нахуй" => "Только после вас! ;)",
  "пошол нахуй" => "Только после вас! ;)",
  "ты кто" => "Дед пихто. Шар я. Магический!",
  "ты xто" => "Дед пихто. Шар я. Магический!",
  "кто ты" => "Дед пихто. Шар я. Магический!",
  "xто ты" => "Дед пихто. Шар я. Магический!",
  "кто здесь" => "Здесь никого, только я, шар!",
  "хто здесь" => "Здесь никого, только я, шар!",
  "что это" => "А на что это похоже?",
  "што это" => "А на что это похоже?",
  "что ето" => "А на что это похоже?",
  "што ето" => "А на что это похоже?",
  "это что" => "А на что это похоже?",
  "это што" => "А на что это похоже?",
  "ето что" => "А на что это похоже?",
  "ето што" => "А на что это похоже?",
  "куда идти" => "Думай ;)",
  "куда ехать" => "Думай ;)",
  "где искать" => "Думай ;)",
  "где искать код" => "Думай ;)",
  "какой код" => "А может тебе ещё ключи от квартиры где деньги лежат?",
  "назови код" => "А может тебе ещё ключи от квартиры где деньги лежат?",
  "где код" => "А может тебе ещё ключи от квартиры где деньги лежат?",
  "шо делать" => "Задавать правильные вопросы ;)",
  "чо делать" => "Задавать правильные вопросы ;)",
  "че делать" => "Задавать правильные вопросы ;)",
  "чё делать" => "Задавать правильные вопросы ;)",
  "что делать" => "Задавать правильные вопросы ;)",
  "что нам делать" => "Задавать правильные вопросы ;)",
  "что за хуйня" => "Это дозор, детка! ;)",
  "чо за хуйня" => "Это дозор, детка! ;)",
  "чё за хуйня" => "Это дозор, детка! ;)",
  "че за хуйня" => "Это дозор, детка! ;)",
  "шо за хуйня" => "Это дозор, детка! ;)",
  "что это за хуйня" => "Это дозор, детка! ;)",
  "чо это за хуйня" => "Это дозор, детка! ;)",
  "чё это за хуйня" => "Это дозор, детка! ;)",
  "че это за хуйня" => "Это дозор, детка! ;)",
  "шо это за хуйня" => "Это дозор, детка! ;)",
  "и что" => "И то!",
  "и чо" => "И то!",
  "и че" => "И то!",
  "и чё" => "И то!",
  "ответ на вопрос жизни вселенной и всего такого" => "42",
  "ответ на главный вопрос" => "42",
  "ответ на главный вопрос жизни вселенной и всего такого" => "42",
  "ответ на главный вопрос жизни вселенной и вообще" => "42",
  "what is the answer to life the universe and everything" => "42",
  "спать хочу" => "Все хотят спать! Игру закончили?",
  "хочу спать" => "Все хотят спать! Игру закончили?",
  "хочу пива" => "Я тоже хочу пива, но я всего-лишь шар :(",
  "пива хочу" => "Я тоже хочу пива, но я всего-лишь шар :("
}

INSULTS_REGEXP = {
  /select|from|drop|table|count|where|truncate|group|update|set/ => "Ишь ты! Нахеров-кахеров здесь понаводилось!",
  /говно/ => "Вся жизнь говно, а ты не знал?",
  /dr|e/ => "Сюда код вводить не надо",
  /смайл/ => "Смайлы рулят, мне это сказали там, наверху! Представляешь?",
  /кролик/ => "Сковороды, 6",
  /выход/ => "Притисско-Никольская, 1"
}