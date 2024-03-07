package com.personal.toolchest.service.impl

import com.personal.toolchest.model.TransactionDTO
import com.personal.toolchest.model.entity.Transaction
import com.personal.toolchest.repository.TransactionRepository
import com.personal.toolchest.service.TransactionService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import kotlin.streams.toList

@Service
class TransactionServiceImpl: TransactionService {

    @Autowired
    private lateinit var transactionRepository: TransactionRepository

    override fun createTransaction(transaction: TransactionDTO) {
        val transactionEntity = Transaction(
            name = transaction.name, amount = transaction.amount, transactionType = transaction.transactionType)
        transactionRepository.save(transactionEntity)
    }

    override fun getTransactions(deleted: Boolean): List<TransactionDTO> {
        val transactions = transactionRepository.findAllByStatus(deleted)
        return transactions.stream()
            .map { transaction -> TransactionDTO(transaction.name, transaction.amount, transaction.transactionType) }.toList()
    }

    override fun deleteTransaction(transactionId: Int) {
        transactionRepository.deleteById(transactionId)
    }
}