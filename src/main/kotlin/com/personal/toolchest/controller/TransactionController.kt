package com.personal.toolchest.controller

import com.personal.toolchest.dto.TransactionDTO
import com.personal.toolchest.service.impl.TransactionServiceImpl
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping(value = ["/api/v1/transaction"])
class TransactionController {

    @Autowired
    private lateinit var transactionServiceImpl: TransactionServiceImpl

    @GetMapping()
    fun getTransactions(@RequestParam deleted: Boolean): List<TransactionDTO> {
        return transactionServiceImpl.getTransactions(deleted)
    }

    @PostMapping()
    fun createTransaction(@RequestBody transactionDTO: TransactionDTO) {
        return transactionServiceImpl.createTransaction(transactionDTO);
    }

    @DeleteMapping("/{transactionId}")
    fun deleteTransaction(@PathVariable transactionId: Int) {
        return transactionServiceImpl.deleteTransaction(transactionId)
    }
}