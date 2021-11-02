class HomePage < SitePrism::Page
set_url 'https://www.webmotors.com.br'


element :caixa_pesquisa, '.SearchBar__input'
element :resultado_pesquisa, '.SearchBar__results__result__name'
element :resultado_do_teste, '.sc-uJMKN hNiOat'

end