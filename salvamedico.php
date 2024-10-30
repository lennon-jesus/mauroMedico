<?php
include 'conexao.php';

echo "Recebido: <br>";
$nome = $_GET['nome'];
$espec = $_GET['espec'];
$crm = $_GET['crm'];
$user = $_GET['user'];
$password = $_GET['senha'];
echo $_GET['nome'] . '<br>';
echo $_GET['espec'] . '<br>';
echo $_GET['crm'] . '<br>';
echo $_GET['user'] . '<br>';
echo $_GET['senha'] . '<br>';
echo '<br>';


$codigoSQL = "INSERT INTO `tbmedico` (`id`, `nome`, `especialidade`, `CRM`, `usuario`, `senha`) VALUES (NULL, $nome, $espec, $crm, $user, $password)";

try {

    if ($_GET['nome']==""){
        echo "Por favor preencha os campos corretamente";
    }else{
        $resultado = $conexao->query($codigoSQL);

        if($resultado) {
        echo "Comando executado!";
        } else{
        echo "Erro ao executar o comando!";
        }
    }
    } catch (Exception $e) {
        echo "Erro $e";
    }

$conexao = null;

?>