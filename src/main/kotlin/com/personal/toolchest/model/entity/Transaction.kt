package com.personal.toolchest.model.entity

import java.math.BigDecimal
import java.sql.Timestamp
import javax.persistence.*

enum class TransactionType {
    LUXURY, EATING_OUT, GROCERIES, GAS
}

@Entity(name = "transaction")
class Transaction(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var id: Int? = null,
    @Column(nullable = false) var name: String,
    @Column var amount: BigDecimal,
    @Enumerated(EnumType.STRING) var transactionType: TransactionType,
    @Column var createdOn: Timestamp = Timestamp(System.currentTimeMillis()),
    @Column var modifiedOn: Timestamp = Timestamp(System.currentTimeMillis())
) {
}