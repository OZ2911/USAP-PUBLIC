# Definition — опис структури типу

**POST** `/{controllerName}/definition/`

Повертає повний опис структури типу у форматі JSON — всі поля, їхні типи, мітки, налаштування відображення. Використовується для розуміння структури моделі при інтеграції та для динамічної побудови UI.

---

## Запит

Тіло запиту порожнє або `{}`.

---

## Реальний приклад — номенклатура

**POST** `/nomenclature/definition/`

```json
{
  "data": {
    "ocontroller": "nomenclature",
    "label": {
      "MainName": "Номенклатура",
      "MainNameForSet": "Номенклатура",
      "ShortName": null,
      "c": "Найменування",
      "ic": "Код",
      "ar": "Артикул",
      "mc": "Код виробника",
      "pc": "Повне найменування",
      "pa": "Група",
      "bu": "Базова одиниця",
      "put": "Одиниця закупок",
      "nt": ["Тип", {"id":1,"c":"tovar"}, {"id":2,"c":"usluga"}, {"id":3,"c":"folder"}, {"id":4,"c":"tovarwithserial"}, {"id":5,"c":"uslugawithserial"}, {"id":6,"c":"excisenumbers"}],
      "m": "Виробник",
      "nst": "Вид номенклатури",
      "uktzed": "УКТЗеД",
      "a": "Аналоги",
      "ei": "Стаття затрат для відображення роботи з послугами",
      "ag": "Прив'язка прав",
      "ws": "Облік по серіях",
      "rqc": "Запитувати кількість",
      "rqw": "Ваговий товар",
      "ndc": "Кількість за замовчуванням",
      "exl": "Літера акцизного податку",
      "erfa": "Перегляд дозволено для всіх",
      "di": "Основне зображення",
      "ni": "Основне зображення",
      "fsc": null,
      "id": null,
      "ig": null,
      "eg": null,
      "f": null
    },
    "placeholder": {
      "c": "",
      "ic": "Буде присвоєно автоматично",
      "ar": null,
      "mc": null,
      "pc": "текст який використовується при друку",
      "pa": "",
      "bu": null,
      "put": null,
      "nt": null,
      "m": null,
      "nst": null,
      "uktzed": null,
      "a": "використовується для зв'язку схожих товарів",
      "ei": null,
      "ag": "Може бути пустим, тоді право береться від батьківського",
      "ws": null,
      "rqc": null,
      "rqw": null,
      "ndc": null,
      "exl": null,
      "erfa": null,
      "di": null,
      "ni": null,
      "fsc": null,
      "id": null,
      "ig": null,
      "eg": null,
      "f": null
    },
    "component": {
      "DefaultComponent": "NomenclatureCard",
      "c": null,
      "ic": null,
      "ar": null,
      "mc": null,
      "pc": null,
      "pa": "NomenclatureCard",
      "bu": "UnitTypeCard",
      "put": "UnitTypeCard",
      "nt": null,
      "m": "ManufactureCard",
      "nst": "NomenclatureSubtypeCard",
      "uktzed": "UktzedCodeCard",
      "a": "AnalogGroupCard",
      "ei": "ExpenseitemCard",
      "ag": "DepartamentCard",
      "ws": null,
      "rqc": null,
      "rqw": null,
      "ndc": null,
      "exl": null,
      "erfa": null,
      "di": null,
      "ni": "NomenclatureImageCard",
      "fsc": null,
      "id": null,
      "ig": null,
      "eg": null,
      "f": null
    },
    "componentconfig": {
      "c":    { "BackendType": "string" },
      "ic":   { "BackendType": "string" },
      "ar":   { "BackendType": "string" },
      "mc":   { "BackendType": "string" },
      "pc":   { "BackendType": "string" },
      "fsc":  { "BackendType": "string" },
      "ws":   { "BackendType": "bool" },
      "rqc":  { "BackendType": "bool" },
      "rqw":  { "BackendType": "bool" },
      "erfa": { "BackendType": "bool" },
      "ndc":  { "BackendType": "decimal" },
      "f":    { "BackendType": "int16" },
      "id":   { "BackendType": "string" },
      "ig":   { "BackendType": "string" },
      "eg":   { "BackendType": "string" },
      "nt":   { "BackendType": "enum" },
      "bu":   { "ConfigAsEnum": true, "WidthInTable": 5 },
      "put":  { "ConfigAsEnum": true, "WidthInTable": 5 },
      "m":    { "ConfigAsEnum": true, "WidthInTable": 10 },
      "nst":  { "ConfigAsEnum": true, "WidthInTable": 6 },
      "ni":   { "ConfigAsEnum": true, "WidthInTable": 10 },
      "ag":   { "ConfigAsEnum": true, "WidthInTable": 10 },
      "a":    { "WidthInTable": 10 },
      "ei":   { "WidthInTable": 15 },
      "uktzed": { "WidthInTable": 10 },
      "pa":   {}
    },
    "controller": {
      "c": null,
      "ic": null,
      "ar": null,
      "mc": null,
      "pc": null,
      "pa": "nomenclature",
      "bu": "unittype",
      "put": "unittype",
      "nt": null,
      "m": "manufacture",
      "nst": "nomenclaturesubtype",
      "uktzed": "uktzedcode",
      "a": "analoggroup",
      "ei": "expenseitem",
      "ag": "departament",
      "ws": null,
      "rqc": null,
      "rqw": null,
      "ndc": null,
      "exl": null,
      "erfa": null,
      "di": null,
      "ni": "nomenclatureimage",
      "fsc": null,
      "id": null,
      "ig": null,
      "eg": null,
      "f": null
    },
    "arrays": {},
    "AvalableProps": true
  }
}
```

---

## Інтерпретація відповіді

### `label`
Людські назви полів. **Поле з `label: null` — внутрішнє поле системи**, не призначене для відображення користувачу і не повинне заповнюватися зовнішнім кодом (`id`, `ig`, `eg`, `f`, `fsc`).

Для поля типу `enum` значення — масив: перший елемент — назва поля, решта — допустимі варіанти `{id, c}`.

### `placeholder`
Підказки для полів введення. Всі поля присутні, `null` — підказка відсутня.

### `component`
Назва UI-компонента для відображення поля. `null` — поле рендериться стандартним способом. Для зовнішніх інтеграцій не використовується.

### `componentconfig`
Конфігурація поля. Ключовий атрибут — `BackendType`:

| `BackendType` | Тип значення |
|--------------|-------------|
| `"string"` | Рядок |
| `"bool"` | Boolean |
| `"decimal"` | Число з дробовою частиною |
| `"int16"` | Ціле число (16-bit) |
| `"enum"` | Перелік значень (допустимі варіанти в `label`) |

Якщо `BackendType` відсутній — поле є посиланням на інший об'єкт USAP (дивитись `controller`).

### `controller`
Для полів-посилань вказує ім'я контролера цільового типу. `null` — поле не є посиланням. Наприклад, `"bu": "unittype"` означає що поле `bu` посилається на об'єкт типу `unittype`.

### `ocontroller`
Ім'я контролера поточного типу — використовується як перша частина URL у всіх запитах до API цього типу.

---

## Отримання через публічну документацію

**POST** `https://my.usap.online/RootDocumentation/definition/`

```json
{ "id": "nomenclature" }
```

Заголовок: `auth-key: <ключ сесії>`

Загальний список всіх контролерів:

**GET** `https://my.usap.online/rootdocumentation/index`  
(потребує заголовку `auth-key`)
