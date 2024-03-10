package com.personal.toolchest.controller

import com.personal.toolchest.dto.TransactionTypeDTO
import com.personal.toolchest.model.entity.TransactionTypeEnum
import com.personal.toolchest.service.impl.TransactionTypeServiceImpl
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.*
import java.math.BigDecimal

@RestController
@RequestMapping(value = ["/api/v1/transaction-type"])
class TransactionTypeController {

    @Autowired
    private lateinit var transactionTypeServiceImpl: TransactionTypeServiceImpl

    @PostMapping()
    fun addTransactionType(@RequestBody transactionTypeDTO: TransactionTypeDTO) {
        transactionTypeServiceImpl.addTransactionType(transactionTypeDTO)
    }

    @GetMapping("/{transactionType}/balance")
    fun getTransactionTypeBalance(@PathVariable transactionType: TransactionTypeEnum): BigDecimal {
        return transactionTypeServiceImpl.getCurrentBalance(transactionType)
    }
}