Dado("que acesso a home de WebMotors") do
    home.load
    expect(page).to have_current_path('https://hportal.webmotors.com.br/')
  end


  Dado('que pesquiso por {string}') do |veiculo|
    home.pesquisa_veiculo(veiculo)
  end
  
  Quando('seleciono o primeiro modelo') do
    home.seleciona_veiculo
  end
  
  Entao('apresento o resultado da pesquisa') do
    home.resultado_pesquisa
  end