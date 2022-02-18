//package com.pimpmypc.api.products.mappers;
//
//import com.pimpmypc.api.products.Processor;
//import com.pimpmypc.api.products.dto.ProcessorDto;
//import org.springframework.stereotype.Component;
//
//@Component
//public class ProductsMapperImpl implements ProductsMapper {
//    @Override
//    public ProcessorDto processorToProcessorDto(Processor processor) {
//        if (processor == null) {
//            return null;
//        }
//
//        return ProcessorDto.builder().id(processor.getId()).title(processor.getTitle()).description(processor.getDescription())
//                .imageUrl(processor.getImageUrl()).price(processor.getPrice()).brand(processor.getBrand())
//                .model(processor.getModel()).colors(processor.getColors()).cores(processor.getCores() + " cores")
//                .baseClock(processor.getBaseClock()).boostClock(processor.getBoostClock())
//                .motherboardSocket(processor.getMotherboardSocket()).tdp(processor.getTdp() + " W")
//                .integratedGraphic(processor.getIntegratedGraphic())
//                .multithreading(processor.isMultithreading() ? "Yes" : "No").build();
//    }
//}
