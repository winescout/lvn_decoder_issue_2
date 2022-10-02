# lvn_decoder_issue_2

For loops in a live component lead to a fatal error if the live component itself is in a for loop.  See the sample app for an example.

## Included in this sample code
1. basic Swift project, based off of the lvn tutorial
2. Phoenix project with a live view and live component demonstrating the issue

##The error
```
2022-10-01 13:19:15.046075-0700 decoder_bug_ios[46681:3007542] [connection] nw_socket_handle_socket_event [C3.1.1:2] Socket SO_ERROR [61: Connection refused]
PhoenixLiveViewNative/LiveViewCoordinator.swift:486: Fatal error: 'try!' expression unexpectedly raised an error: Swift.DecodingError.keyNotFound(CodingKeys(stringValue: "s", intValue: nil), Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "c", intValue: nil), IntKey(stringValue: "2", intValue: 2), CodingKeys(stringValue: "0", intValue: 0), CodingKeys(stringValue: "s", intValue: nil)], debugDescription: "CodingKeys(stringValue: \"s\", intValue: nil) not found", underlyingError: nil))
2022-10-01 13:19:15.046888-0700 decoder_bug_ios[46681:3007325] PhoenixLiveViewNative/LiveViewCoordinator.swift:486: Fatal error: 'try!' expression unexpectedly raised an error: Swift.DecodingError.keyNotFound(CodingKeys(stringValue: "s", intValue: nil), Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "c", intValue: nil), IntKey(stringValue: "2", intValue: 2), CodingKeys(stringValue: "0", intValue: 0), CodingKeys(stringValue: "s", intValue: nil)], debugDescription: "CodingKeys(stringValue: \"s\", intValue: nil) not found", underlyingError: nil))
```
