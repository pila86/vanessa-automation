﻿# language: ru

@ExportScenarios
@IgnoreOnCIMainBuild
@ExternalUse

Функционал: Экспортные сценарии интерактивной справки

Сценарий: Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ИскомыйТекст" 'Подсказка'
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "ИскомыйТекст" 'Подсказка'
		И Пауза 4
		И Пауза 0.5
		
Сценарий: Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий "НомерСтроки" "ИскомыйТекст" 'Подсказка'
		И я делаю подсветку фрагмента текста в редакторе VA в строке "НомерСтроки" в режиме обучения "ИскомыйТекст" 'Подсказка'
		И Пауза 4
		И Пауза 0.5
		
Сценарий: Я делаю подсветку текста в редакторе VA в режиме обучения с "НомерСтроки1" по "НомерСтроки2" строку 'Подсказка' подсценарий
		И я делаю подсветку текста в редакторе VA в режиме обучения с "НомерСтроки1" по "НомерСтроки2" строку 'Подсказка'
		И Пауза 4
		И Пауза 0.5
		

Сценарий: Я загружаю фичи в VA в режиме обучения "ИмяФайла"
		И я загружаю фича файлы в VA в режиме обучения "ИмяФайла"
		И Пауза 1
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.ФлагСценарииЗагружены' стало Истинно в течение 20 секунд


Сценарий: Я делаю подсветку нескольких элементов VA "ТекстПодСтрелкой" UI Automation
	И я делаю подсветку элементов VA "ЭтотСеанс" "ТекстПодСтрелкой" UI Automation
		| 'Имя' |
	И Пауза 4
	И Пауза 0.5

Сценарий: Я делаю подсветку нескольких элементов VA с их заголовком "ТекстПодСтрелкой" UI Automation
	И я делаю подсветку элементов VA с их заголовком "ЭтотСеанс" "ТекстПодСтрелкой" UI Automation
		| 'Имя' |
	И Пауза 4
	И Пауза 0.5

Сценарий: Перед запуском сценария интерактивной справки
	Дано я спрашиваю имя ученика если оно не задано


Сценарий: Я загружаю в режиме обучения VA тестовую фичу "ИмяФайла"
		И я загружаю фича файлы в VA в режиме обучения "ИмяФайла"
		И Пауза 1
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.ФлагСценарииЗагружены' стало Истинно в течение 20 секунд


Сценарий: Я запускаю сценарий VA в режиме обучения и жду окончания выполнения
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПанельVanessaEditorВыполнитьСценарии' UI Automation	
		И Пауза 1
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.ФлагСценарииВыполнены' стало Истинно в течение 20 секунд 


Сценарий: Я делаю подсветку элемента VA "ИмяЭлемента" "Текст"
		И я делаю подсветку элементов VA "ЭтотСеанс" "Текст" UI Automation
			| 'Имя'         | 'Тип' | 'РодительЭлемента' |
			| 'ИмяЭлемента' | ''    | ''                 |
		И Пауза 4
		И Пауза 0.5

Сценарий: Я делаю подсветку элемента VA с типом "Тип". Элемент ищется у родителя элемента "ИмяЭлемента" "Описание"
		Если версия платформы ">=" "8.3.19.1" Тогда
			И я запоминаю родителя родителя элемента с именем "ИмяЭлемента" в переменную "IDРодителя" Vanessa Automation
		Иначе
			И я запоминаю родителя элемента с именем "ИмяЭлемента" в переменную "IDРодителя" Vanessa Automation
			
		И я запоминаю элемент с типом "Тип" подчиненный "$IDРодителя$" в переменную "IDЭлемента" Vanessa Automation
			
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя'          | 'Тип' |
			| '$IDЭлемента$' | ''    |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4


