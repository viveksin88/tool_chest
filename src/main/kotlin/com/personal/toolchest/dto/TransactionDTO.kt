package com.personal.toolchest.dto

import com.personal.toolchest.model.entity.TransactionTypeEnum
import java.math.BigDecimal

data class TransactionDTO(
    var name: String,
    var amount: BigDecimal,
    var transactionTypeEnum: TransactionTypeEnum
) {
}