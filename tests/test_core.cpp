#include "core"

#include <cassert>
#include <memory>

namespace {

class TestModule : public union_sdk::IModule {
public:
    bool initialize() override { return true; }
    void shutdown() override {}
    std::string name() const override { return "test"; }
};

} // namespace

int main() {
    using namespace union_sdk;

    Core& core = Core::instance();
    assert(core.initialize());

    Config& config = core.config();
    config.set("mode", "test");
    assert(config.has("mode"));
    assert(config.get("mode") == "test");
    assert(config.get("missing", "fallback") == "fallback");

    auto module = core.registerModule<TestModule>();
    assert(module != nullptr);
    assert(module->name() == "test");

    core.shutdown();
    return 0;
}
