package io.capawesome.capacitorjs.plugins.posthog.classes.options;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;

public class SetupOptions {

    @NonNull
    private String apiKey;

    @NonNull
    private String host;

    @Nullable
    private Boolean enableSessionReplay;

    @Nullable
    private SessionReplayOptions sessionReplayConfig;

    @Nullable
    private Map<String, Object> config;

    public SetupOptions(@NonNull String apiKey, @NonNull String host) {
        this.apiKey = apiKey;
        this.host = host;
        this.config = null;
    }

    public SetupOptions(@NonNull String apiKey, @NonNull String host, @Nullable Map<String, Object> config) {
        this.apiKey = apiKey;
        this.host = host;
        this.config = config;
    }

    @NonNull
    public String getApiKey() {
        return apiKey;
    }

    @NonNull
    public String getHost() {
        return host;
    }

    @Nullable
    public boolean getEnableSessionReplay() {
        return enableSessionReplay;
    }

    public void setEnableSessionReplay(boolean enableSessionReplay) {
        this.enableSessionReplay = enableSessionReplay;
    }

    @Nullable
    public SessionReplayOptions getSessionReplayConfig() {
        return sessionReplayConfig;
    }

    public void setSessionReplayConfig(@Nullable SessionReplayOptions sessionReplayConfig) {
        this.sessionReplayConfig = sessionReplayConfig;
    }

    @Nullable
    public Map<String, Object> getConfig() {
        return config;
    }
}
