# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisiontraining::V3_0
  module Models
    #
    # Defines values for CustomVisionErrorCodes
    #
    module CustomVisionErrorCodes
      NoError = "NoError"
      BadRequest = "BadRequest"
      BadRequestExceededBatchSize = "BadRequestExceededBatchSize"
      BadRequestNotSupported = "BadRequestNotSupported"
      BadRequestInvalidIds = "BadRequestInvalidIds"
      BadRequestProjectName = "BadRequestProjectName"
      BadRequestProjectNameNotUnique = "BadRequestProjectNameNotUnique"
      BadRequestProjectDescription = "BadRequestProjectDescription"
      BadRequestProjectUnknownDomain = "BadRequestProjectUnknownDomain"
      BadRequestProjectUnknownClassification = "BadRequestProjectUnknownClassification"
      BadRequestProjectUnsupportedDomainTypeChange = "BadRequestProjectUnsupportedDomainTypeChange"
      BadRequestProjectUnsupportedExportPlatform = "BadRequestProjectUnsupportedExportPlatform"
      BadRequestIterationName = "BadRequestIterationName"
      BadRequestIterationNameNotUnique = "BadRequestIterationNameNotUnique"
      BadRequestIterationDescription = "BadRequestIterationDescription"
      BadRequestIterationIsNotTrained = "BadRequestIterationIsNotTrained"
      BadRequestWorkspaceCannotBeModified = "BadRequestWorkspaceCannotBeModified"
      BadRequestWorkspaceNotDeletable = "BadRequestWorkspaceNotDeletable"
      BadRequestTagName = "BadRequestTagName"
      BadRequestTagNameNotUnique = "BadRequestTagNameNotUnique"
      BadRequestTagDescription = "BadRequestTagDescription"
      BadRequestTagType = "BadRequestTagType"
      BadRequestMultipleNegativeTag = "BadRequestMultipleNegativeTag"
      BadRequestImageTags = "BadRequestImageTags"
      BadRequestImageRegions = "BadRequestImageRegions"
      BadRequestNegativeAndRegularTagOnSameImage = "BadRequestNegativeAndRegularTagOnSameImage"
      BadRequestRequiredParamIsNull = "BadRequestRequiredParamIsNull"
      BadRequestIterationIsPublished = "BadRequestIterationIsPublished"
      BadRequestInvalidPublishName = "BadRequestInvalidPublishName"
      BadRequestInvalidPublishTarget = "BadRequestInvalidPublishTarget"
      BadRequestUnpublishFailed = "BadRequestUnpublishFailed"
      BadRequestIterationNotPublished = "BadRequestIterationNotPublished"
      BadRequestSubscriptionApi = "BadRequestSubscriptionApi"
      BadRequestExceedProjectLimit = "BadRequestExceedProjectLimit"
      BadRequestExceedIterationPerProjectLimit = "BadRequestExceedIterationPerProjectLimit"
      BadRequestExceedTagPerProjectLimit = "BadRequestExceedTagPerProjectLimit"
      BadRequestExceedTagPerImageLimit = "BadRequestExceedTagPerImageLimit"
      BadRequestExceededQuota = "BadRequestExceededQuota"
      BadRequestCannotMigrateProjectWithName = "BadRequestCannotMigrateProjectWithName"
      BadRequestNotLimitedTrial = "BadRequestNotLimitedTrial"
      BadRequestImageBatch = "BadRequestImageBatch"
      BadRequestImageStream = "BadRequestImageStream"
      BadRequestImageUrl = "BadRequestImageUrl"
      BadRequestImageFormat = "BadRequestImageFormat"
      BadRequestImageSizeBytes = "BadRequestImageSizeBytes"
      BadRequestImageExceededCount = "BadRequestImageExceededCount"
      BadRequestTrainingNotNeeded = "BadRequestTrainingNotNeeded"
      BadRequestTrainingNotNeededButTrainingPipelineUpdated = "BadRequestTrainingNotNeededButTrainingPipelineUpdated"
      BadRequestTrainingValidationFailed = "BadRequestTrainingValidationFailed"
      BadRequestClassificationTrainingValidationFailed = "BadRequestClassificationTrainingValidationFailed"
      BadRequestMultiClassClassificationTrainingValidationFailed = "BadRequestMultiClassClassificationTrainingValidationFailed"
      BadRequestMultiLabelClassificationTrainingValidationFailed = "BadRequestMultiLabelClassificationTrainingValidationFailed"
      BadRequestDetectionTrainingValidationFailed = "BadRequestDetectionTrainingValidationFailed"
      BadRequestTrainingAlreadyInProgress = "BadRequestTrainingAlreadyInProgress"
      BadRequestDetectionTrainingNotAllowNegativeTag = "BadRequestDetectionTrainingNotAllowNegativeTag"
      BadRequestInvalidEmailAddress = "BadRequestInvalidEmailAddress"
      BadRequestDomainNotSupportedForAdvancedTraining = "BadRequestDomainNotSupportedForAdvancedTraining"
      BadRequestExportPlatformNotSupportedForAdvancedTraining = "BadRequestExportPlatformNotSupportedForAdvancedTraining"
      BadRequestReservedBudgetInHoursNotEnoughForAdvancedTraining = "BadRequestReservedBudgetInHoursNotEnoughForAdvancedTraining"
      BadRequestExportValidationFailed = "BadRequestExportValidationFailed"
      BadRequestExportAlreadyInProgress = "BadRequestExportAlreadyInProgress"
      BadRequestPredictionIdsMissing = "BadRequestPredictionIdsMissing"
      BadRequestPredictionIdsExceededCount = "BadRequestPredictionIdsExceededCount"
      BadRequestPredictionTagsExceededCount = "BadRequestPredictionTagsExceededCount"
      BadRequestPredictionResultsExceededCount = "BadRequestPredictionResultsExceededCount"
      BadRequestPredictionInvalidApplicationName = "BadRequestPredictionInvalidApplicationName"
      BadRequestPredictionInvalidQueryParameters = "BadRequestPredictionInvalidQueryParameters"
      BadRequestInvalid = "BadRequestInvalid"
      UnsupportedMediaType = "UnsupportedMediaType"
      Forbidden = "Forbidden"
      ForbiddenUser = "ForbiddenUser"
      ForbiddenUserResource = "ForbiddenUserResource"
      ForbiddenUserSignupDisabled = "ForbiddenUserSignupDisabled"
      ForbiddenUserSignupAllowanceExceeded = "ForbiddenUserSignupAllowanceExceeded"
      ForbiddenUserDoesNotExist = "ForbiddenUserDoesNotExist"
      ForbiddenUserDisabled = "ForbiddenUserDisabled"
      ForbiddenUserInsufficientCapability = "ForbiddenUserInsufficientCapability"
      ForbiddenDRModeEnabled = "ForbiddenDRModeEnabled"
      ForbiddenInvalid = "ForbiddenInvalid"
      NotFound = "NotFound"
      NotFoundProject = "NotFoundProject"
      NotFoundProjectDefaultIteration = "NotFoundProjectDefaultIteration"
      NotFoundIteration = "NotFoundIteration"
      NotFoundIterationPerformance = "NotFoundIterationPerformance"
      NotFoundTag = "NotFoundTag"
      NotFoundImage = "NotFoundImage"
      NotFoundDomain = "NotFoundDomain"
      NotFoundApimSubscription = "NotFoundApimSubscription"
      NotFoundInvalid = "NotFoundInvalid"
      Conflict = "Conflict"
      ConflictInvalid = "ConflictInvalid"
      ErrorUnknown = "ErrorUnknown"
      ErrorProjectInvalidWorkspace = "ErrorProjectInvalidWorkspace"
      ErrorProjectInvalidPipelineConfiguration = "ErrorProjectInvalidPipelineConfiguration"
      ErrorProjectInvalidDomain = "ErrorProjectInvalidDomain"
      ErrorProjectTrainingRequestFailed = "ErrorProjectTrainingRequestFailed"
      ErrorProjectExportRequestFailed = "ErrorProjectExportRequestFailed"
      ErrorFeaturizationServiceUnavailable = "ErrorFeaturizationServiceUnavailable"
      ErrorFeaturizationQueueTimeout = "ErrorFeaturizationQueueTimeout"
      ErrorFeaturizationInvalidFeaturizer = "ErrorFeaturizationInvalidFeaturizer"
      ErrorFeaturizationAugmentationUnavailable = "ErrorFeaturizationAugmentationUnavailable"
      ErrorFeaturizationUnrecognizedJob = "ErrorFeaturizationUnrecognizedJob"
      ErrorFeaturizationAugmentationError = "ErrorFeaturizationAugmentationError"
      ErrorExporterInvalidPlatform = "ErrorExporterInvalidPlatform"
      ErrorExporterInvalidFeaturizer = "ErrorExporterInvalidFeaturizer"
      ErrorExporterInvalidClassifier = "ErrorExporterInvalidClassifier"
      ErrorPredictionServiceUnavailable = "ErrorPredictionServiceUnavailable"
      ErrorPredictionModelNotFound = "ErrorPredictionModelNotFound"
      ErrorPredictionModelNotCached = "ErrorPredictionModelNotCached"
      ErrorPrediction = "ErrorPrediction"
      ErrorPredictionStorage = "ErrorPredictionStorage"
      ErrorRegionProposal = "ErrorRegionProposal"
      ErrorInvalid = "ErrorInvalid"
    end
  end
end
