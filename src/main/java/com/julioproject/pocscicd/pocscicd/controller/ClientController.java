package com.julioproject.pocscicd.pocscicd.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class ClientController {

    @GetMapping("ola")
    public String olaImbecil() {

        return "Olá imbecil";
    }

    @GetMapping("olav2")
    public String olcaImbecilV2() {
        String msg = "Olá imbecil v2";
        return msg;
    }

}
