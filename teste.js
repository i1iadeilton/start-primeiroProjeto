var estoquePeca1 = 0;
var estoquePeca2 = 0;
var estoquePeca3 = 0;


function exibirEstoque() {
  
  document.getElementById("exibiPeca1").textContent = "Estoque de Android: " + estoquePeca1;
      document.getElementById("exibiPeca2").textContent = "Estoque de iPhone: " + estoquePeca2;
      document.getElementById("exibiPeca3").textContent = "Estoque de Xiaomi: " + estoquePeca3;
  
}

// Função para adicionar ao estoque
    function adicionarAoEstoque() {
      var peca1 = parseInt(document.getElementById("peca1").value);
      var peca2 = parseInt(document.getElementById("peca2").value);
      var peca3 = parseInt(document.getElementById("peca3").value);

      estoquePeca1 += peca1;
      estoquePeca2 += peca2;
      estoquePeca3 += peca3;

      exibirEstoque();
    }

// Função para vender estoque
function venderEstoque() {
    var peca1 = parseInt(document.getElementById("peca1").value);
    var peca2 = parseInt(document.getElementById("peca2").value);
    var peca3 = parseInt(document.getElementById("peca3").value);

    if (peca1 <= estoquePeca1 && peca2 <= estoquePeca2 && peca3 <= estoquePeca3) {
      estoquePeca1 -= peca1;
      estoquePeca2 -= peca2;
      estoquePeca3 -= peca3;
    } else {
      alert("Quantidade insuficiente em estoque.");
    }

    exibirEstoque();
  }
 
 
 
 
 
 
 
 
 
 
 
 
 // Selecionar os botões
 const buyButton = document.getElementById('buyButton');
 const sellButton = document.getElementById('sellButton');
 
 // Selecionar as opções
 const opcoesCompra = document.getElementById('opcoesCompra');
 const opcoesVenda = document.getElementById('opcoesVenda');
 
 // Adicionar eventos de clique aos botões
 buyButton.addEventListener('click', () => {
   buyButton.classList.add('selecionado');
   sellButton.classList.remove('selecionado');
   opcoesCompra.style.display = 'block';
   opcoesVenda.style.display = 'none';
 });
 
 sellButton.addEventListener('click', () => {
   sellButton.classList.add('selecionado');
   buyButton.classList.remove('selecionado');
   opcoesVenda.style.display = 'block';
   opcoesCompra.style.display = 'none';
 });