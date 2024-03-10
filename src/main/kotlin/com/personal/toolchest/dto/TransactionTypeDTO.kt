package com.personal.toolchest.dto

import com.personal.toolchest.model.entity.TransactionTypeEnum
import java.math.BigDecimal

data class TransactionTypeDTO(
    var transactionType: TransactionTypeEnum,
    var allowedLimit: BigDecimal,
    var remainingBalance: BigDecimal,
) {
}