package com.personal.toolchest.service.impl

import com.personal.toolchest.model.TransactionDTO
import com.personal.toolchest.model.entity.Transaction
import com.personal.toolchest.repository.TransactionRepository
import com.personal.toolchest.service.TransactionService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class TransactionServiceImpl: TransactionService {

    @Autowired
    private lateinit var transactionRepository: TransactionRepository

    override fun createTransaction(transaction: TransactionDTO) {
        val transactionEntity = Transaction(
            name = transaction.name, amount = transaction.amount, transactionType = transaction.transactionType)
        transactionRepository.save(transactionEntity)
    }

    override fun getTransaction(transactionId: Int) {
        TODO("Not yet implemented")
    }

    override fun getTransactions() {
        TODO("Not yet implemented")
    }
}