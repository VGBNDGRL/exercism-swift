func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(8 * hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let monthlyRate: Int = (hourlyRate * 8) * 22
    let calculatedDiscount: Double = (Double(monthlyRate) * (discount / 100))
    return (Double(monthlyRate) - calculatedDiscount).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
    let dailyRateWithCalculatedDiscount = dailyRate - (dailyRate * (discount/100))
    
    return (budget / dailyRateWithCalculatedDiscount).rounded(.down)
}

