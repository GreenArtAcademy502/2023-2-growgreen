package com.green.growgreen.plant;

import com.green.growgreen.ResVo;
import com.green.growgreen.plant.model.PlantInsDto;
import com.green.growgreen.plant.model.PlantSelDto;
import com.green.growgreen.plant.model.PlantSelVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/plant")
@RequiredArgsConstructor
public class PlantController {
    private final PlantService service;

    @PostMapping
    public ResVo postPlant(@RequestBody PlantInsDto dto) {
        return service.postPlant(dto);
    }

    //http://localhost:8080/api/plant?iuser=1
    @GetMapping
    public List<PlantSelVo> getPlantAll(PlantSelDto dto) {
        log.info("dto: {}", dto);
        return service.getPlantAll(dto);
    }
}
