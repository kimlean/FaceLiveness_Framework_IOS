//
//  Exceptions.swift
//  FaceLivenessSDK
//
//  Created by Sreang on 22/3/25.
//

import Foundation

/**
 * Base exception class for all SDK exceptions
 */
@objc public class FaceLivenessException: NSError {
    @objc public convenience init(_ message: String, _ cause: Error? = nil) {
        let userInfo: [String: Any] = [
            NSLocalizedDescriptionKey: message,
            NSUnderlyingErrorKey: cause as Any
        ]
        self.init(domain: "com.acleda.facelivenesssdk", code: 1000, userInfo: userInfo)
    }
}

/**
 * Exception thrown when there are issues loading ML models
 */
@objc public class ModelLoadingException: FaceLivenessException {
    @objc public convenience init(_ message: String, _ cause: Error? = nil) {
        let userInfo: [String: Any] = [
            NSLocalizedDescriptionKey: message,
            NSUnderlyingErrorKey: cause as Any
        ]
        self.init(domain: "com.acleda.facelivenesssdk", code: 1001, userInfo: userInfo)
    }
}

/**
 * Exception thrown when the input image is invalid
 */
@objc public class InvalidImageException: FaceLivenessException {
    @objc public convenience init(_ message: String) {
        let userInfo: [String: Any] = [
            NSLocalizedDescriptionKey: message
        ]
        self.init(domain: "com.acleda.facelivenesssdk", code: 1002, userInfo: userInfo)
    }
}

/**
 * Exception thrown when face detection fails
 */
@objc public class FaceDetectionException: FaceLivenessException {
    @objc public convenience init(_ message: String, _ cause: Error? = nil) {
        let userInfo: [String: Any] = [
            NSLocalizedDescriptionKey: message,
            NSUnderlyingErrorKey: cause as Any
        ]
        self.init(domain: "com.acleda.facelivenesssdk", code: 1003, userInfo: userInfo)
    }
}

/**
 * Exception thrown when liveness detection fails
 */
@objc public class LivenessException: FaceLivenessException {
    @objc public convenience init(_ message: String, _ cause: Error? = nil) {
        let userInfo: [String: Any] = [
            NSLocalizedDescriptionKey: message,
            NSUnderlyingErrorKey: cause as Any
        ]
        self.init(domain: "com.acleda.facelivenesssdk", code: 1004, userInfo: userInfo)
    }
}

/**
 * Exception thrown when occlusion detection fails
 */
@objc public class OcclusionDetectionException: FaceLivenessException {
    @objc public convenience init(_ message: String, _ cause: Error? = nil) {
        let userInfo: [String: Any] = [
            NSLocalizedDescriptionKey: message,
            NSUnderlyingErrorKey: cause as Any
        ]
        self.init(domain: "com.acleda.facelivenesssdk", code: 1005, userInfo: userInfo)
    }
}

/**
 * Exception thrown when quality check fails
 */
@objc public class QualityCheckException: FaceLivenessException {
    @objc public convenience init(_ message: String, _ cause: Error? = nil) {
        let userInfo: [String: Any] = [
            NSLocalizedDescriptionKey: message,
            NSUnderlyingErrorKey: cause as Any
        ]
        self.init(domain: "com.acleda.facelivenesssdk", code: 1006, userInfo: userInfo)
    }
}
