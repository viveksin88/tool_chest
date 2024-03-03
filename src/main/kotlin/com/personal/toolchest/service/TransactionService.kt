package com.personal.toolchest.service

import com.personal.toolchest.model.TransactionDTO

interface TransactionService {
    fun createTransaction(transaction: TransactionDTO)
    fun getTransaction(transactionId: Int)
    fun getTransactions()
}