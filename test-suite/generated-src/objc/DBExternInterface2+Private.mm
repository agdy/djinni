// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from yaml-test.djinni

#import "DBExternInterface2+Private.h"
#import "DBExternInterface2.h"
#import "DBExternRecordWithDerivings+Private.h"
#import "DBTestHelpers+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#include <stdexcept>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace djinni_generated {

class ExternInterface2::ObjcProxy final
: public ::ExternInterface2
, public ::djinni::ObjcProxyCache::Handle<ObjcType>
{
public:
    using Handle::Handle;
    ::ExternRecordWithDerivings foo(const std::shared_ptr<::testsuite::TestHelpers> & c_i) override
    {
        @autoreleasepool {
            auto r = [Handle::get() foo:(::djinni_generated::TestHelpers::fromCpp(c_i))];
            return ::djinni_generated::ExternRecordWithDerivings::toCpp(r);
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto ExternInterface2::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto ExternInterface2::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).Handle::get();
}

}  // namespace djinni_generated
