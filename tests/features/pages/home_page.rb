class HomePage < SitePrism::Page
    set_url ' '
    element :search, '#searchBar'
    element :resultSearch, '.SearchBar__results__result__name'
    element :selectCar, 'div.Search-result.Search-result--container-right > div:nth-child(4) > div > div:nth-child(1) > div > div:nth-child(1) > div > div.sc-eTuwsz.gSMbPi > div > div > div.PhotoSlider--container > a:nth-child(1) > img'
    element :searchResult, '#root > main > div.container > div.Search-result.Search-result--container-right > div:nth-child(4) > div > div:nth-child(1) > div > div:nth-child(1) > div > div.sc-eTuwsz.gSMbPi > div > div > div.PhotoSlider--container > a:nth-child(1) > img'

    def pesquisa_veiculo(veiculo)
       search.set veiculo
       resultSearch.click
    end

    def seleciona_veiculo
        janela = window_opened_by do
                selectCar.click
        end
        
        within_window janela do
            page.has_text?("HYUNDAI VELOSTER")
          janela.close
        end
        
    end

    def resultado_pesquisa
        searchResult.click
    end
end