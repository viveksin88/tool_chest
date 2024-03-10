package com.personal.toolchest.service

import com.personal.toolchest.dto.TransactionTypeDTO
import com.personal.toolchest.model.entity.TransactionType
import com.personal.toolchest.model.entity.TransactionTypeEnum
import java.math.BigDecimal

interface TransactionTypeService {
    fun addTransactionType(transactionTypeDTO: TransactionTypeDTO)
    fun updateBalance(transactionTypeEnum: TransactionTypeEnum, newBalance: BigDecimal)
    fun getCurrentBalance(transactionTypeEnum: TransactionTypeEnum): BigDecimal
}