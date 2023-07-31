package openssf.omega.policy.autogenerated.cwe.cwe_1313

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_1313
# title: "CWE-1313: Hardware Allows Activation of Test or Debug Logic at Runtime"
# methodology: >
#   During runtime, the hardware allows for test or debug logic (feature) to be activated, which allows for changing the state of the hardware. This feature can alter the intended behavior of the system and allow for alteration and leakage of sensitive data by an adversary.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-1313" in assertion.predicate.content.tags
    }
}