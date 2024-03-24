<#import "blocks/template.ftlh" as t>
<@t.template user>
    <style xmlns="http://www.w3.org/1999/html">
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {

            text-align: left;
            padding: 8px;
            color: #333333; /* цвет текста */
        }

        .containerhd {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
        }

        a{
    color: #333333; /* цвет текста */
}
        .form-container-bank {
            padding: 15px;
     flex: 1;
     margin-right: 20px;
 }
        .container-bank {
            border-radius: 15px;
            background-color: white;
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }
        .button-container {
            text-align: right; /* Выравнивание содержимого по правому краю */
        }
        .button-style {
            display: inline-block;
            padding: 10px 20px; /* Задайте подходящие отступы для кнопки */
            border-radius: 5px; /* Задайте скругление углов */
            text-decoration: none; /* Убираем стандартное подчеркивание ссылок */
            background-color: #007BFF;

        }

        .button-style:hover {
            background-color: #007BFF; /* Цвет фона при наведении */
            color: #fff; /* Цвет текста при наведении */
        }

        .button-style svg {
            margin-left: 5px; /* Отступ между текстом и иконкой */
        }

        .result-container {
            flex: 1;
        }

        .result-container h5 {
            margin-top: 0;
        }
        .result-container h6 {
            color: gray;
            margin-top: 0;
        }
        .containerhd {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
        }
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

    </style>
