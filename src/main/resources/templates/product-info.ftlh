<#import "blocks/template.ftlh" as t>
<@t.template user>
<body style="background-color: #f8f9fa;">
    <style>
        .container-bank {
            border-radius: 15px;
            background-color: white;
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .form-container-bank {
            flex: 1;
            margin-right: 20px;
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

        .menu-items ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        a{
            color: gray;
        }
    </style>
    <div style="background-color: white;">
<div class="row" >
    <div class="col-md-6">
        <img id="mainImage" src="/images/${images[0].id}" class="img-fluid" alt="Product Image">
        <div class="mt-3">
            <#list images as image>
                <a href="#" onclick="changeMainImage('${image.id}')"><img src="/images/${image.id}" class="img-thumbnail" alt="Thumbnail ${image_index + 1}" style="width: 100px; height: 100px;"></a>
            </#list>
        </div>
    </div>
    <div class="col-md-6">
        <h1>${product.brand}  ${product.modell}  | <span class="highlight">${product.year} год</span></h1>
        <h3>${product.price} ₸</h3>

        <table>
            <tr>
                <td><span class="highlight">Марка и модель</span></td>
                <td>${product.brand} |${product.modell}   </td>
            </tr>
            <tr>
                <td><span class="highlight">Город</span></td>
                <td>${product.city}</td>
            </tr>
            <tr>
                <td><span class="highlight">Кузов</span></td>
                <td>${product.body}</td>
            </tr>
            <tr>
                <td><span class="highlight">Коробка передач</span></td>
                <td>${product.transmission}</td>
            </tr>
            <tr>
                <td><span class="highlight">Объем двигателя</span></td>
                <td>${product.litr} литра</td>
            </tr>
            <tr>
                <td><span class="highlight">Растаможен в Казахстане</span></td>
                <td>${product.country}</td>
            </tr>
            <tr>
                <td><span class="highlight">Пробег</span></td>
                <td>${product.mile}</td>
            </tr>
            <tr>
                <td><span class="highlight">Цвет</span></td>
                <td>${product.color}</td>
            </tr>
            <tr>
                <td><span class="highlight">Руль</span></td>
                <td>${product.rudder}</td>
            </tr>
            <tr>
                <td><span class="highlight">Растаможен в Казахстане</span></td>
                <td>${product.country}</td>
            </tr>
        </table>
    </div>

</div>

<hr>
    <div class="row" >
        <div class="col-md-12">
            <p>${product.description}</p>
        </div>
    </div>
    <hr>
    <div class="row" >
        <div class="col-md-12">
            <h3>Комментарий продавца</h3><br>
            <p>${product.comment}</p>
        </div>
    </div>
<p style="text-align: center">
    <a href="/user/${product.user.id}">
        <img src="/static/images/avatar.png" alt="mdo" width="32" height="32" class="rounded-circle"> Страница продовца
    </a>
<hr>

    <div class="container-bank mt-5">
        <div class="form-container-bank">
            <h2>Подбор автокредита</h2>
            <form>
                <div class="form-group">
                    <label for="productPrice">Стоимость автомобиля</label>
                    <input type="text" class="form-control" id="productPrice" name="productPrice" value="${product.price}" readonly>
                </div>
                <div class="form-group">
                    <label for="downPayment">Первоначальный взнос</label>
                    <input type="text" class="form-control" id="downPayment" name="downPayment" value="1" oninput="calculateMonthlyPayment()">
                </div>
                <div class="form-group">
                    <label for="loanTerm">Срок кредита</label>
                    <select class="form-control" id="loanTerm" name="loanTerm" onchange="calculateMonthlyPayment()">
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

        <div class="result-container">
            <h6>SellCar Сервис отправляет заявки в несколько банков и предоставляет решение.</h6>
            <h6>Ежемесячный платеж*</h6>
                <input style="background-color:#0292fe" type="text" class="form-control" id="monthlyPayment" name="monthlyPayment" readonly>
        </div>
    </div>
        <script>
            function changeMainImage(imageId) {
                document.getElementById('mainImage').src = "/images/" + imageId;
            }
        </script>
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
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Похожие продукты</h2>
            <div class="overflow-auto" style="overflow-x: auto;">
                <#list similarProducts as similarProduct>
                    <#if similarProduct.id != currentProductId> <!-- Проверяем, что текущий продукт не совпадает с продуктом на странице -->
                        <a href="/product/${similarProduct.id}" class="product-link">
                            <div class="card text-white bg-dark my-3 product" style="width: 250px;">
                                <img src="/images/${similarProduct.previewImageId}" class="card-img-top" style="height: 100px;">
                                <div class="card-body">
                                    <h5 class="card-title">${similarProduct.modell} ${similarProduct.year} </h5>
                                    <p class="card-text">${similarProduct.price} ₸</p>
                                </div>
                                <div class="card-footer">
                                    ${similarProduct.city}
                                </div>
                            </div>
                        </a>
                    </#if>
                </#list>
            </div>
            <#if similarProducts?size == 0>
                <h3 style="text-align: center">Похожих продуктов не найдено</h3>
            </#if>
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
    <#include "footer_template.ftlh">
</body>
</@t.template>