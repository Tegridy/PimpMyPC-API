package com.pimpmypc.api.products.mappers;

import com.pimpmypc.api.products.Processor;
import com.pimpmypc.api.products.dto.ProcessorDto;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ProductsMapper {

    ProcessorDto processorToProcessorDto(Processor processor);
}
