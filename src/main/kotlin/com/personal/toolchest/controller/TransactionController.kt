package com.personal.toolchest.controller

import com.personal.toolchest.model.TransactionDTO
import com.personal.toolchest.service.TransactionService
import com.personal.toolchest.service.impl.TransactionServiceImpl
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping(value = ["/api/v1"])
class TransactionController {

    @Autowired
    private lateinit var transactionServiceImpl: TransactionServiceImpl

    @GetMapping("/transactions")
    fun getTransactions(): List<TransactionDTO> {
        return transactionServiceImpl.getTransactions()
    }

    @PostMapping("/transaction")
    fun createTransaction(@RequestBody transactionDTO: TransactionDTO) {
        return transactionServiceImpl.createTransaction(transactionDTO);
    }
}