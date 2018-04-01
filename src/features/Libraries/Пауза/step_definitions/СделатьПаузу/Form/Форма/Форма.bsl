﻿//начало текста модуля

&НаКлиенте
Перем КолСекундОжидания;
&НаКлиенте
Перем ПрошлоСекунд;


///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;


&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯДелаюПаузуСекунды(Парам01)","ЯДелаюПаузуСекунды","Когда Я делаю паузу 2 секунды");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"Пауза(Парам01)","Пауза","И     Пауза 1","Позволяет сделать паузу нужной длительности.","Прочее.Пауза");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Процедура ОбработчикОжидания()
	ИмяОбработчика = "ОбработчикОжидания";
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) >= КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Когда Я делаю паузу 2 секунды
//@ЯДелаюПаузуСекунды(Парам01)
Процедура ЯДелаюПаузуСекунды(КолСекунд) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Ванесса.ЗапретитьВыполнениеШагов();
	
	КолСекундОжидания = КолСекунд;
	ПрошлоСекунд      = 0;
	
	ПодключитьОбработчикОжидания("ОбработчикОжидания",1,Ложь);
	
КонецПроцедуры



&НаКлиенте
//И Пауза 1
//@Пауза(Парам01)
Процедура Пауза(КолСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	
	КоличествоСекундОбработкаОжидания = КолСекунд;
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	
	ПодключитьОбработчикОжидания("ОбработчикОжидания",1,Ложь);
КонецПроцедуры


//окончание текста модуля