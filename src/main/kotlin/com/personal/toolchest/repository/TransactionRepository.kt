package com.personal.toolchest.repository

import com.personal.toolchest.model.entity.Transaction
import org.springframework.data.jpa.repository.JpaRepository

interface TransactionRepository: JpaRepository<Transaction, Int> {

}