<#import "blocks/template.ftlh" as t>
<@t.template userByPrincipal>
    <title>Registration Success</title>
    </head>
    <body>
    <center>
        <span ="'A verification email has been sent to: ' + ${emailId}"></span>
    </center>
    </body>
</@t.template>