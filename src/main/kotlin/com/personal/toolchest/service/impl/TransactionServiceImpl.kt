package com.personal.toolchest.service.impl

import com.personal.toolchest.dto.TransactionDTO
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

    @Autowired
    private lateinit var transactionTypeServiceImpl: TransactionTypeServiceImpl

    override fun createTransaction(transaction: TransactionDTO) {
        val transactionEntity = Transaction(
            name = transaction.name, amount = transaction.amount, transactionType = transaction.transactionType)
        transactionRepository.save(transactionEntity)
        val currentBalance =
            transactionTypeServiceImpl.getCurrentBalance(transaction.transactionType)
        val newBalance = currentBalance.subtract(transaction.amount)
        transactionTypeServiceImpl.updateBalance(transaction.transactionType, newBalance)
    }

    override fun getTransactions(deleted: Boolean): List<TransactionDTO> {
        val transactions = transactionRepository.findAllByStatus(deleted)
        return transactions.stream()
            .map { transaction -> TransactionDTO(transaction.name, transaction.amount, transaction.transactionType) }.toList()
    }

    override fun deleteTransaction(transactionId: Int) {
        val transaction = transactionRepository.findById(transactionId);
        if (transaction.isPresent) {
            transactionRepository.deleteById(transactionId)
            val transactionType = transaction.get().transactionType
            val currentBalance =
                transactionTypeServiceImpl.getCurrentBalance(transactionType)
            val newBalance = currentBalance.add(transaction.get().amount)
            transactionTypeServiceImpl.updateBalance(transactionType, newBalance)
        }
    }

    override fun getMonthlySpent() {
    }
}