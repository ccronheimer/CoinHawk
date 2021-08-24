//
//  MarketDataModel.swift
//  CoinHawk
//
//  Created by Cameron Cronheimer on 2021-08-23.
//

import Foundation

// JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
   "data": {
     "active_cryptocurrencies": 9043,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 636,
     "total_market_cap": {
       "btc": 44843838.866171405,
       "eth": 666601578.647416,
       "ltc": 11925741785.993437,
       "bch": 3283222609.460587,
       "bnb": 4457624703.756902,
       "eos": 401300635113.587,
       "xrp": 1792404147989.0095,
       "xlm": 5907893668934.649,
       "link": 77554956995.10063,
       "dot": 79948733187.85896,
       "yfi": 55720062.3812443,
       "usd": 2210312681327.312,
       "aed": 8118719402597.503,
       "ars": 215311199944724.1,
       "aud": 3060951516736.129,
       "bdt": 187984573790431.25,
       "bhd": 833340928364.7504,
       "bmd": 2210312681327.312,
       "brl": 11894134600758.549,
       "cad": 2796653377866.413,
       "chf": 2018163569001.4846,
       "clp": 1733725060979515.5,
       "cny": 14328794019240.562,
       "czk": 48102150758653.78,
       "dkk": 14003046977517.268,
       "eur": 1882960952597.3733,
       "gbp": 1611384254068.0518,
       "hkd": 17217586491540.777,
       "huf": 658977097029220,
       "idr": 31809876284044628,
       "ils": 7135994491665.217,
       "inr": 163812923644025.28,
       "jpy": 242539544545641.9,
       "krw": 2579853596429884,
       "kwd": 665091927062.1155,
       "lkr": 441086791521977.8,
       "mmk": 3634688968370361.5,
       "mxn": 44900800180399.805,
       "myr": 9322877858570.484,
       "ngn": 909234224590805.2,
       "nok": 19700950149955.895,
       "nzd": 3205963500819.969,
       "php": 110840897049611.48,
       "pkr": 363027132471951.25,
       "pln": 8628561177235.859,
       "rub": 163804062500485.94,
       "sar": 8288402896830.298,
       "sek": 19266533085255.13,
       "sgd": 2998698060066.546,
       "thb": 73244236477483.77,
       "try": 18633820028661.777,
       "twd": 61725191938746.32,
       "uah": 58925543587196.88,
       "vef": 221318608781.30402,
       "vnd": 50411717009302370,
       "zar": 33469659776998.844,
       "xdr": 1560792407105.1497,
       "xag": 93623673049.3505,
       "xau": 1226856156.8975399,
       "bits": 44843838866171.41,
       "sats": 4484383886617140.5
     },
     "total_volume": {
       "btc": 2886322.9324714984,
       "eth": 42905056.1218379,
       "ltc": 767586871.9975454,
       "bch": 211320907.16800112,
       "bnb": 286909968.7295232,
       "eos": 25829261170.08887,
       "xrp": 115366064266.64305,
       "xlm": 380254889197.5603,
       "link": 4991737027.01584,
       "dot": 5145809722.285796,
       "yfi": 3586358.748850321,
       "usd": 142264274008.44553,
       "aed": 522552185238.8887,
       "ars": 13858261686138.086,
       "aud": 197014679860.59586,
       "bdt": 12099414323145.928,
       "bhd": 53637045643.760284,
       "bmd": 142264274008.44553,
       "brl": 765552511294.2482,
       "cad": 180003429296.03583,
       "chf": 129896813876.06932,
       "clp": 111589251246744.39,
       "cny": 922256609114.5496,
       "czk": 3096040489536.1978,
       "dkk": 901290269468.2809,
       "eur": 121194650499.24666,
       "gbp": 103714923680.37714,
       "hkd": 1108190466936.901,
       "huf": 42414314992192.836,
       "idr": 2047406683261904,
       "ils": 459300208636.26575,
       "inr": 10543633419966.395,
       "jpy": 15610783268186.473,
       "krw": 166049356747017.03,
       "kwd": 42807889106.23742,
       "lkr": 28390052095663.8,
       "mmk": 233942641554768.8,
       "mxn": 2889989182990.5894,
       "myr": 600056481340.2234,
       "ngn": 58521831756114.29,
       "nok": 1268029358034.9822,
       "nzd": 206348212085.46786,
       "php": 7134148884192.524,
       "pkr": 23365830492125.746,
       "pln": 555367574003.0463,
       "rub": 10543063082491.9,
       "sar": 533473671290.2417,
       "sek": 1240068595357.0872,
       "sgd": 193007806583.14804,
       "thb": 4714282379954.861,
       "try": 1199344735600.7996,
       "twd": 3972872115959.837,
       "uah": 3792675918572.5312,
       "vef": 14244921756.465666,
       "vnd": 3244693107194628,
       "zar": 2154236769172.8877,
       "xdr": 100458636712.59775,
       "xag": 6025981748.596564,
       "xau": 78965207.93112789,
       "bits": 2886322932471.4985,
       "sats": 288632293247149.8
     },
     "market_cap_percentage": {
       "btc": 41.91357528078576,
       "eth": 17.587132884860456,
       "ada": 4.159152560833005,
       "bnb": 3.4668706459997374,
       "usdt": 2.9659181611236645,
       "xrp": 2.593525084332601,
       "doge": 1.8666735005273276,
       "dot": 1.2765564058450525,
       "usdc": 1.2210748042247974,
       "sol": 1.0078051203588343
     },
     "market_cap_change_percentage_24h_usd": 0.2886780616776132,
     "updated_at": 1629774739
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "cad" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
        
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "cad" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominace: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
        return item.value.asPercentString()
        }
        return ""
    }
}

