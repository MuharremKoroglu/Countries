//
//  ViewController.swift
//  Countries
//
//  Created by Muharrem Köroğlu on 2.10.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var countryArray = [Countries]()
    var selectedCountry : Countries?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let argentina = Countries(CountryName: "Argentina", CountryFlag: UIImage(named: "argentina")!, CountryDetails: "Argentina is a country in the southern half of South America. Argentina covers an area of 2,780,400 km2,making it the second-largest country in South America after Brazil, the fourth-largest country in the Americas, and the eighth-largest country in the world. It shares the bulk of the Southern Cone with Chile to the west, and is also bordered by Bolivia and Paraguay to the north, Brazil to the northeast, Uruguay and the South Atlantic Ocean to the east, and the Drake Passage to the south. Argentina is a federal state subdivided into twenty-three provinces, and one autonomous city, which is the federal capital and largest city of the nation, Buenos Aires.")
        let australia = Countries(CountryName: "Australia", CountryFlag: UIImage(named: "australia")!, CountryDetails: "Australia, officially the Commonwealth of Australia, is a sovereign country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands.With an area of 7,617,930 square kilometres, Australia is the largest country by area in Oceania and the world's sixth-largest country. Australia is the oldest,flattest,and driest inhabited continent,with the least fertile soils. It is a megadiverse country, and its size gives it a wide variety of landscapes and climates, with deserts in the centre, tropical rainforests in the north-east, and mountain ranges in the south-east.")
        let azerbaijan = Countries(CountryName: "Azerbaijan", CountryFlag: UIImage(named: "azerbaijan")!, CountryDetails: "Azerbaijan officially the Republic of Azerbaijan, is a transcontinental country located at the boundary of Eastern Europe and Western Asia. It is a part of the South Caucasus region, and is bounded by the Caspian Sea to the east, Russia to the north, Georgia to the northwest, Armenia and Turkey to the west, and Iran to the south. Baku is the capital and largest city.")
        let belgium = Countries(CountryName: "Belgium", CountryFlag: UIImage(named: "belgium")!, CountryDetails: "Belgium officially the Kingdom of Belgium,is a country in Northwestern Europe. The country is bordered by the Netherlands to the north, Germany to the east, Luxembourg to the southeast, France to the southwest, and the North Sea to the northwest. It covers an area of 30,689 km2 and has a population of more than 11.5 million,making it the 22nd most densely populated country in the world and the 6th most densely populated country in Europe, with a density of 376 per square kilometre. The capital and largest city is Brussels; other major cities are Antwerp, Ghent, Charleroi, Liège, Bruges, Namur, and Leuven.")
        let brazil = Countries(CountryName: "Brazil", CountryFlag: UIImage(named: "brazil")!, CountryDetails: "Brazil, officially the Federative Republic of Brazil, is the largest country in both South America and Latin America. At 8.5 million square kilometers and with over 214 million people, Brazil is the world's fifth-largest country by area and the seventh most populous. Its capital is Brasília, and its most populous city is São Paulo. The federation is composed of the union of the 26 states and the Federal District.")
        let canada = Countries(CountryName: "Canada", CountryFlag: UIImage(named: "canada")!, CountryDetails: "Canada is a country in North America. Its ten provinces and three territories extend from the Atlantic Ocean to the Pacific Ocean and northward into the Arctic Ocean, covering over 9.98 million square kilometres, making it the world's second-largest country by total area. Its southern and western border with the United States, stretching 8,891 kilometres, is the world's longest binational land border. Canada's capital is Ottawa, and its three largest metropolitan areas are Toronto, Montreal, and Vancouver.")
        let china = Countries(CountryName: "China", CountryFlag: UIImage(named: "china")!, CountryDetails: "China,officially the People's Republic of China,is a country in East Asia. It is the world's most populous country with a population exceeding 1.4 billion people.China spans five geographical time zones and borders fourteen countries by land,the most of any country in the world, tied with Russia. China also has a narrow maritime boundary with the disputed Taiwan.Covering an area of approximately 9.6 million square kilometers (3,700,000 sq mi), it is the world's third or fourth largest country.The country consists of 22 provinces, five autonomous regions, four municipalities, and two Special Administrative Regions. The national capital is Beijing, and the most populous city and financial center is Shanghai.")
        let egypt = Countries(CountryName: "Egypt", CountryFlag: UIImage(named: "egypt")!, CountryDetails: "Egypt is a transcontinental country spanning the northeast corner of Africa and southwest corner of Asia via a land bridge formed by the Sinai Peninsula. It is bordered by the Mediterranean Sea to the north, the Gaza Strip of Palestine and Israel to the northeast, the Red Sea to the east, Sudan to the south, and Libya to the west. The Gulf of Aqaba in the northeast separates Egypt from Jordan and Saudi Arabia. Cairo is the capital and largest city of Egypt, while Alexandria, the second-largest city, is an important industrial and tourist hub at the Mediterranean coast.At approximately 100 million inhabitants, Egypt is the 14th-most populated country in the world.")
        let germany = Countries(CountryName: "Germany", CountryFlag: UIImage(named: "germany")!, CountryDetails: "Germany, officially the Federal Republic of Germany,is a country in Central Europe. It is the second most populous country in Europe after Russia, and the most populous member state of the European Union. Germany is situated between the Baltic and North seas to the north, and the Alps to the south; it covers an area of 357,022 square kilometres, with a population of almost 84 million within its 16 constituent states. Germany borders Denmark to the north, Poland and the Czech Republic to the east, Austria and Switzerland to the south, and France, Luxembourg, Belgium, and the Netherlands to the west. The nation's capital and largest city by population is Berlin and its financial centre is Frankfurt; the largest urban area is the Ruhr.")
        let ısrael = Countries(CountryName: "Israel", CountryFlag: UIImage(named: "ısrael")!, CountryDetails: "Israel, officially the State of Israel is a country in Western Asia. It is situated on the southeastern shore of the Mediterranean Sea and the northern shore of the Red Sea, and shares borders with Lebanon to the north, Syria to the northeast, Jordan to the east, and Egypt to the southwest; it is also bordered by the Palestinian territories of the West Bank and the Gaza Strip to the east and west, respectively. Tel Aviv is the economic and technological center of the country, while its seat of government is in its proclaimed capital of Jerusalem, although Israeli sovereignty over East Jerusalem is unrecognized internationally.")
        let us = Countries(CountryName: "United States of America", CountryFlag: UIImage(named: "us")!, CountryDetails: "The United States of America, commonly known as the United States or America, is a transcontinental country located primarily in North America. It consists of 50 states, a federal district, five major unincorporated territories, nine minor outlying islands,and 326 Indian reservations. It is the third-largest country by total area.The United States shares land borders with Canada to its north and with Mexico to its south. It has maritime borders with the Bahamas, Cuba, Russia, and other nations.With a population of over 331 million,it is the third most populous country in the world. The national capital is Washington, D.C., and the most populous city and financial center is New York City.")
        let nigeria = Countries(CountryName: "Nigeria", CountryFlag: UIImage(named: "nigeria")!, CountryDetails: "Nigeria,officially the Federal Republic of Nigeria, is a country in West Africa. It is situated between the Sahel to the north and the Gulf of Guinea to the south in the Atlantic Ocean. It covers an area of 923,769 square kilometres, and with a population of over 218 million, it is the most populous country in Africa, and the world's sixth-most populous country. Nigeria borders Niger in the north, Chad in the northeast, Cameroon in the east, and Benin in the west. Nigeria is a federal republic comprising 36 states and the Federal Capital Territory, where the capital, Abuja, is located. The largest city in Nigeria is Lagos, one of the largest metropolitan areas in the world and the second-largest in Africa.")
        let saudiarabia = Countries(CountryName: "Saudi Arabia", CountryFlag: UIImage(named: "saudiarabia")!, CountryDetails: "Saudi Arabia,officially the Kingdom of Saudi Arabia,is a country on the Arabian Peninsula in Western Asia. It has a land area of about 2,150,000 km2, making it the fifth-largest country in Asia, the second-largest in the Arab world, and the largest in Western Asia.  Saudi Arabia is the only country with a coastline along both the Red Sea and the Persian Gulf, and most of its terrain consists of arid desert, lowland, steppe, and mountains. Its capital and largest city is Riyadh. The country is home to Mecca and Medina, the two holiest cities in Islam.")
        let turkey = Countries(CountryName: "Republic of Turkey", CountryFlag: UIImage(named: "turkey")!, CountryDetails: "Turkey is a transcontinental country located mainly on the Anatolian Peninsula in Western Asia, with a small portion on the Balkan Peninsula in Southeast Europe. It shares borders with the Black Sea to the north; Georgia to the northeast; Armenia, Azerbaijan, and Iran to the east; Iraq to the southeast; Syria and the Mediterranean Sea to the south; the Aegean Sea to the west; and Greece and Bulgaria to the northwest. Cyprus is located off the south coast.Ankara is Turkey's capital, while Istanbul is its largest city and financial centre.")
        let yemen = Countries(CountryName: "Yemen", CountryFlag: UIImage(named: "yemen")!, CountryDetails: "Yemen, officially the Republic of Yemen, is a country in Western Asia, on the southern end of the Arabian Peninsula. It borders Saudi Arabia to the north and Oman to the northeast and shares maritime borders with Eritrea, Djibouti, and Somalia. It is the second-largest Arab sovereign state in the peninsula, occupying 555,000 square kilometres. The coastline stretches for about 2,000 kilometres.Yemen's constitutionally stated capital, and largest city, is the city of Sanaa. As of 2021, the population of the country is estimated at 30,491,000.")
        
        countryArray.append(argentina)
        countryArray.append(australia)
        countryArray.append(azerbaijan)
        countryArray.append(belgium)
        countryArray.append(brazil)
        countryArray.append(canada)
        countryArray.append(china)
        countryArray.append(egypt)
        countryArray.append(germany)
        countryArray.append(ısrael)
        countryArray.append(us)
        countryArray.append(nigeria)
        countryArray.append(saudiarabia)
        countryArray.append(turkey)
        countryArray.append(yemen)
        
            
      
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = "\(countryArray[indexPath.row].CountryName)"
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCountry = countryArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCountry = selectedCountry
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            self.countryArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }


}

