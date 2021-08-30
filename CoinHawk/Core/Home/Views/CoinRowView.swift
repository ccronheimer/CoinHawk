//
//  CoinRowView.swift
//  CoinHawk
//
//  Created by Cameron Cronheimer on 2021-08-22.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            
            leftColumn
            Spacer()
                
            if showHoldingsColumn {
                centerColumn
                    .frame(width: 75)
            } else {
                WeeklyChartView(coin: coin)
                    .frame(width: 75)
                    
            }
            rightColumn
        }
        .font(.subheadline)
        .background(
            Color.theme.background.opacity(0.001)
        )
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
            
            CoinRowView(coin: dev.coin, showHoldingsColumn: false)
                .previewLayout(.sizeThatFits)
            
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
        }
       
    }
}

extension CoinRowView {
    
    private var leftColumn: some View {
        
        HStack(spacing: 0){
            
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
                .padding(10)
            
            VStack(alignment: .leading, spacing: 5){
                Text(coin.name)
                    .font(.headline)
                    .foregroundColor(Color.theme.accent)
                    
                
                HStack() {
                    
                    HStack(spacing: 4) {
                        Text("\(coin.rank)")
                            .font(.caption)
                            .foregroundColor(Color.theme.secondaryText)
                            .padding(.horizontal, 5)
                            .background(RoundedRectangle(cornerRadius: 2).foregroundColor(Color(.systemGray5)))
                   
                    Text(coin.symbol.uppercased())
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.theme.secondaryText)
                    }
                        
                    HStack(spacing: 4) {
                    if coin.priceChangePercentage24H ?? 0 >= 0 {
                        Image(systemName: "arrowtriangle.up.fill")
                            .font(.caption)
                            .foregroundColor(Color.theme.green)
                    } else {
                        Image(systemName: "arrowtriangle.down.fill")
                            .font(.caption)
                            .foregroundColor(Color.theme.red)
                    }
                   
                    
                    Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                        .foregroundColor(
                            (coin.priceChangePercentage24H ?? 0) >= 0 ?
                            Color.theme.green : Color.theme.red
                        )
                        .font(.caption)
                    }
                    
                }
               
            }
            
           
        }
    }
    
    private var centerColumn: some View {
        
        VStack(alignment: .trailing){
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
                .bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
            
        }
        .foregroundColor(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing){
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(Color.theme.accent)
           
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}

