contract SampleContract {
    string internal constant param = 'Hello World';
    function printParam() external pure returns (string) {
        return param;
    }
}
