#include "core"

#include <iostream>
#include <mutex>

namespace union_sdk {

namespace {
std::once_flag once;
Core* instance_ptr = nullptr;
} // namespace

void ConsoleLogger::logInfo(const std::string& message) {
    std::cout << "[info] " << message << '\n';
}

void ConsoleLogger::logWarn(const std::string& message) {
    std::cout << "[warn] " << message << '\n';
}

void ConsoleLogger::logError(const std::string& message) {
    std::cerr << "[error] " << message << '\n';
}

void Config::set(const std::string& key, const std::string& value) {
    values_[key] = value;
}

std::string Config::get(const std::string& key, const std::string& defaultValue) const {
    const auto it = values_.find(key);
    return it != values_.end() ? it->second : defaultValue;
}

bool Config::has(const std::string& key) const {
    return values_.find(key) != values_.end();
}

Core& Core::instance() {
    std::call_once(once, []() {
        instance_ptr = new Core();
    });
    return *instance_ptr;
}

Core::Core() : logger_(std::make_unique<ConsoleLogger>()) {}

Core::~Core() = default;

bool Core::initialize() {
    std::lock_guard<std::mutex> lock(mutex_);
    return true;
}

void Core::shutdown() {
    std::lock_guard<std::mutex> lock(mutex_);
    modules_.clear();
}

void Core::setLogger(std::unique_ptr<ILogger> logger) {
    std::lock_guard<std::mutex> lock(mutex_);
    logger_ = std::move(logger);
}

ILogger& Core::logger() {
    std::lock_guard<std::mutex> lock(mutex_);
    return *logger_;
}

Config& Core::config() {
    return config_;
}

} // namespace union_sdk
