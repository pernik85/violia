<script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<div id="map" style="width:100%;height: 300px">

</div>
<script type="text/javascript">

    ymaps.ready(init);
    function init () {
        defaultCoordinates = '50.450375, 30.523602';
        var coordsMap = defaultCoordinates.split(',');
        var myMap = new ymaps.Map("map", {
                center: [coordsMap[0], coordsMap[1]],
                zoom: 10
            }, {
                searchControlProvider: 'yandex#search'
            }),

        // Создаем геообъект с типом геометрии "Точка".
            myGeoObject = new ymaps.GeoObject({
                // Описание геометрии.
                geometry: {
                    type: "Point",
                    coordinates: [coordsMap[0], coordsMap[1]]
                },
                // Свойства.
                properties: {
                    // Контент метки.
                    iconContent: 'Мои контейнеры',
                    hintContent: 'Ну давай уже тащи'
                }
            }, {
                // Опции.
                // Иконка метки будет растягиваться под размер ее содержимого.
                preset: 'islands#blackStretchyIcon',
                // Метку можно перемещать.
                draggable: true
            });

        myMap.geoObjects
            .add(myGeoObject);

        myGeoObject.events.add('dragend', function(e){
            var coordinate = myGeoObject.geometry.getCoordinates();
            $('#objects-coord_lat').val(coordinate[0]);
            $('#objects-coord_long').val(coordinate[1]);
        });
    }

</script>