Сценарий: Я делаю подсветку элемента VA с типом "ТипЭлемента" "Текст"
		И я делаю подсветку элементов VA "ЭтотСеанс" "Текст" UI Automation
			| 'Имя' | 'Тип'         | 'РодительЭлемента' |
			| ''    | 'ТипЭлемента' | ''                 |
		И Пауза 4


Сценарий: Я делаю подсветку элемента VA "ИмяЭлемента" "Текст" и перемещаю курсор
		И я делаю подсветку элементов VA "ЭтотСеанс" "Текст" UI Automation
			| 'Имя'         | 'Тип' | 'РодительЭлемента' |
			| 'ИмяЭлемента' | ''    | ''                 |
		И я перемещаю курсор к элементу формы VA UI Automation 'ЭтотСеанс' 'ИмяЭлемента' UI Automation	
		И Пауза 4
		И Пауза 0.5

Сценарий:  Я ввожу текст в поле VA "ИмяПоля" "ТекстПоля"
	И я помещаю в буфер обмена строку 'ТекстПоля'
	И я запоминаю ID элемента формы Vanessa Automation с именем "ИмяПоля" в переменную "ID"
	И я делаю клик в поле "$ID$" UI Automation
	И Пауза 0.5
	И я нажимаю сочетание клавиш "Ctrl+V"
	И Пауза 0.5
	И я нажимаю сочетание клавиш "ENTER"



Сценарий: Я делаю подсветку закладки VA и переход к ней "ИмяЭлемента" "Описание"
		И я запоминаю заголовок элемента формы Vanessa Automation с именем "ИмяЭлемента" в переменную "ЗаголовокЭлемента"
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя'                 | 'Тип'     |
			| '$ЗаголовокЭлемента$' | 'TabItem' |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4

		И я делаю клик по элементу формы 'ЭтотСеанс' '$ЗаголовокЭлемента$' 'TabItem' UI Automation

Сценарий: Я делаю подсветку кнопки VA с именем "ИмяЭлемента" и переход к ней "Описание"
		И я запоминаю заголовок элемента формы Vanessa Automation с именем "ИмяЭлемента" в переменную "ЗаголовокЭлемента"
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя'                 | 'Тип'    |
			| '$ЗаголовокЭлемента$' | 'Button' |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4

		И я делаю клик по элементу формы 'ЭтотСеанс' '$ЗаголовокЭлемента$' 'Button' UI Automation
		И Пауза 0.5


Сценарий: Я делаю подсветку элемента формы VA по имени "ИмяЭлемента" "Описание"
		И я запоминаю заголовок элемента формы Vanessa Automation с именем "ИмяЭлемента" в переменную "ЗаголовокЭлемента"
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя'                 | 'Тип' |
			| '$ЗаголовокЭлемента$' | ''    |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4
		И Пауза 0.5

Сценарий: Я делаю подсветку элемента формы VA по имени "ИмяЭлемента" "Описание" и клик по нему
		И я запоминаю заголовок элемента формы Vanessa Automation с именем "ИмяЭлемента" в переменную "ЗаголовокЭлемента"
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя'                 | 'Тип' |
			| '$ЗаголовокЭлемента$' | ''    |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4
		И Пауза 0.5
		И я делаю клик по элементу формы 'ЭтотСеанс' '$ЗаголовокЭлемента$' '' UI Automation
		И Пауза 0.5


Сценарий: Я делаю подсветку элемента формы VA по типу "ТипЭлемента" "Описание"
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя' | 'Тип'         |
			| ''    | 'ТипЭлемента' |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4

Сценарий: Я делаю подсветку элемента формы VA по заголовку "Заголовок" "Описание"
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя'       | 'Тип' |
			| 'Заголовок' | ''    |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4

Сценарий: Я делаю подсветку родителя элемента формы VA по имени "ИмяЭлемента" "Описание"
		И я запоминаю заголовок элемента формы Vanessa Automation с именем "ИмяЭлемента" в переменную "ЗаголовокЭлемента"
		И я запоминаю родителя элемента "$ЗаголовокЭлемента$" с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя'          | 'Тип' |
			| '$IDЭлемента$' | ''    |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4


