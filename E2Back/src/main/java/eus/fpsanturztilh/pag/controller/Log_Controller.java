package eus.fpsanturztilh.pag.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Map;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/logs")
public class Log_Controller {

    private static final String LOGGLY_TOKEN = "8fdab80a-93f9-41f1-9d29-1b3a23797bd0";
    private static final String LOGGLY_URL = "https://logs-01.loggly.com/inputs/" + LOGGLY_TOKEN + "/tag/browser";

    @PostMapping
    public ResponseEntity<?> recibirLog(@RequestBody Map<String, Object> log) {
        try {
            // Convertir a JSON
            ObjectMapper objectMapper = new ObjectMapper();
            String json = objectMapper.writeValueAsString(log);

            // Enviar a Loggly
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create(LOGGLY_URL))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpClient client = HttpClient.newHttpClient();
            client.send(request, HttpResponse.BodyHandlers.ofString());

            return ResponseEntity.ok("Log enviado correctamente a Loggly.");
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body("Error al enviar el log a Loggly.");
        }
    }
}
