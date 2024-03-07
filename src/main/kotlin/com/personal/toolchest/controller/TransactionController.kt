package com.personal.toolchest.controller

import com.personal.toolchest.model.TransactionDTO
import com.personal.toolchest.service.TransactionService
import com.personal.toolchest.service.impl.TransactionServiceImpl
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.DeleteMapping
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import javax.websocket.server.PathParam

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