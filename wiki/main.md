# Схема таблицы в БД (json)

## 'ORDER'

``` SQL
    `ID` int (18) /* Номер заказа (auto_increment) */
    `USER_ID` (select from 'customer')  /* ФИО клиента */
    `AEG_ID` (select from 'aeg') /* Название привода */
    `DESCRIPTION` (text) /* Описание неисправностей */
    `REQUIREMENTS` (text) /* Требования к работам */
    `USER_ID` (select from 'customers' where 'employee' is TRUE) /* Исполнитель */
    `MATERIAL_ID` int(18) /* Список материалов */
    `REQUIRED_DATE` (TIMESTAMP) /* Требуемая дата готовности */
    `STATUS_ID` int (128) /* Статус заказа */
    `SUM` int (18) /* Общая стоимость */
    `PREPAY_SUM` int (18) /* Предоплата */
```   

## 'STATUS'
``` SQL
    `ID` int (128) /* Идентификатор */
    `TITLE` varchar (255) /* Название */
    `ACTIVE` char (1) /* Активность */
    
```
## `WORKFLOW`

``` SQL
    `ID` int (128) /* Идентификатор */
    `STATUS_ID` int (128)
```

## 'AEG'
``` SQL
    `ID` (int) /* Идентификтор*/
    `MANUFACTIRER_NAME` (varchar) /* Производитель */
    `TITLE` (varchar) /* Название привода */
```

## 'MATERIAL'

``` SQL
CREATE TABLE `navy_material`(
    `ID` int (18), /* Идентификтор */
    `TITLE` varchar (255), /* Название материала */
    `COST` varchar (255), /* Цена материала */
    PRIMARY KEY (`ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
```

## USER
```SQL    
    `ID` (int) /* Идентификатор */
    `NAME` (varchar) /* ФИО клиента */
    `EMPLOYEE` (int) /* Сотрудник (да/нет) */
    `PHONE` (int) /* Контактный телефон */
    `EMAIL` varchar (255) /* Электронная почта */
```