Сценарий: Я делаю подсветку элемента формы VA по его типу через родителя другого элемента "ИмяДругогоЭлемента" "Тип" "Описание"
		И я запоминаю родителя элемента с именем "ИмяДругогоЭлемента" в переменную "IDЭлемента" Vanessa Automation
		И я запоминаю элемент с типом "Тип" c родителем "$IDЭлемента$" в переменную "IDЭлемента" Vanessa Automation
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя'          | 'Тип' |
			| '$IDЭлемента$' | ''    |
			
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Описание' |
			| 'duration' | 4000       |
	
		И Пауза 4

Сценарий: Я делаю подсветку у табло переменных VA
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Контекст имя" и типом "" тогда
			И я запоминаю родителя элемента "Контекст имя" с типом "" процесса "ЭтотСеанс" в переменную "IDТаблицы" UI Automation
		Иначе
			И я запоминаю родителя элемента "Context name" с типом "" процесса "ЭтотСеанс" в переменную "IDТаблицы" UI Automation
		
		И я запоминаю элемент с именем "ТаблоПеременныхЗакрытьТаблоПеременных" в переменную "IDКнопкиЗакрыть" Vanessa Automation
		И Пауза 1

		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя/ID'            | 'Тип' |
			| '$IDТаблицы$'       | ''    |
			| '$IDКнопкиЗакрыть$' | ''    |
		
			| 'text' | 'Табло переменных' |
		И Пауза 4

Сценарий: Я делаю подсветку у дерева известных шагов "Текст"
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Тип, Шаг" и типом "" Тогда
			И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Имя/ID'   | 'Тип' |
				| 'Тип, Шаг' | ''    |
			
				| 'text' | 'Текст' |
		Иначе		
			И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Имя/ID'     | 'Тип' |
				| 'Type, Step' | ''    |
			
				| 'text' | 'Текст' |
		
		И Пауза 4
		И Пауза 0.5

Сценарий: Я делаю подсветку у строки дерева шагов 'Имя' 'Текст'
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя/ID' | 'Тип'      |
			| 'Имя'    | 'ListItem' |
		
			| 'text' | 'Текст' |
		И Пауза 4
		И Пауза 0.5

Сценарий: Я делаю подсветку у поля дерева шагов 'Имя' 'Текст'
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя/ID' | 'Тип'  |
			| 'Имя'    | 'Edit' |
		
			| 'text' | 'Текст' |
		И Пауза 4
		И Пауза 0.5

Сценарий: Я делаю подсветку у поля дерева шагов по подсказке 'ТекстПодсказки' 'Текст'
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс" по подсказке
			| 'Подсказка'      |
			| 'ТекстПодсказки' |
		
			| 'text' | 'Текст' |
		И Пауза 4
		И Пауза 0.5


Сценарий: Я делаю клик в поле дерева шагов по подсказке 'ТекстПодсказки' 
		И я делаю клик по элементу формы 'ЭтотСеанс' 'ТекстПодсказки' UI Automation. Поиск по подсказке.

Сценарий: Я выбираю английский яызк VA Режим обучения
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ЯзыкГенератораGherkin'
		И Пауза 1
		И я нажимаю сочетание клавиш "DOWN"
		И Пауза 1
		И я делаю клик по элементу формы 'ЭтотСеанс' 'English' 'ListItem' UI Automation
		И Пауза 1

Сценарий: Я делаю подсветку поля словарей замен "Текст"
		И я запоминаю ID элемента VA с типом "List" следующим за элементом "ГруппаСловариЗамен" в переменную "ID" UI Automation
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя/ID' |
			| '$ID$'   |
		
			| 'Имя'      | 'Значение' |
			| 'text'     | 'Текст'    |
			| 'duration' | 4000       |
		И Пауза 4
		И Пауза 0.5

