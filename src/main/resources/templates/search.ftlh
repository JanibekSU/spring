<#import "blocks/template.ftlh" as t>
<@t.template user>
<body style="background-color: #f8f9fa;">
    <h1 style="text-align: center">Поиск товаров</h1>

   <style>
    .form-row {
    display: flex;
    flex-wrap: wrap;
    }

    .form-group {
    margin-bottom: 15px;
    }

    .input-group {

    display: flex;
    }

    .input-group input {
    flex: 1;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {

        text-align: left;
        padding: 8px;
        color: #333333; /* цвет текста */
    }



    a{
        color: #333333; /* цвет текста */
    }
    .containerhd {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        align-items: center;
    }
    .btn-primary {
    margin-top: 32px;
    width: 100%;
    }</style>
    <form method="get" action="/search">
        <div class="form-row">
            <div class="form-group col-md-3">

                <label for="searchbrand">Марка и модель</label>
                <select id="searchbrand"  name="brand" class="form-control" onchange="loadModels()">
                    <option value="">не выбран</option>
                    <option value="Kia">Kia</option>
                    <option value="Mercedes">Mercedes</option>
                    <option value="BMW">BMW</option>
                    <option value="Hyundai">Hyundai</option>
                    <option value="Renault">Renault</option>
                    <option value="Chevrolet">Chevrolet</option>
                    <option value="Porshe">Porshe</option>
                    <option value="Toyota">Toyota</option>
                    <option value="Lexus">Lexus</option>
                    <option value="Honda">Honda</option>


                </select>
            </div>

            <div class="form-group">
                <label for="searchModel">Марка и модель</label>
                <select id="searchModel" name="modell" class="form-control" >
                    <option value="">не выбран</option>

                </select>


            </div>
            <div class="form-group col-md-3">
                <label for="searchWord">Поиск по объявлениям</label>
                <select id="searchCity" name="searchCity" class="form-control">
                    <option value="">Город не выбран</option>

                    <option value="Актау">Актау</option>
                    <option value="Актобе">Актобе</option>
                    <option value="Алматы">Алматы</option>
                    <option value="Астана">Астана</option>
                    <option value="Атырау">Атырау</option>
                    <option value="Жанаозен">Жанаозен</option>
                    <option value="Жезказган">Жезказган</option>
                    <option value="Караганда">Караганда</option>
                    <option value="Костанай">Костанай</option>
                    <option value="Кульсары">Кульсары</option>
                    <option value="Кызылорда">Кызылорда</option>
                    <option value="Павлодар">Павлодар</option>
                    <option value="Тараз">Тараз</option>
                    <option value="Темиртау">Темиртау</option>
                    <option value="Уральск">Уральск</option>
                    <option value="Павлодар">Павлодар</option>
                    <option value="Усть-Каменогорск">Усть-Каменогорск</option>
                    <option value="Шымкент">Шымкент</option>
                    <option value="Экибастуз">Экибастуз</option>
                    <option value="Кокшетау">Кокшетау</option>
                    <option value="Талдыкорган">Талдыкорган</option>
                    <option value="Петропавловск">Петропавловск</option>
                    <option value="Семей">Семей</option>

                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="searchTransmission">Коробка передач</label>
                <select id="searchTransmission" name="searchTransmission" class="form-control">
                    <option value="">Коробка передач не выбрана</option>
                    <option value="Механика">Механика</option>
                    <option value="Автомат">Автомат</option>
                    <option value="Робот">Робот</option>
                    <option value="Вариатор">Вариатор</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="searchcolor">Цвет кузова</label>
                <select id="searchcolor"  name="searchcolor" class="form-control">
                    <option value="">Цвет не выбран</option>
                    <option value="Чёрный">Чёрный</option>
                    <option value="Белый">Белый</option>
                    <option value="Серый">Серый</option>
                    <option value="Серебристый">Серебристый</option>
                    <option value="Синий">Синий</option>
                    <option value="Красный">Красный</option>
                    <option value="Зелёный">Зелёный</option>
                    <option value="Жёлтый">Жёлтый</option>
                    <option value="Оранжевый">Оранжевый</option>
                    <option value="Фиолетовый">Фиолетовый</option>
                    <option value="Коричневый">Коричневый</option>
                    <option value="Розовый">Розовый</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="searchbody">Кузов</label>
                <select id="searchbody"  name="searchbody" class="form-control">
                    <option value="">Кузов не выбран</option>

                    <option value="Седан">Седан</option>
                    <option value="Хэтчбек">Хэтчбек</option>
                    <option value="Универсал">Универсал</option>
                    <option value="Лифтбэк">Лифтбэк</option>
                    <option value="Кабриолет">Кабриолет</option>
                    <option value="Купе">Купе</option>
                    <option value="Внедорожник">Внедорожник</option>
                    <option value="Кроссовер">Кроссовер</option>
                    <option value="Пикап">Пикап</option>
                    <option value="Фургон">Фургон</option>
                    <option value="Минивэн">Минивэн</option>
                    <option value="Родстер">Родстер</option>

                </select>

        </div>
            <div class="form-group">
                <label for="searchlitr">Объем</label>
                <select id="searchlitr"  name="searchlitr" class="form-control">
                    <option value="">Объем не выбран</option>

                    <option value="1.0 (бензин)">1.0 (бензин)</option>
                    <option value="1.2 (бензин)">1.2 (бензин)</option>
                    <option value="1.4 (бензин)">1.4 (бензин)</option>
                    <option value="1.6 (бензин)">1.6 (бензин)</option>
                    <option value="1.8 (бензин)">1.8 (бензин)</option>
                    <option value="2.0 (бензин)">2.0 (бензин)</option>
                    <option value="2.2 (бензин)">2.2 (бензин)</option>
                    <option value="2.5 (бензин)">2.5 (бензин)</option>
                    <option value="3.0 (бензин)">3.0 (бензин)</option>
                    <option value="4.0 (бензин)">4.0 (бензин)</option>
                    <option value="5.0 (бензин)">5.0 (бензин)</option>
                    <option value="1.0 (газ)">1.0 (газ)</option>
                    <option value="1.2 (газ)">1.2 (газ)</option>
                    <option value="1.4 (газ)">1.4 (газ)</option>
                    <option value="1.6 (газ)">1.6 (газ)</option>
                    <option value="1.8 (газ)">1.8 (газ)</option>
                    <option value="2.0 (газ)">2.0 (газ)</option>
                    <option value="2.2 (газ)">2.2 (газ)</option>
                    <option value="2.5 (газ)">2.5 (газ)</option>
                    <option value="3.0 (газ)">3.0 (газ)</option>
                    <option value="4.0 (газ)">4.0 (газ)</option>
                    <option value="5.0 (газ)">5.0 (газ)</option>
                    <option value="1.0 (дизель)">1.0 (дизель)</option>
                    <option value="1.2 (дизель)">1.2 (дизель)</option>
                    <option value="1.4 (дизель)">1.4 (дизель)</option>
                    <option value="1.6 (дизель)">1.6 (дизель)</option>
                    <option value="1.8 (дизель)">1.8 (дизель)</option>
                    <option value="2.0 (дизель)">2.0 (дизель)</option>
                    <option value="2.2 (дизель)">2.2 (дизель)</option>
                    <option value="2.5 (дизель)">2.5 (дизель)</option>
                    <option value="3.0 (дизель)">3.0 (дизель)</option>
                    <option value="4.0 (дизель)">4.0 (дизель)</option>
                    <option value="5.0 (дизель)">5.0 (дизель)</option>
                </select>
            </div>

            <div class="form-group col-md-3">
                <label for="searchYearFrom">Год от</label>
                <div class="input-group mb-3">
                <select id="searchYearFrom" name="yearFrom" class="form-control">

                    <option value="">Не выбран</option>
                    <option value="2024">2024</option>
                    <option value="2023">2023</option>
                    <option value="2022">2022</option>
                    <option value="2021">2021</option>
                    <option value="2020">2020</option>
                    <option value="2019">2019</option>
                    <option value="2018">2018</option>
                    <option value="2017">2017</option>
                    <option value="2016">2016</option>
                    <option value="2015">2015</option>
                    <option value="2014">2014</option>
                    <option value="2013">2013</option>
                    <option value="2012">2012</option>
                    <option value="2011">2011</option>
                    <option value="2010">2010</option>
                    <option value="2009">2009</option>
                    <option value="2008">2008</option>
                    <option value="2007">2007</option>
                    <option value="2006">2006</option>
                    <option value="2005">2005</option>
                    <option value="2004">2004</option>
                    <option value="2003">2003</option>
                    <option value="2002">2002</option>
                    <option value="2001">2001</option>
                    <option value="2000">2000</option>
                    <option value="1999">1999</option>
                    <option value="1998">1998</option>
                    <option value="1997">1997</option>
                    <option value="1996">1996</option>
                    <option value="1995">1995</option>
                    <option value="1994">1994</option>


                </select>


                <select id="searchYearTo" name="yearTo" class="form-control">

                    <option value="">Не выбран</option>
                    <option value="2024">2024</option>
                    <option value="2023">2023</option>
                    <option value="2022">2022</option>
                    <option value="2021">2021</option>
                    <option value="2020">2020</option>
                    <option value="2019">2019</option>
                    <option value="2018">2018</option>
                    <option value="2017">2017</option>
                    <option value="2016">2016</option>
                    <option value="2015">2015</option>
                    <option value="2014">2014</option>
                    <option value="2013">2013</option>
                    <option value="2012">2012</option>
                    <option value="2011">2011</option>
                    <option value="2010">2010</option>
                    <option value="2009">2009</option>
                    <option value="2008">2008</option>
                    <option value="2007">2007</option>
                    <option value="2006">2006</option>
                    <option value="2005">2005</option>
                    <option value="2004">2004</option>
                    <option value="2003">2003</option>
                    <option value="2002">2002</option>
                    <option value="2001">2001</option>
                    <option value="2000">2000</option>
                    <option value="1999">1999</option>
                    <option value="1998">1998</option>
                    <option value="1997">1997</option>
                    <option value="1996">1996</option>
                    <option value="1995">1995</option>
                    <option value="1994">1994</option>


                </select>
            </div>
            </div>
            <div class="form-group col-md-3">
                <label for="searchmile">Пробег до</label>
                <div class="input-group mb-3">
                    <input type="number"  class="form-control" id="mile" name="mile">

                </div>
            </div>
            <div class="form-group col-md-3">
                <label for="priceFrom">Цена от и до</label>
                <div class="input-group mb-3">
                    <div class="input-group mb-3">
                    <input type="number" class="form-control" id="priceFrom" name="priceFrom">
                    <input type="number" class="form-control" id="priceTo" name="priceTo">
                </div>
            </div>

            </div>
            <div class="form-group  col-md-3">
                <label for="searchcountry">Растоможен</label>
                <select id="searchcountry"  name="searchcountry" class="form-control">
                    <option value="">Растоможка не выбран</option>

                    <option value="Да">Да</option>
                    <option value="Нет">Нет</option>


                </select>
            </div>
            <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
        </div>

    </form>

    <hr>
    <div class="row row-cols-1 row-cols-md-4">

    <#list products as product>

            <a href="/product/${product.id}" class="product-link">
                <div class="col mb-4"  >
                    <div class="card" style="background-color: gray;  height: 250px;">
                        <img src="/images/${product.previewImageId}" class="card-img-top" alt="${product.brand}">
                        <div class="card-body">
                            <h5 class="card-title">${product.brand} ${product.modell} ${product.year}</h5>
                            <p class="card-text">${product.price} ₸
                            <br>  ${product.city}</p>
                        </div>

                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>


    <div class="containerhd">

        <div class="cart text-dark bg-light my-3 p-3" style="font-size: 0.8em;">
            <hr>
        <h6>SellCar – быстрая покупка, продажа и обслуживание автомобилей в Казахстане</h6>
        <p>
            Если вы ищете надежный сервис для покупки и продажи автомобилей различных марок и моделей, вы попали по адресу. На нашем сайте собраны десятки тысяч актуальных объявлений о продаже авто с пробегом и новых автомобилей. Вы можете найти предложения как от частных лиц, так и от официальных дилеров в Казахстане, ознакомиться с детальной информацией, включая фотографии, характеристики, среднюю рыночную стоимость, пробег и контактные данные продавца для мгновенной связи.
        </p>
        <h6>Особенности сайта:</h6>
        <ul>
            <li>Возможность создания и размещения собственных объявлений о продаже автомобилей;</li>
            <li>Просмотр объявлений от других пользователей с фотографиями и описанием;</li>
            <li>Сравнение нескольких вариантов автомобилей по цене, техническим характеристикам и опциям;</li>
            <li>Отслеживание актуальных специальных предложений для более выгодных покупок.</li>
        </ul>
        <h6>Дополнительные возможности:</h6>
        <ul>
            <li>Выбор из огромного ассортимента новых автомобилей от официальных дилеров;</li>
            <li>Возможность оформления автокредита с помощью кредитного калькулятора;</li>
            <li>Использование фильтров для удобного поиска автомобилей с учетом различных параметров.</li>
        </ul>
        <p>
            На сайте также предусмотрена возможность приобретения автомобилей в кредит, а также различные фильтры для облегчения поиска, включая фильтры по марке, году выпуска, пробегу, типу топлива, кузову и многим другим параметрам. Мы также предоставляем функцию "Только проверенные авто" для безопасной покупки автомобилей с пробегом с гарантией. Благодаря различным активным функциям, таким как "Торг" и "Обмен", у вас есть возможность найти наиболее привлекательные предложения.
        </p>
    </div>
</div>

    <br><br><br><br><br><br>
    <div class="containerhd">

        <div style="font-size: 0.8em;">
            <table>

                <tr>
                    <td><a href="/">Главная</a></td>
                    <td><a href="/search">Поиск авто</a></td>


                </tr>
                <tr> <td>  <a href="/my/products">Создать объявление</a></td>
                    <td>    <a href="/autocenter">Авттоценры</a></td>


                </tr>
                <td> <a href="/newauto">Новое авто</a></td>
                <td> <a href="/profile">Профиль</a></td>



            </table> </div>
        <div  class="social-media-icons " align="left">

            <h6>Социальные сети</h6><br>
            <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewBox="0 0 24 24" class="inline-icon" data-v-5364796e=""><path d="M16.6 5.82s.51.5 0 0A4.28 4.28 0 0 1 15.54 3h-3.09v12.4a2.59 2.59 0 0 1-2.59 2.5c-1.42 0-2.6-1.16-2.6-2.6 0-1.72 1.66-3.01 3.37-2.48V9.66c-3.45-.46-6.47 2.22-6.47 5.64 0 3.33 2.76 5.7 5.69 5.7 3.14 0 5.69-2.55 5.69-5.7V9.01a7.35 7.35 0 0 0 4.3 1.38V7.3s-1.88.09-3.24-1.48"></path></svg>

            <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewBox="0 0 24 24" data-v-5364796e=""><path d="M19.05 4.91A9.82 9.82 0 0 0 12.04 2c-5.46 0-9.91 4.45-9.91 9.91 0 1.75.46 3.45 1.32 4.95L2.05 22l5.25-1.38c1.45.79 3.08 1.21 4.74 1.21 5.46 0 9.91-4.45 9.91-9.91 0-2.65-1.03-5.14-2.9-7.01m-7.01 15.24c-1.48 0-2.93-.4-4.2-1.15l-.3-.18-3.12.82.83-3.04-.2-.31a8.26 8.26 0 0 1-1.26-4.38c0-4.54 3.7-8.24 8.24-8.24 2.2 0 4.27.86 5.82 2.42a8.18 8.18 0 0 1 2.41 5.83c.02 4.54-3.68 8.23-8.22 8.23m4.52-6.16c-.25-.12-1.47-.72-1.69-.81-.23-.08-.39-.12-.56.12-.17.25-.64.81-.78.97-.14.17-.29.19-.54.06-.25-.12-1.05-.39-1.99-1.23-.74-.66-1.23-1.47-1.38-1.72-.14-.25-.02-.38.11-.51.11-.11.25-.29.37-.43s.17-.25.25-.41c.08-.17.04-.31-.02-.43s-.56-1.34-.76-1.84c-.2-.48-.41-.42-.56-.43h-.48c-.17 0-.43.06-.66.31-.22.25-.86.85-.86 2.07s.89 2.4 1.01 2.56c.12.17 1.75 2.67 4.23 3.74.59.26 1.05.41 1.41.52.59.19 1.13.16 1.56.1.48-.07 1.47-.6 1.67-1.18.21-.58.21-1.07.14-1.18s-.22-.16-.47-.28"></path></svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewBox="0 0 24 24" class="inline-icon" data-v-5364796e=""><path fill-rule="evenodd" d="M19.043 6.385a2.26 2.26 0 0 1 1.586 1.587c.386 1.408.37 4.344.37 4.344s0 2.921-.37 4.33a2.26 2.26 0 0 1-1.586 1.586c-1.409.37-7.043.37-7.043.37s-5.62 0-7.043-.385a2.26 2.26 0 0 1-1.586-1.586C3 15.237 3 12.3 3 12.3s0-2.92.37-4.329A2.3 2.3 0 0 1 4.957 6.37C6.366 6 12 6 12 6s5.634 0 7.043.385m-4.152 5.917L10.206 15V9.603z" clip-rule="evenodd"></path></svg>
        </div >

    </div>
<script>
        function loadModels() {
        var selectedBrand = document.getElementById("searchbrand").value;
        var modelSelect = document.getElementById("searchModel");

        // Очищаем список моделей
        modelSelect.innerHTML = "<option value=''>не выбрана</option>";

        // Добавляем новые модели в зависимости от выбранной марки
        switch(selectedBrand) {
        case "Kia":
        addOptions(modelSelect, ["Rio", "Optima", "K5", "K3", "K7", "K9", "Cerato", "Stinger", "Sportage", "Niro", "Soul", "Sorento"]);
        break;

        case "Mercedes":
        addOptions(modelSelect, ["C-Class", "S-Class", "E-Class", "GLE", "GL-Class", "GLS", "GLC", "V-Class"]);
        break;

        case "BMW":
        addOptions(modelSelect, ["3 Series", "5 Series", "6 Series", "M2", "M3", "M4", "M5", "M6", "X2", "X4", "X5", "X6"]);
        break;

        case "Hyundai":
        addOptions(modelSelect, ["Sonata", "Elantra", "Azera", "Genesis G90", "Genesis G80", "Accent", "i30 Wagon", "i40 Wagon", "Elantra Touring", "Sonata Wagon", "Veloster", "Ioniq", "Tucson", "Santa Fe", "Palisade", "Kona", "Venue", "Nexo", "Genesis Coupe"]);
        break;

        case "Chevrolet":
        addOptions(modelSelect, ["Malibu", "Impala", "Volt", "Sonic", "Camaro", "Corvette", "Equinox", "Traverse", "Trax", "Tahoe", "Suburban", "Silverado", "Colorado", "Bolt EV"]);
        break;

        case "Porsche":
        addOptions(modelSelect, ["Panamera", "Taycan", "Porsche 911", "Porsche 911 Turbo", "Cayenne", "Macan Turbo", "Cayenne Coupe", "Cayman", "Porsche 911 GT3", "Boxster", "Spyder", "Porsche Panamera Sport Turismo"]);
        break;

        case "Toyota":
        addOptions(modelSelect, ["Camry", "Avalon", "Yaris", "Corolla", "Tacoma", "Tundra", "Prius", "RAV4", "Highlander", "4Runner", "C-HR", "Sequoia", "Land Cruiser", "Sienna", "Supra"]);
        break;

        case "Lexus":
        addOptions(modelSelect, ["ES", "IS", "LS", "GS", "RX", "NX", "GX", "RX L", "LX", "UX", "LC", "RC", "RC F", "LC Convertible", "CT"]);
        break;

        case "Renault":
        addOptions(modelSelect, ["Fluence", "Talisman", "Logan", "Clio", "Megane", "Zoe", "Captur", "Kadjar", "Arkana", "Duster", "Koleos", "Scenic", "Espace", "Grand Scenic", "Kangoo"]);
        break;

        case "Honda":
        addOptions(modelSelect, ["Civic", "Accord", "Insight", "Clarity", "CR-Z", "CR-V", "HR-V", "Crosstour", "Element", "Passport", "Pilot", "Fit", "Odyssey", "Ridgeline"]);
        break;
    }

        // Показываем поле выбора модели
        document.getElementById("modelDiv").style.display = "block";
    }

        function addOptions(selectElement, optionsArray) {
        optionsArray.forEach(function (option) {
            var optionElement = document.createElement("option");
            optionElement.text = option;
            optionElement.value = option;
            selectElement.appendChild(optionElement)
        });
    }

    </script>
</body>
    <#include "footer_template.ftlh">
</@t.template>
