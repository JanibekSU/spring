<#import "blocks/template.ftlh" as t>
<@t.template user>
<head xmlns="http://www.w3.org/1999/html">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Новые авто в автосалонах</title>
    <!-- Подключаем Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        a{
            color:#333333;
        }
        .btn-secondary {
            background-color: rgba(169, 169, 169, 0.5);
            border-color: rgba(169, 169, 169, 0.5);
            margin-right: 10px; /* Добавляем немного расстояния между кнопками */
        }

        .btn-secondary:hover {
            background-color: rgba(169, 169, 169, 0.7);
            border-color: rgba(169, 169, 169, 0.7);
        }

        .btn-secondary:active {
            background-color: rgba(169, 169, 169, 0.8); /* Цвет немного темнее при нажатии */
            border-color: rgba(169, 169, 169, 0.8);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {

            text-align: left;
            padding: 15px;

padding-right: 100px;

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

        .menu-items ul li {
            margin-right: 15px;
        }


        .social-media-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 5px;

        }

        .social-media-container a {
            text-decoration: none;
            color: #333;
        }

        .social-media-container a:hover {
            color: #007bff;
        }

        .social-media-icons svg {
            width: 20px;
            height: 20px;
            fill: #333;
            margin-right: 5px;
        }

        .support-chat svg {
            width: 20px;
            height: 20px;
            fill: #333;
            margin-right: 5px;
        }

             /* Стили для формы */

        /* Стили для формы */
        .form-container {
            background-color: #6fa3b8; /* Темно-серый оттенок синего */
            border-radius: 5%; /* Окружность 5% */
            padding: 20px; /* Поля вокруг элементов формы */
            width: 800px; /* Ширина формы */
            height: 400px;
            margin: 0 auto; /* Выравнивание по центру */
            display: flex; /* Располагаем элементы формы внутри flex-контейнера */
        }

        /* Стили для меток */
        label {
            color: white; /* Белый цвет текста */
            display: block; /* Размещение меток на новой строке */
            margin-bottom: 10px; /* Промежуток между метками */
        }

        /* Стили для полей ввода */
        input[type="text"],
        input[type="tel"],
        select {
            width: 100%; /* Ширина полей равна 100% */
            padding: 8px; /* Поля внутри элементов ввода */
            border-radius: 5px; /* Закругление углов полей */
            border: 1px solid #ccc; /* Светло-серая граница полей */
            box-sizing: border-box; /* Учитываем границы в общей ширине */
            margin-bottom: 10px; /* Промежуток между полями */
        }

        /* Стили для кнопки отправки */
        input[type="submit"] {
            background-color: #dbe2ea; /* Цвет фона кнопки */
            color: white; /* Белый цвет текста кнопки */
            border: none; /* Убираем границы */
            padding: 10px; /* Поля внутри кнопки */
            border-radius: 5px; /* Закругление углов кнопки */
            cursor: pointer; /* Курсор при наведении на кнопку */
            width: 100%; /* Ширина кнопки равна 100% */
        }

        /* Стили для изображения */
        .form-image {
            margin-right: 60px; /* Отступ слева для изображения */
        }

</style>
</head><body style="background-color: #f8f9fa;">
<div class="container mt-5" id="icon-grid">
    <h1>Новые авто в автосалонах</h1>

    <!-- Панель поиска -->
    <div class="row mt-3 mb-3" id="icon-grid">
        <div class="col-md-6">
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-secondary  active" onclick="filterCars(1)">
                    <input   type="radio" name="options" id="option1" checked> <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0 0 50 50">
                        <path d="M 25 1 C 11.757813 1 1 11.757813 1 25 C 1 38.242188 11.757813 49 25 49 C 38.242188 49 49 38.242188 49 25 C 49 11.757813 38.242188 1 25 1 Z M 25 3 C 37.164063 3 47 12.835938 47 25 C 47 37.160156 37.164063 47 25 47 C 12.839844 47 3 37.160156 3 25 C 3 12.835938 12.839844 3 25 3 Z M 23.46875 3.71875 L 21.375 3.96875 L 21.15625 10.28125 L 22.78125 10.03125 L 22.9375 5.8125 L 24.40625 10.03125 L 25.59375 10.03125 L 27.0625 5.8125 L 27.21875 10.03125 L 28.84375 10.28125 L 28.625 3.96875 L 26.53125 3.71875 L 25 8.15625 Z M 38.78125 8.5625 L 35 13.5625 L 36.15625 14.625 L 40.34375 12.71875 L 37.5625 16.375 L 38.375 17.75 L 44.0625 15.125 L 43.25 13.75 L 39.96875 15.25 L 42.3125 12.1875 L 41.28125 10.90625 L 37.78125 12.53125 L 39.96875 9.65625 Z M 10.9375 9.3125 C 10.796875 9.324219 10.636719 9.355469 10.5 9.40625 C 10.242188 9.503906 10.015625 9.660156 9.84375 9.875 C 9.746094 9.996094 9.660156 10.128906 9.5625 10.25 C 9.054688 10.886719 8.539063 11.519531 8.03125 12.15625 C 7.59375 12.703125 7.15625 13.234375 6.71875 13.78125 C 6.691406 13.816406 6.652344 13.871094 6.625 13.90625 C 6.621094 13.910156 6.683594 13.933594 6.6875 13.9375 C 6.859375 14.074219 7.050781 14.207031 7.21875 14.34375 C 7.859375 14.855469 8.484375 15.363281 9.125 15.875 C 9.757813 16.382813 10.394531 16.898438 11.03125 17.40625 C 11.191406 17.535156 11.371094 17.683594 11.53125 17.8125 C 11.539063 17.820313 11.554688 17.851563 11.5625 17.84375 C 11.59375 17.804688 11.625 17.757813 11.65625 17.71875 C 12.089844 17.175781 12.535156 16.636719 12.96875 16.09375 C 13.492188 15.441406 14.007813 14.777344 14.53125 14.125 C 14.800781 13.789063 15.089844 13.484375 15.21875 13.0625 C 15.285156 12.84375 15.300781 12.597656 15.28125 12.375 C 15.195313 11.777344 14.835938 11.285156 14.28125 11.03125 C 13.726563 10.777344 13.082031 10.871094 12.59375 11.21875 C 12.554688 11.246094 12.507813 11.28125 12.46875 11.3125 C 12.550781 11.035156 12.601563 10.753906 12.53125 10.46875 C 12.464844 10.191406 12.296875 9.949219 12.09375 9.75 C 11.78125 9.445313 11.363281 9.28125 10.9375 9.3125 Z M 10.8125 10.90625 C 11.027344 10.890625 11.257813 10.960938 11.40625 11.125 C 11.566406 11.300781 11.613281 11.550781 11.5625 11.78125 C 11.503906 11.984375 11.347656 12.121094 11.21875 12.28125 C 10.960938 12.605469 10.695313 12.925781 10.4375 13.25 C 10.175781 13.574219 9.914063 13.894531 9.65625 14.21875 C 9.390625 14.007813 9.140625 13.804688 8.875 13.59375 C 8.773438 13.511719 8.664063 13.425781 8.5625 13.34375 C 8.558594 13.339844 8.679688 13.226563 8.6875 13.21875 C 9.179688 12.605469 9.664063 11.988281 10.15625 11.375 C 10.285156 11.214844 10.394531 11.019531 10.59375 10.9375 C 10.660156 10.910156 10.742188 10.910156 10.8125 10.90625 Z M 25 11 C 17.28125 11 11 17.28125 11 25 C 11 32.71875 17.28125 39 25 39 C 32.71875 39 39 32.71875 39 25 C 39 17.28125 32.71875 11 25 11 Z M 13 12.3125 C 13.289063 12.304688 13.535156 12.460938 13.65625 12.71875 C 13.761719 12.96875 13.730469 13.257813 13.5625 13.46875 C 13.394531 13.679688 13.226563 13.886719 13.0625 14.09375 C 12.605469 14.667969 12.144531 15.238281 11.6875 15.8125 C 11.664063 15.792969 11.617188 15.800781 11.59375 15.78125 C 11.46875 15.679688 11.34375 15.570313 11.21875 15.46875 C 11.003906 15.296875 10.808594 15.109375 10.59375 14.9375 C 11.007813 14.417969 11.398438 13.925781 11.8125 13.40625 C 12.015625 13.152344 12.234375 12.878906 12.4375 12.625 C 12.582031 12.445313 12.757813 12.320313 13 12.3125 Z M 25 13 C 31.640625 13 37 18.359375 37 25 L 25 25 L 25 37 C 18.359375 37 13 31.640625 13 25 L 25 25 Z"></path>
                    </svg>  BMW
                </label>
                <label class="btn btn-secondary " onclick="filterCars(2)">
                    <input   type="radio" name="options" id="option2"> <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0 0 48 48">
                        <path fill="#0277bd" d="M41.469,15.056c-1.203-0.68-2.468-1.23-3.747-1.732c-5.727-2.089-12.459-2.817-18.856-1.991 c-5.895,0.859-11.622,2.348-16.115,6.687c-2.148,2.121-3.427,5.31-2.376,8.37c1.371,3.724,5.027,6.201,8.287,7.642 c9.641,4.144,22.755,3.999,32.092-0.745c3.198-1.717,6.778-4.566,7.219-8.646C48.353,20.237,44.698,16.935,41.469,15.056z M19.877,16.732c0.806-1.685,2.236-3.664,4.213-3.696c2.612-0.02,5.131,0.233,7.57,0.694c0.092,0.018,0.184,0.034,0.275,0.053 c0.259,0.051,0.516,0.108,0.773,0.163c1.35,0.302,2.659,0.676,3.915,1.116c0.077,0.05,0.147,0.109,0.197,0.198 c0.122,0.278-0.122,0.458-0.259,0.638c-3.148,2.649-6.752,4.121-10.433,5.413c-1.871,0.491-3.757,1.374-5.84,0.883 c-0.487-0.131-0.928-0.474-1.201-0.982C18.569,19.675,19.269,18.073,19.877,16.732z M7.148,30.501 c-0.187,0.189-0.372,0.207-0.554,0.147c-1.754-1.15-3.542-2.775-4.328-4.909c-0.088-0.257-0.141-0.514-0.185-0.769 c-0.014-0.083-0.029-0.167-0.04-0.251c-0.03-0.251-0.045-0.501-0.037-0.747c0-0.029,0.003-0.058,0.003-0.086 c0.085-1.757,1.057-3.365,2.133-4.427c3.381-3.266,7.549-4.738,11.763-5.59c0.173,0,0.35,0.021,0.43,0.182l-0.061,0.245 C12.273,19.184,9.642,24.859,7.148,30.501z M27.573,32.382c-0.774,1.291-1.979,2.419-3.432,2.613 c-0.057,0-0.112,0.005-0.169,0.005c-0.541,0-1.078-0.017-1.614-0.037c-0.313-0.013-0.625-0.03-0.937-0.05 c-0.636-0.039-1.267-0.092-1.893-0.16c-0.554-0.061-1.106-0.128-1.653-0.212c-0.368-0.056-0.733-0.118-1.096-0.184 c-0.488-0.088-0.97-0.191-1.451-0.296c-1.366-0.304-2.691-0.677-3.959-1.125c-0.062-0.051-0.12-0.108-0.159-0.178 c-0.076-0.229,0.031-0.442,0.182-0.589c3.361-2.928,7.361-4.285,11.315-5.708c1.475-0.458,3.042-0.949,4.699-0.719 c0.684,0.098,1.368,0.606,1.612,1.293C29.382,29.063,28.394,30.747,27.573,32.382z M45.989,24.118 c-0.008,0.294-0.04,0.593-0.102,0.899c-0.024,0.11-0.057,0.217-0.087,0.325c-0.03,0.11-0.06,0.221-0.095,0.328 c-0.903,2.675-3.615,4.629-5.859,5.834c-2.149,1.092-4.583,1.94-7.177,2.531c-0.209,0.032-0.414,0.077-0.627,0.099 c-0.122-0.016-0.319,0.016-0.35-0.18l0.045-0.229c2.768-3.353,4.866-7.114,6.707-10.925c0.851-1.717,1.643-3.483,2.372-5.217 c0.106-0.131,0.213-0.196,0.335-0.245c0.117,0.011,0.222,0.054,0.329,0.091c1.366,0.925,3.142,2.409,4.005,4.302 c0.014,0.031,0.028,0.063,0.041,0.094c0.073,0.166,0.138,0.336,0.195,0.509c0.077,0.24,0.148,0.481,0.192,0.731 c0.006,0.032,0.006,0.065,0.012,0.096c0.042,0.267,0.064,0.539,0.064,0.817C45.992,24.024,45.99,24.071,45.989,24.118z"></path>
                    </svg> Hyundai
                </label>
                <label class="btn btn-secondary " onclick="filterCars(3)">
                    <input  type="radio" name="options" id="option3"> <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0 0 48 48">
                        <path fill="#b3bde2" d="M24,9C11.297,9,1,15.716,1,24s10.297,15,23,15c12.703,0,23-6.716,23-15S36.703,9,24,9z M24,36 C13.507,36,5,30.627,5,24c0-6.627,8.507-12,19-12s19,5.373,19,12C43,30.627,34.493,36,24,36z"></path><path fill="#b3bde2" d="M24,12c-3.314,0-6,5.373-6,12c0,6.627,2.686,12,6,12s6-5.373,6-12C30,17.373,27.314,12,24,12z M24,32 c-1.657,0-3-3.582-3-8s1.343-8,3-8s3,3.582,3,8S25.657,32,24,32z"></path><path fill="#7986cb" d="M21.001,24.039C21.001,24.026,21,24.013,21,24c0-4.418,1.343-8,3-8s3,3.582,3,8 c0,0.089-0.004,0.176-0.005,0.265c0.003,0,0.006,0,0.01,0.001C27.027,18.462,26.375,14,24,14c-2.5,0-3.011,4.597-3.007,10.04 C20.996,24.04,20.998,24.039,21.001,24.039z"></path><path fill="#b3bde2" d="M24,10c-8.837,0-16,3.134-16,7c0,3.866,7.163,7,16,7s16-3.134,16-7C40,13.134,32.837,10,24,10z M24,21c-6.627,0-12-2.265-12-4.75S17.373,12,24,12s12,1.765,12,4.25S30.627,21,24,21z"></path><path fill="#7986cb" d="M5 24c0-2.403 1.13-4.636 3.056-6.513C8.031 17.325 8 17.164 8 17c0-.615.2-1.209.541-1.778C5.006 17.253 3 20.207 3 24c0 7.184 9.455 10.746 16.936 11.718C11.397 34.542 5 29.745 5 24zM39.459 15.222C39.8 15.791 40 16.385 40 17c0 .164-.031.325-.056.487C41.87 19.364 43 21.597 43 24c0 5.745-6.397 10.542-14.936 11.718C35.545 34.746 45 31.184 45 24 45 20.207 42.994 17.253 39.459 15.222z"></path>
                    </svg>  Toyota
                </label>
                <label  class="btn btn-secondary " onclick="filterCars(4)">
                    <input  type="radio" name="options" id="option4"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0 0 48 48">
                        <path fill="#b3bde2" fill-rule="evenodd" d="M35.127,9.922l-0.935,1.458C40.227,14.479,43,18.483,43,24 c0.042,1.55-0.368,3.45-1.385,5H21.13c-1.173,0-1.343-1.541-0.919-2.288c1.738-3.072,10.185-13.682,12.234-16.261 c0.551-0.719,0.184-1.409-0.919-1.635C29.237,8.338,26.848,8,23.951,8C7.88,8,2,17.201,2,24.021C2,31.419,7.922,40,23.993,40 c8.477,0,14.166-2.586,17.61-6h-3.547c-3.02,2.412-7.818,4-14.056,4C10.389,38,5,30.566,5,24 c0.099-5.862,5.535-13.714,19.019-13.981c0.509-0.014,0.905,0.451,0.551,0.888c-2.304,2.832-9.197,11.664-9.946,12.847 c-1.442,2.269-1.569,3.368-1.611,4.1c-0.042,0.719-0.059,2.034,1.131,3.072C15.708,32.292,18.864,32,21.309,32h20.776 c0.862,0,1.117-0.254,1.583-0.874C45.279,28.675,46,26.402,46,24.021C46,19.1,42.895,12.957,35.127,9.922z" clip-rule="evenodd"></path><path fill="#7986cb" d="M21,30h19.892c0.261-0.301,0.514-0.622,0.722-1h-3.241H21.13H21c-0.236,0-0.428-0.104-0.58-0.268 c-0.509-0.474-0.523-1.465-0.208-2.02c1.738-3.072,10.185-13.682,12.234-16.261c0.551-0.719,0.184-1.409-0.919-1.635 c-0.094-0.02-0.192-0.035-0.286-0.054c-0.189,0.229-0.326,0.398-0.383,0.471l-0.091,0.113c-7.073,8.898-11.096,14.256-12.297,16.379 c-0.372,0.655-0.513,1.476-0.426,2.273C18.104,28.541,18.75,30,21,30z"></path>
                    </svg> Lexus
                </label>
                <label  class="btn btn-secondary " onclick="filterCars(5)">
                    <input  type="radio" name="options" id="option5">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0 0 48 48">
                        <path fill="#c5cae9" d="M25,4C13.954,4,5,12.954,5,24c0,11.046,8.954,20,20,20c11.046,0,20-8.954,20-20 C45,12.954,36.046,4,25,4z M25,40c-8.837,0-16-7.163-16-16c0-8.837,7.163-16,16-16c8.837,0,16,7.163,16,16 C41,32.837,33.837,40,25,40z"></path><path fill="#9fa8da" d="M25,6C15.25,6,7,15.917,7,24c0,11.046,6.954,20,18,20c11.046,0,20-8.954,20-20 C45,12.954,36.046,6,25,6z M25,40c-8.837,0-16-7.163-16-16S16.163,8,25,8s16,7.163,16,16S33.837,40,25,40z"></path><path fill="#c5cae9" d="M25,8c9.417,0,16,8.083,16,16c0,8.837-7.163,16-16,16c-7.333,0-16-6.059-16-16 c0,9.941,6.059,18,16,18c9.941,0,18-8.059,18-18C43,15.083,34.941,8,25,8z"></path><path fill="#7986cb" d="M9,24c0-8.837,7.163-16,16-16c9.941,0,18,7.083,18,16c0-9.941-8.059-18-18-18 C15.059,6,7,14.059,7,24c0,9.941,8.059,18,18,18C15.059,42,9,33.941,9,24z"></path><path fill="#7986cb" d="M9.096,25.721c0.012,0.109,0.034,0.21,0.048,0.317C9.13,25.932,9.107,25.829,9.096,25.721z"></path><path fill="#9fa8da" d="M25 8L21.708 22.396 25 24 28.354 22.396z"></path><path fill="#e8eaf6" d="M25 8L21.708 22.396 25 24z"></path><path fill="#c5cae9" d="M11 32L25 27.687 25 24 21.708 22.396z"></path><path fill="#7986cb" d="M11 32L25 27.687 25 24z"></path><path fill="#c5cae9" d="M39 32.063L25 27.687 25 24 28.354 22.396z"></path><path fill="#9fa8da" d="M39 32.063L25 27.687 25 24z"></path>
                    </svg> Mercedes
                </label>
                <label  class="btn btn-secondary " onclick="filterCars(6)">
                    <input  type="radio" name="options" id="option6"><svg xmlns="http://www.w3.org/2000/svg" id="logo_kia_black" x="0px" y="0px" width="20" height="20"  viewBox="0 0 100 25">
                        <defs/>
                        <g fill="none" fill-rule="evenodd" stroke="none" stroke-width="1">
                            <path fill="#131E29" fill-rule="nonzero" d="M58.02 21.83c0 .19.06.3.17.3.09-.01.17-.05.24-.1L89.6 1.8a3 3 0 011.8-.54h6.85c1.05 0 1.76.7 1.76 1.75v13.08c0 1.58-.35 2.5-1.75 3.34l-8.31 5a.57.57 0 01-.28.1c-.1 0-.2-.08-.2-.37V8.9c0-.18-.05-.3-.17-.3a.47.47 0 00-.24.1l-22.78 14.8c-.52.35-1.13.54-1.75.53h-15.1c-1.06 0-1.76-.7-1.76-1.76V3.42c0-.14-.06-.27-.18-.27a.49.49 0 00-.24.1l-15.03 9.02c-.15.1-.19.17-.19.24 0 .06.03.12.13.23L42.9 23.47c.14.14.24.25.24.37 0 .1-.16.18-.35.18h-9.7c-.76 0-1.35-.11-1.76-.52L24.82 17a.28.28 0 00-.2-.1.43.43 0 00-.2.06L13.54 23.5c-.66.4-1.11.51-1.76.51H1.77C.7 24.02 0 23.31 0 22.26V9.43c0-1.59.35-2.5 1.76-3.34l8.36-5.02a.43.43 0 01.22-.07c.13 0 .2.13.2.42V18.6c0 .18.04.26.17.26.09-.01.17-.05.25-.1L39.2 1.77c.54-.37 1.2-.55 1.86-.52h15.2c1.05 0 1.76.7 1.76 1.75l-.01 18.83z"/>
                        </g>
                    </svg> KIA
                </label>
            </div>
        </div>
        <div class="col-md-6">
            <button class="btn btn-primary  float-right"  onclick="resetFilters()">Сбросить настройки</button>
        </div>
    </div>

    <!-- Фотокнопки с автомобилями -->

    <!-- Фотокнопки с автомобилями -->
    <div class="row" id="carButtons">
        <div class="col-md-4 car-0" style="display: block;">
            <h5 id="car-0-models" >25 моделей</h5>
        </div>
        <div class="col-md-4 car-1" style="display: none;">
            <h4 id="car-1-models">5 модели</h4>
        </div>
        <div class="col-md-4 car-2" style="display: none;">
            <h4 id="car-2-models">7 моделей</h4>
        </div>
        <div class="col-md-4 car-3" style="display: none;">
            <h4 id="car-3-models">4 модели</h4>
        </div>
        <div class="col-md-4 car-4" style="display: none;">
            <h4 id="car-4-models">4 модели</h4>
        </div>
        <div class="col-md-4 car-5" style="display: none;">
            <h4 id="car-4-models">2 модели</h4>
        </div>
        <div class="col-md-4 car-6" style="display: none;">
            <h4 id="car-4-models">3 модели</h4>
        </div>
    </div>
    <div class="row" id="carButtons">
        <div class="col-md-4 mb-3 car-1">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/73/images/full/HideFrame_bmw_x3_1014341_2.jpg" class="card-img-top" alt="Car 1">
                <div class="card-body">
                    <h6 class="card-title">BMW X3</h6>
                    <p class="carm-text">От 24 400 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-2">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/42/images/full/Accent_7.jpg" class="card-img-top" alt="Car 2">
                <div class="card-body">
                    <h6 class="card-title">Hyundai Accent</h6>
                    <p class="carm-text">От 9 890 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-4">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/45/images/full/_more_lx_design_2.jpg" class="card-img-top" alt="Car 3">
                <div class="card-body">
                    <h6 class="card-title">Lexus LX</h6>
                    <p class="carm-text">От 71 000 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-4">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/82/images/full/NX_new_1.jpg" class="card-img-top" alt="Car 4">
                <div class="card-body">
                    <h6 class="card-title">Lexus NX</h6>
                    <p class="carm-text">От 26 900 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-1">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/76/images/full/HideFrame_1920x_2.jpg" class="card-img-top" alt="Car 5">
                <div class="card-body">
                    <h6 class="card-title">BMW M5</h6>
                    <p class="carm-text">От 65 600 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-4">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/83/images/full/lexus-ls-500-f-sport_3800x1791_jbv9u_4.jpg" class="card-img-top" alt="Car 1">
                <div class="card-body">
                    <h6 class="card-title">Lexus LS</h6>
                    <p class="carm-text">От 75 900 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-2">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/278/images/full/1657017237_1619082805_b.jpg" class="card-img-top" alt="Car 2">
                <div class="card-body">
                    <h6 class="card-title">Hyundai i30
                    </h6>
                    <p class="carm-text">От 10 900 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-3">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/56/images/full/LC_300_4_1.jpg" class="card-img-top" alt="Car 3">
                <div class="card-body">
                    <h6 class="card-title">Toyota Land Cruiser</h6>
                    <p class="carm-text">От 49 300 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-4">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/46/images/full/lexus_es250_809308_2_Nidv7zc.jpg" class="card-img-top" alt="Car 4">
                <div class="card-body">
                    <h6 class="card-title">Lexus ES</h6>
                    <p class="carm-text">От 27 600 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-3">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/49/images/full/601909f6dfa015049615db25_1.jpg" class="card-img-top" alt="Car 5">
                <div class="card-body">
                    <h6 class="card-title">Toyota Camry</h6>
                    <p class="carm-text">От 17 300 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-2">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/3/images/full/hyundai_elantra_977202.jpg" class="card-img-top" alt="Car 1">
                <div class="card-body">
                    <h6 class="card-title">Hyundai Elantra</h6>
                    <p class="carm-text">От 9 900 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-2">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/184/images/full/HideFrame_2021-Hyundai-Staria-Indonesia-22_pyKtD79.jpg" class="card-img-top" alt="Car 2">
                <div class="card-body">
                    <h6 class="card-title">Hyundai Staria</h6>
                    <p class="carm-text">От 20 100 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-1">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/139/images/full/4_%25D1%2581%25D0%25B5%25D1%2580%25D0%25B8%25D1%258F_Coupe_1.jpg" class="card-img-top" alt="Car 3">
                <div class="card-body">
                    <h6 class="card-title">BMW 4 серия Coupe</h6>
                    <p class="carm-text">От 22 400 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-3">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/62/images/full/185f6bcc-670-0_2.jpg" class="card-img-top" alt="Car 4">
                <div class="card-body">
                    <h6 class="card-title">Toyota Corolla</h6>
                    <p class="carm-text">От 11 900 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-2">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/40/images/full/Sonata_11.jpg" class="card-img-top" alt="Car 5">
                <div class="card-body">
                    <h6 class="card-title">Hyundai Sonata</h6>
                    <p class="carm-text">От 13 500 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-2">
            <div class="carm h-100">
                <img src="https://avatars.dzeninfra.ru/get-zen_doc/9662441/pub_646a9c20ddb5bf19912e3e82_646a9c2fc4dfbe71ccbe65ae/scale_1200" class="card-img-top" alt="Car 3">
                <div class="card-body">
                    <h6 class="card-title">Hyundai i20</h6>
                    <p class="carm-text">От 7 900 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-2">
            <div class="carm h-100">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdORXzkxtZX-bYvFg7kwMednG_P1sGqyo4a64aW05HNw&s" class="card-img-top" alt="Car 4">
                <div class="card-body">
                    <h6 class="card-title">Hyundai Palisade</h6>
                    <p class="carm-text">От 27 990 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-5">
            <div class="carm h-100">
                <img src="https://autoreview.ru/images/Article/1638/Article_163897_860_575.jpg" class="card-img-top" alt="Car 1">
                <div class="card-body">
                    <h6 class="card-title">Mercedes-Benz AMG GT</h6>
                    <p class="carm-text">От 80 000 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-1">
            <div class="carm h-100">
                <img src="https://mycar.kz/_ipx/_/https://object.pscloud.io/prod-mycar-cars/new_auto/101/images/full/HideFrame_bmw-6-series-gran-turismo-highlights-highlight-desktop-03_2.jpg" class="card-img-top" alt="Car 1">
                <div class="card-body">
                    <h6 class="card-title">BMW 6 серия</h6>
                    <p class="carm-text">От 31 600 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-3">
            <div class="carm h-100">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrd4KeT7re7jZIy8JxNCoqVQspqpQrek73qh-1XclQOg&s" class="card-img-top" alt="Car 2">
                <div class="card-body">
                    <h6 class="card-title">Toyota Hilux
                    </h6>
                    <p class="carm-text">От 22 900 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-6">
            <div class="carm h-100">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAOTgJSWEhMyNhfi8tVZbnlzl8f1v7F6RHp13zhiffYQ&s" class="card-img-top" alt="Car 5">
                <div class="card-body">
                    <h6 class="card-title">Kia Cerato </h6>
                    <p class="carm-text">От 11 090 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-5">
            <div class="carm h-100">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI2C1kD3OAm1EqR9KFkyhHC8dqJFu5ha-Iorw4e-LXFQ&s" class="card-img-top" alt="Car 3">
                <div class="card-body">
                    <h6 class="card-title">Mercedes-Benz GLC
                    </h6>
                    <p class="carm-text">От 42 400 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-1">
            <div class="carm h-100">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTznsYWpgJy-XfMxstqMU1CO1BfZ9D5kFT6aHUi9rcCQ&s" class="card-img-top" alt="Car 4">
                <div class="card-body">
                    <h6 class="card-title">BMW Z4</h6>
                    <p class="carm-text">От 23 900 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-6">
            <div class="carm h-100">
                <img src="https://hips.hearstapps.com/hmg-prod/images/21802-2025-k5-65c51c31b9323.jpg?crop=0.615xw:0.692xh;0.245xw,0.111xh&resize=768:*" class="card-img-top" alt="Car 5">
                <div class="card-body">
                    <h6 class="card-title">Kia K5 </h6>
                    <p class="carm-text">От 14 100 000 ₸</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 car-6">
            <div class="carm h-100">
                <img src="https://motor.ru/imgs/2021/07/24/14/4785653/5897f40bfa51266eb1f0394ab56caed87b1cc961.jpg" class="card-img-top" alt="Car 5">
                <div class="card-body">
                    <h6 class="card-title">Kia Sportage </h6>
                    <p class="carm-text">От 13 690 000 ₸</p>
                </div>
            </div>
        </div>

    </div>

</div>

<div class="container px-4 py-5" id="icon-grid">
    <h2 class="pb-2 border-bottom">Автоцентры</h2>

    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 py-5">

        <div class="col d-flex flex-column align-items-center">
            <div class="city-button" id="almaty" style="background-image: url('data:image/jpeg;base64,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');">
                <div class="city-info">
                    <h3>SellCar Almaty</h3>
                    <p>Алматы</p>
                    <p>Ежедневно 9:00 – 21:00</p>
                </div>
            </div>
        </div>
        <div class="col d-flex flex-column align-items-center">
            <div class="city-button" id="taraz" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjWfdHxpR46p8xk2E3drYiphqPNAmdTW8msb1JchPhHA&s');">
                <div class="city-info">
                    <h3>SellCar Тараз</h3>
                    <p>Тараз</p>
                    <p>Ежедневно 9:00 – 21:00</p>
                </div>
            </div>
        </div>
        <div class="col d-flex flex-column align-items-center">
            <div class="city-button" id="astana" style="background-image: url('https://all.accor.com/magazine/imagerie/1-619b.jpg');">
                <div class="city-info">
                    <h3>SellCar Астана</h3>
                    <p>Астана</p>
                    <p>Ежедневно 9:00 – 21:00</p>
                </div>
            </div>
        </div>
        <div class="col d-flex flex-column align-items-center">
            <div class="city-button" id="shemket" style="background-image: url('https://otyrar.kz/wp-content/uploads/2021/12/5fa55ae4a0c70598539025.jpg');">
                <div class="city-info">
                    <h3>SellCar Шемкет</h3>
                    <p>Шымкет</p>
                    <p>Ежедневно 9:00 – 21:00</p>
                </div>
            </div>
        </div>
    </div>

    <div class="form-container">
        <img src="https://img.freepik.com/premium-vector/woman-dispatcher-with-laptop-icons-customer-service_24908-20983.jpg" width="250" height="200" alt="Customer Service" class="form-image">

        <form action="mailto:janibektog@yandex.ru" method="post" enctype="text/plain">
            <label for="callBack">Возникли вопросы? Закажите звонок в автосалон:</label>


            <label for="phone">Номер телефона:</label>
            <input type="tel" id="phone" name="phone"  placeholder="Введите номер телефона">

            <label for="name">Имя Фамилия:</label>
            <input type="text" id="name" name="name" placeholder="Введите имя и фамилию на английском">

            <label for="dealer">Выберите дилерский центр:</label>
            <select id="dealer" name="dealer">
                <option value="Almaty">Almaty center</option>
                <option value="Astana">Astana center</option>
                <option value="Taraz">Taraz center</option>
                <option value="Shymkent">Shymkent center</option>
            </select>

            <input type="submit" value="Отправить">
        </form>


   </div>

</div>


<br>
<br>
<br>


<div class="containerhd">

    <div  style="font-size: 0.8em;">
        <h6 style="color: gray">Продажа автомобилей в регионах</h6>
        <table>

            <tr>
                <td>Актау</td>
                <td>Актобе</td>
                <td>Алматы                             </td>
                <td>Астана</td>
            </tr>
            <tr>
                <td>Атырау</td>
                <td>Жанаозен</td>
                <td>Жезказган                          </td>
                <td>Караганда</td>
            </tr>
            <tr>
                <td>Костанай</td>
                <td>Кульсары</td>
                <td>Кызылорда                         </td>
                <td>Павлодар</td>
            </tr>
            <tr>
                <td>Тараз</td>
                <td>Темиртау</td>
                <td>Туркестан                         </td>
                <td>Уральск</td>
            </tr>
            <tr>
                <td>Усть-Каменогорск</td>
                <td>Шымкент</td>
                <td>Экибастуз</td>
                <td>Кокшетау</td>
            </tr>
            <tr>
                <td>Талдыкорган</td>
                <td>Петропавловск</td>
                <td>Семей</td>

            </tr>
        </table>

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


<!-- Подключаем Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>






<script>function filterCars(brand) {
        console.log('Выбрана марка', brand);
        const carButtons = document.querySelectorAll(".row .col-md-4");

        carButtons.forEach(button => {
            if (button.classList.contains("car-" + brand) || brand === 0) {
                button.style.display = "block";
                const modelHeading = button.querySelector('h4, h5');
                if (modelHeading) {
                    modelHeading.style.display = "block";
                }
            } else {
                button.style.display = "none";
            }
        });

        // Показываем заголовок для всех моделей при выборе определенной марки
        const allModelsHeading = document.getElementById('car-0-models');
        if (brand !== 0) {
            allModelsHeading.style.display = "none";
        } else {
            allModelsHeading.style.display = "block";
        }
    }

    function resetFilters() {
        // Показываем все модели и заголовок для всех моделей при сбросе настроек
        const carButtons = document.querySelectorAll(".row .col-md-4");
        carButtons.forEach(button => {
            button.style.display = "block";
            const modelHeading = button.querySelector('h4, h5');
            if (modelHeading) {
                modelHeading.style.display = "none";
            }
        });

        // Показываем только заголовок "15 моделей"
        document.getElementById('car-0-models').style.display = "block";
    }

    // При загрузке страницы показываем только заголовок "15 моделей"
    window.onload = resetFilters;

    // При загрузке страницы показываем только заголовок для всех моделей

</script>
<div class="row" id="carButtons">
    <!-- Ваш текущий HTML-код с кнопками и фотографиями автомобилей -->
</div>

</body>
    <#include "footer_template.ftlh">
</@t.template>
