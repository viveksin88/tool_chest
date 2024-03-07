package com.personal.toolchest.repository

import com.personal.toolchest.model.entity.Transaction
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import org.springframework.transaction.annotation.Transactional


interface TransactionRepository: JpaRepository<Transaction, Int> {
    @Query("SELECT t from transaction t where t.deleted = ?1")
    fun findAllByStatus(deleted: Boolean): List<Transaction>

    @Transactional
    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query("UPDATE transaction t SET t.deleted = :deleted WHERE t.id = :transactionId")
    fun deleteTransaction(transactionId: Int, deleted: Boolean): Int
}