package com.personal.toolchest.controller

import com.personal.toolchest.dto.TransactionDTO
import com.personal.toolchest.service.impl.TransactionServiceImpl
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping(value = ["/api/v1"])
class TransactionController {

    @Autowired
    private lateinit var transactionServiceImpl: TransactionServiceImpl

    @GetMapping("/transactions")
    fun getTransactions(@RequestParam deleted: Boolean): List<TransactionDTO> {
        return transactionServiceImpl.getTransactions(deleted)
    }

    @PostMapping("/transaction")
    fun createTransaction(@RequestBody transactionDTO: TransactionDTO) {
        return transactionServiceImpl.createTransaction(transactionDTO);
    }

    @DeleteMapping("/transaction/{transactionId}")
    fun deleteTransaction(@PathVariable transactionId: Int) {
        return transactionServiceImpl.deleteTransaction(transactionId)
    }
}