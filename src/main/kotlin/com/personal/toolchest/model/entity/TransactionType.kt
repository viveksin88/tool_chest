package com.personal.toolchest.model.entity

import java.math.BigDecimal
import javax.persistence.*

@Entity(name="transaction_type")
class TransactionType (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) var id: Int? = null,
    @Enumerated(EnumType.STRING) var transactionType: TransactionTypeEnum,
    @Column var allowedLimit: BigDecimal,
    @Column var remainingBalance: BigDecimal
){}