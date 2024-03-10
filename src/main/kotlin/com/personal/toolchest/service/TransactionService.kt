package com.personal.toolchest.service

import com.personal.toolchest.dto.TransactionDTO

interface TransactionService {
    fun createTransaction(transaction: TransactionDTO)
    fun getTransactions(deleted: Boolean): List<TransactionDTO>
    fun deleteTransaction(transactionId: Int)
    fun getMonthlySpent()
}