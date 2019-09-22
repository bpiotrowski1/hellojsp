package pl.piotrowskib;

public class UptimeService {
    private long startTime = System.currentTimeMillis();

    public String getUptimeMessage() {
        long uptime = System.currentTimeMillis() - startTime;
        long hours = uptime / 3600000;
        long minutes = uptime / 60000 % 60;
        long seconds = uptime / 1000 % 60;
        return String.format("%dh %dm %ds", hours, minutes, seconds);
    }
}