<body style="background-color: #f8f9fa;">
    <h1 style="text-align: center">Поиск товаров</h1><hr>
    <form method="get" action="/">
        <div class="form-row">

            <div class="form-group col-md-3">
                <label for="searchCity">Город</label>

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
                <label for="searchbrand">Марка автомобиля</label>
                <select id="searchbrand" name="brand" class="form-control" onchange="loadModels()">
                    <option value="">не выбрана</option>
                    <option value="Kia">Kia</option>
                    <option value="Mercedes">Mercedes</option>
                    <option value="BMW">BMW</option>
                    <option value="Hyundai">Hyundai</option>
                    <option value="Renault">Renault</option>
                    <option value="Chevrolet">Chevrolet</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Toyota">Toyota</option>
                    <option value="Lexus">Lexus</option>
                    <option value="Honda">Honda</option>
                </select>
            </div>

            <div class="form-group" id="modelDiv" style="display: none;">
                <label for="searchModel">Модель автомобиля</label>
                <select id="searchModel" name="modell" class="form-control">
                    <option value="">не выбрана</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="priceFrom">Цена от и до</label>
                <div class="input-group mb-3">
                    <div class="input-group mb-3">
                        <input type="number" class="form-control" id="priceTo" name="priceTo">
                        <input type="number" class="form-control" id="priceFrom" name="priceFrom">

                    </div>
                </div>

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

         </div>  <div class="button-container"> <a href="/search" class="button-style mr-px px-6 bg-azure-15 flex items-center whitespace-nowrap" as="button">
            <span data-v-7833d392="" class="uppercase text-button1 text-azure font-600 mr-2">Расширенный поиск</span>
            <svg data-v-7833d392="" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" class="text-azure">
                <path fill-rule="evenodd" d="M11 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0M7.17 7a3.001 3.001 0 1 0 0-2H3v2zM3 17h2.17a3.001 3.001 0 1 1 0 2H3zm5 2a1 1 0 1 1 0-2 1 1 0 0 1 0 2m-5-8v2h9v-2zm11-6h2v2h-2zm-2 12v2h9v-2zm6.83-6a3.001 3.001 0 1 0 0 2H21v-2zM17 12a1 1 0 1 0-2 0 1 1 0 0 0 2 0" clip-rule="evenodd"></path>
                <circle cx="20" cy="4" r="3" fill="#FF522D"></circle>
            </svg>
        </a> </div>

        <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
    </form>
    <hr>
    <h5>Объявления от пользователей</h5>
    <div class="row row-cols-1 row-cols-md-4">
        <#list products as product>

                <a href="/product/${product.id}" class="product-link">
                    <div class="col mb-4"  >
                    <div class="card " style="background-color: gray;  height: 250px;">
                        <img src="/images/${product.previewImageId}" class="card-img-top" alt="${product.brand}">
                        <div class="card-body">
                            <h5 class="card-title">${product.brand} ${product.modell} ${product.year}</h5>
                            <p class="card-text">${product.price} ₸<br>
                                ${product.city}</p>
                        </div>

                    </div>
                    </div>
                </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>

    <br><br><br><br><br><br>

        <!-- Длинная ячейка слева -->

    <h4>Подбор автокредита</h4>
    <div class="row">

        <!-- Ячейка слева -->
        <div class="col-md-6">

            <div class="container-bank mt-6" style="position: relative; right: 5px; background-color: white; border-radius: 5%; font-size: 0.8em;">
                <div class="form-container-bank">
                    <br>

                    <form>
                        <div class="form-group">
                            <label for="productPrice">Стоимость автомобиля</label>
                            <input   type="text" class="form-control" id="productPrice" name="productPrice" value="1000000">
                        </div>
                        <div class="form-group">
                            <label for="downPayment">Первоначальный взнос</label>
                            <input  type="text" class="form-control" id="downPayment" name="downPayment" value="1" oninput="calculateMonthlyPayment()">
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="loanTerm">Срок кредита</label>
                            <select style="background-color:#0292fe" class="form-control" id="loanTerm" name="loanTerm" onchange="calculateMonthlyPayment()">
                                <option value="12">12 мес</option>
                                <option value="24">24 мес</option>
                                <option value="36">36 мес</option>
                                <option value="48">48 мес</option>
                                <option value="60">60 мес</option>
                                <option value="72">72 мес</option>
                                <option value="84">84 мес</option>
                            </select>
                        </div>
                    </form>
                </div>

                <div class="result-container" style="padding: 55px;">
                    <h6>SellCar Сервис отправляет заявки в несколько банков и предоставляет решение.</h6>
                    <h6>Ежемесячный платеж*</h6>
                    <input style="background-color:#0292fe" type="text" class="form-control" id="monthlyPayment" name="monthlyPayment" readonly>
                </div>
            </div>
        </div>

        <!-- Ячейка справа -->
        <div class="col-md-6">
            <!-- Длинная ячейка сверху -->
            <div class="container-bank mt-6" style="position: relative; right: 5px; background-color: white; border-radius: 5%; font-size: 0.8em;">
                <div class="form-container-bank" style="padding: 15px;">
                    <h4>Кредитные предложения на выбор</h4>
                    <p>Увеличиваем вероятность одобрения</p>
                    <img width="70" height="40" src="https://www.klookva.ru/upload/iblock/ecc/i4ec5budebrv00gyx4245sqn40rieb9k/mobile_4_.png">

                </div>
            </div>
            <br>
            <!-- Короткая ячейка снизу -->
            <div class="container-bank mt-6" style="position: relative; right: 5px; background-color: white; border-radius: 5%; font-size: 0.8em;">
                <div class="form-container-bank" style="padding: 15px;">
                    <h4>Безопасность</h4>
                    <p>Надежные сервисы защиты персональных данных</p>
                    <img width="50" height="50" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS534pMTDlPhadToeFYBeIPbyRyFLgsH43UHKgJ4jrlFw&sg">

                </div>
            </div>
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
        function calculateMonthlyPayment() {
            var productPrice = parseFloat(document.getElementById('productPrice').value.replace(/\s+/g, '').replace(',', '.'));
            var downPayment = parseFloat(document.getElementById('downPayment').value.replace(/\s+/g, '').replace(',', '.'));
            var loanTerm = parseInt(document.getElementById('loanTerm').value);
            var annualInterestRate = 0.10; // Процентная ставка, замените на вашу реальную ставку

            var monthlyInterestRate = annualInterestRate / 12;
            var totalLoanAmount = productPrice - downPayment;
            var monthlyPayment = (totalLoanAmount * monthlyInterestRate) / (1 - Math.pow(1 + monthlyInterestRate, -loanTerm));

            document.getElementById('monthlyPayment').value = monthlyPayment.toFixed(2).replace(/\B(?=(\d{3})+(?!\d))/g, " ") + " ₸/мес";
        }

        // Вызовите функцию один раз при загрузке страницы, чтобы установить начальное значение ежемесячного платежа
        calculateMonthlyPayment();
    </script>

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

