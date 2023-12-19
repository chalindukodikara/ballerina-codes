import ballerina/log;

public type ReadOnlyRecord readonly & record {
    string readOnlyValue;
};

public type NormalRecord record {
    string normalValue;
};

configurable ReadOnlyRecord record1 = ?;
configurable NormalRecord record2 = ?;

public function main() {
    string welcomeMsg = "Hello World!, values: " + record1.toBalString() + ", " + record2.toBalString();
    log:printInfo(welcomeMsg);
}
