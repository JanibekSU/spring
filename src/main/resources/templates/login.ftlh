<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Авторизация</h1>
    <hr>
    <div class="text-center"> <!-- Обернуть контейнер формы -->
        <form action="/login " method="post" style="display: inline-block;">
            <div class="form-group">
                <label for="email">Электронная почта</label>
                <input style="width: 125%"  type="email" class="form-control <#if user.email??>is-invalid</#if>" id="email" name="username">
                <div id="email" class="invalid-feedback">
                    Неверныя электронная почта
                </div>
            </div>
            <div class="form-group">
                <label for="password">Пароль</label>
                <input style="width: 125%"  type="password" class="form-control <#if user.email??>is-invalid</#if>" id="password" name="password">
                <div id="password" class="invalid-feedback">
                    Неверный пароль
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" style="width: 80%" class="btn btn-dark">Войти</button>
        </form>
    </div>
    <hr>
    <h2>Нет аккаунта SellCar? <a href="/registration">Зарегистрируйся!</a></h2>
</@t.template>
