package com.personal.toolchest.model

import com.personal.toolchest.model.entity.TransactionType
import java.math.BigDecimal

data class TransactionDTO(
    var name: String,
    var amount: BigDecimal,
    var transactionType: TransactionType
) {
}