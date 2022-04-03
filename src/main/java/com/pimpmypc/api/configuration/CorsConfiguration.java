package com.pimpmypc.api.configuration;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
@Slf4j
class CorsConfiguration implements WebMvcConfigurer {

    @Autowired
    private Environment environment;

    @Override
    public void addCorsMappings(CorsRegistry registry) {

        String[] currentlyActiveProfiles = environment.getActiveProfiles();

        if (currentlyActiveProfiles.length > 0) {
            String profile = currentlyActiveProfiles[0];
            if (profile.equals("prod")) {
                setProductionProfile(registry);
            } else {
                setDevelopmentProfile(registry);
            }
        } else {
            setDevelopmentProfile(registry);
        }
    }

    private void setProductionProfile(CorsRegistry registry) {
        registry.addMapping("/**").allowedOrigins("https://relaxed-mcclintock-f71241.netlify.app")
                .allowedHeaders("*").allowedMethods("GET", "POST", "PUT", "PATCH");
        log.info("Using production CORS configuration");
    }

    private void setDevelopmentProfile(CorsRegistry registry) {
        registry.addMapping("/**").allowedOrigins("http://localhost:4200", "http://127.0.0.1:4200")
                .allowedHeaders("*").allowedMethods("*");
        log.info("Using development CORS configuration");
    }
}

