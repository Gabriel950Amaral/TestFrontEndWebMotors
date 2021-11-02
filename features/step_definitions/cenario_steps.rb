Quando('Eu acesso a Url') do
  @home = HomePage.new
  @home.load
end

E('clico no botão de pesquisa por modelo') do
  @home.wait_until_caixa_pesquisa_visible
  @home.caixa_pesquisa.set 'HONDA CITY'
  expect(@home.resultado_pesquisa).to be_visible
  @home.resultado_pesquisa.click
  sleep(3)
end

Então('devo ser redirecionado para a tela dos modelos e versões disponiveis') do
 expect(@home).to have_content 'HONDA CITY'
end