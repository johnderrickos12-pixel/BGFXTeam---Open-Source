#pragma once

namespace Yanna {

class Logger {
public:
    enum Level {
        INFO,
        DEBUG,
        ERROR,
        FATAL
    };

    static void Log(Level level, const char* format, ...);
    static void Info(const char* format, ...);
    static void Debug(const char* format, ...);
    static void Error(const char* format, ...);
    static void Fatal(const char* format, ...);
};
}

#define Yanna_LOG_INFO(str, ...)  Yanna::Logger::Info(str, ##__VA_ARGS__)
#define Yanna_LOG_DEBUG(str, ...) Yanna::Logger::Debug(str, ##__VA_ARGS__)
#define Yanna_LOG_ERROR(str, ...) Yanna::Logger::Error(str, ##__VA_ARGS__)
#define Yanna_LOG_FATAL(str, ...) Yanna::Logger::Fatal(str, ##__VA_ARGS__)
