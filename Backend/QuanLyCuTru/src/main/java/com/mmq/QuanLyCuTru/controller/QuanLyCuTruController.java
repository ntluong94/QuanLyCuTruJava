package com.mmq.QuanLyCuTru.controller;

import com.mmq.QuanLyCuTru.config.Constants;
import com.mmq.QuanLyCuTru.model.CuTru;
import com.mmq.QuanLyCuTru.service.CuTruService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/quanlycutru")
@CrossOrigin(origins = Constants.CLIENT_URL)
public class QuanLyCuTruController {

    @Autowired
    CuTruService cuTruService;

    // Lấy danh sách cư trú
    @GetMapping("")
    public List<CuTru> getCuTrus() {
        return cuTruService.getAll();
    }

    // Lấy cư trú theo id
    @GetMapping("/{id}")
    public ResponseEntity<CuTru> getById(@PathVariable int id) {
        // Lấy ra một object CuTru trong db
        CuTru cuTru = cuTruService.getById(id);

        // Trường hợp object CuTru rỗng (= null)
        if (cuTru == null) {
            // Trả về mã lỗi 404 Not Found
            return new ResponseEntity<CuTru>(HttpStatus.NOT_FOUND);
        }

        // Trường hợp object CuTru có dữ liệu
        return ResponseEntity.ok(cuTruService.getById(id));
    }
}
