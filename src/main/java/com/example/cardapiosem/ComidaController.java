package com.example.cardapiosem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ComidaController {

    private final List<Prato> pratos = new ArrayList<>();
    private final List<Prato> feitos = new ArrayList<>();

    @GetMapping("/")
    public String inicio(Model model) {
        model.addAttribute("total", pratos.size());
        model.addAttribute("feitos", feitos.size());
        return "index";
    }

    @GetMapping("/pratos")
    public String listarPratos(Model model) {
        model.addAttribute("pratos", pratos);
        return "lista";
    }

    @GetMapping("/pratos/novo")
    public String novoPrato() {
        return "formulario";
    }

    @PostMapping("/pratos")
    public String salvarPrato(@ModelAttribute Prato prato) {
        pratos.add(prato);
        return "redirect:/pratos";
    }

    @PostMapping("/pratos/{indice}/feito")
    public String marcarComoFeito(@PathVariable int indice) {

        if (indice >= 0 && indice < pratos.size()) {
            Prato prato = pratos.remove(indice);
            feitos.add(prato);
        }

        return "redirect:/pratos";
    }

    @GetMapping("/feitos")
    public String listarFeitos(Model model) {
        model.addAttribute("feitos", feitos);
        return "feitos";
    }
}
