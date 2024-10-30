<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário</title>
</head>
<body>
    <h2>Cadastrar médico</h2>
    <form action="salvamedico.php">
        <label for="nome">Nome: </label>
        <input type="text" id="nome" name="nome">
        <label for="espec">Especialidade: </label>
        <input type="text" id="espec" name="espec">
        <label for="crm">CRM: </label>
        <input type="text" id="crm" name="crm">
        <label for="user">Usuário: </label>
        <input type="text" id="user" name="user">
        <label for="senha">Senha: </label>
        <input type="text" id="senha" name="senha">
        <input type="submit">
    </form>
</body>
</html>
