package com.personal.toolchest.repository

import com.personal.toolchest.model.entity.TransactionType
import com.personal.toolchest.model.entity.TransactionTypeEnum
import org.springframework.data.jpa.repository.JpaRepository

interface TransactionTypeRepository: JpaRepository<TransactionType, Int> {
    fun findByTransactionType(transactionType: TransactionTypeEnum): TransactionType
}