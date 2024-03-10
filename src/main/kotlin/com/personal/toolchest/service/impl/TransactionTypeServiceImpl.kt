package com.personal.toolchest.service.impl

import com.personal.toolchest.dto.TransactionTypeDTO
import com.personal.toolchest.model.entity.TransactionType
import com.personal.toolchest.model.entity.TransactionTypeEnum
import com.personal.toolchest.repository.TransactionTypeRepository
import com.personal.toolchest.service.TransactionTypeService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import java.math.BigDecimal

@Service
class TransactionTypeServiceImpl: TransactionTypeService {

    @Autowired
    private lateinit var transactionTypeRepository: TransactionTypeRepository

    override fun addTransactionType(transactionTypeDTO: TransactionTypeDTO) {
        val transactionType = TransactionType(transactionType = transactionTypeDTO.transactionType, allowedLimit = transactionTypeDTO.allowedLimit, remainingBalance = transactionTypeDTO.remainingBalance)
        transactionTypeRepository.save(transactionType)
    }

    override fun updateBalance(transactionTypeEnum: TransactionTypeEnum, newBalance: BigDecimal) {
        val transactionType =
            transactionTypeRepository.findByTransactionType(transactionType = transactionTypeEnum)
        transactionType.remainingBalance = newBalance
        transactionTypeRepository.save(transactionType)
    }

    override fun getCurrentBalance(transactionTypeEnum: TransactionTypeEnum): BigDecimal {
        val transactionType =
            transactionTypeRepository.findByTransactionType(transactionType = transactionTypeEnum)
        return transactionType.remainingBalance ?: BigDecimal.ZERO
    }
}