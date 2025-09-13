import Foundation

@objc public class SetupOptions: NSObject {
    private var apiKey: String
    private var host: String
    private var enableSessionReplay: Bool
    private var sessionReplayConfig: SessionReplayOptions?
    private var config: [String: Any]?

    init(apiKey: String, host: String, enableSessionReplay: Bool, sessionReplayConfig: [String: Any]?, config: [String: Any]? = nil) {
        self.apiKey = apiKey
        self.host = host
        self.enableSessionReplay = enableSessionReplay
        self.config = config

        if let replayConfig = sessionReplayConfig {
            self.sessionReplayConfig = SessionReplayOptions(
                screenshotMode: replayConfig["screenshotMode"] as? Bool ?? false,
                maskAllTextInputs: replayConfig["maskAllTextInputs"] as? Bool ?? true,
                maskAllImages: replayConfig["maskAllImages"] as? Bool ?? true,
                maskAllSandboxedViews: replayConfig["maskAllSandboxedViews"] as? Bool ?? true,
                captureNetworkTelemetry: replayConfig["captureNetworkTelemetry"] as? Bool ?? true,
                debouncerDelay: replayConfig["debouncerDelay"] as? Double ?? 1.0
            )
        }
    }

    func getApiKey() -> String {
        return apiKey
    }

    func getHost() -> String {
        return host
    }

    func getEnableSessionReplay() -> Bool {
        return enableSessionReplay
    }

    func getSessionReplayConfig() -> SessionReplayOptions? {
        return sessionReplayConfig
    }

    func getConfig() -> [String: Any]? {
        return config
    }
}
