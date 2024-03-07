package com.personal.toolchest.service

import com.personal.toolchest.model.TransactionDTO

interface TransactionService {
    fun createTransaction(transaction: TransactionDTO)
    fun getTransactions(deleted: Boolean): List<TransactionDTO>
    fun deleteTransaction(transactionId: Int)
}