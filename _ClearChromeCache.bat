@echo off
REM ClearChromeCache.bat
REM Clear Chrome User Data cache and temporary folders without affecting important data

setlocal enabledelayedexpansion

REM ========================================================
REM =========== top folders which safe to delete ===========
REM ========================================================
    set FOLDERS=
    set FOLDERS=!FOLDERS! "AmountExtractionHeuristicRegexes"
REM set FOLDERS=!FOLDERS! "AutofillStates"
    set FOLDERS=!FOLDERS! "BrowserMetrics"
REM set FOLDERS=!FOLDERS! "CertificateRevocation"
    set FOLDERS=!FOLDERS! "component_crx_cache"
    set FOLDERS=!FOLDERS! "CookieReadinessList"
    set FOLDERS=!FOLDERS! "Crashpad"
    set FOLDERS=!FOLDERS! "Crowd Deny"
REM set FOLDERS=!FOLDERS! "Default"
    set FOLDERS=!FOLDERS! "extensions_crx_cache"
    set FOLDERS=!FOLDERS! "FileTypePolicies"
    set FOLDERS=!FOLDERS! "FirstPartySetsPreloaded"
    set FOLDERS=!FOLDERS! "GraphiteDawnCache"
    set FOLDERS=!FOLDERS! "GrShaderCache"
    set FOLDERS=!FOLDERS! "hyphen-data"
REM set FOLDERS=!FOLDERS! "MediaFoundationWidevineCdm"
    set FOLDERS=!FOLDERS! "MEIPreload"
    set FOLDERS=!FOLDERS! "OnDeviceHeadSuggestModel"
REM set FOLDERS=!FOLDERS! "OpenCookieDatabase"
    set FOLDERS=!FOLDERS! "OptimizationHints"
    set FOLDERS=!FOLDERS! "optimization_guide_model_store"
    set FOLDERS=!FOLDERS! "OriginTrials"
    set FOLDERS=!FOLDERS! "PKIMetadata"
    set FOLDERS=!FOLDERS! "PrivacySandboxAttestationsPreloaded"
    set FOLDERS=!FOLDERS! "ProbabilisticRevealTokenRegistry"
    set FOLDERS=!FOLDERS! "RecoveryImproved"
REM set FOLDERS=!FOLDERS! "Safe Browsing"
    set FOLDERS=!FOLDERS! "SafetyTips"
    set FOLDERS=!FOLDERS! "segmentation_platform"
    set FOLDERS=!FOLDERS! "ShaderCache"
    set FOLDERS=!FOLDERS! "SSLErrorAssistant"
    set FOLDERS=!FOLDERS! "Subresource Filter"
    set FOLDERS=!FOLDERS! "TpcdMetadata"
    set FOLDERS=!FOLDERS! "TrustTokenKeyCommitments"
    set FOLDERS=!FOLDERS! "WasmTtsEngine"
REM set FOLDERS=!FOLDERS! "WidevineCdm"
    set FOLDERS=!FOLDERS! "ZxcvbnData"

REM ========================================================
REM ==== sub folders under /Default that safe to delete ====
REM ========================================================
    set FOLDERS=!FOLDERS! "Default\Accounts"
    set FOLDERS=!FOLDERS! "Default\AutofillStrikeDatabase"
    set FOLDERS=!FOLDERS! "Default\blob_storage"
    set FOLDERS=!FOLDERS! "Default\BudgetDatabase"
    set FOLDERS=!FOLDERS! "Default\Cache"
    set FOLDERS=!FOLDERS! "Default\chrome_cart_db"
REM set FOLDERS=!FOLDERS! "Default\ClientCertificates"
    set FOLDERS=!FOLDERS! "Default\Code Cache"
    set FOLDERS=!FOLDERS! "Default\commerce_subscription_db"
    set FOLDERS=!FOLDERS! "Default\DawnGraphiteCache"
    set FOLDERS=!FOLDERS! "Default\DawnWebGPUCache"
    set FOLDERS=!FOLDERS! "Default\discounts_db"
    set FOLDERS=!FOLDERS! "Default\discount_infos_db"
    set FOLDERS=!FOLDERS! "Default\Download Service"
REM set FOLDERS=!FOLDERS! "Default\Extension Rules"
    set FOLDERS=!FOLDERS! "Default\Extension Scripts"
REM set FOLDERS=!FOLDERS! "Default\Extension State"
REM set FOLDERS=!FOLDERS! "Default\Extensions"
    set FOLDERS=!FOLDERS! "Default\Feature Engagement Tracker"
    set FOLDERS=!FOLDERS! "Default\GCM Store"
    set FOLDERS=!FOLDERS! "Default\GPUCache"
REM set FOLDERS=!FOLDERS! "Default\Local Extension Settings"
REM set FOLDERS=!FOLDERS! "Default\Local Storage"
REM set FOLDERS=!FOLDERS! "Default\Network"
    set FOLDERS=!FOLDERS! "Default\optimization_guide_hint_cache_store"
    set FOLDERS=!FOLDERS! "Default\parcel_tracking_db"
    set FOLDERS=!FOLDERS! "Default\PersistentOriginTrials"
REM set FOLDERS=!FOLDERS! "Default\Safe Browsing Network"
    set FOLDERS=!FOLDERS! "Default\Segmentation Platform"
    set FOLDERS=!FOLDERS! "Default\Service Worker"
REM set FOLDERS=!FOLDERS! "Default\Session Storage"
REM set FOLDERS=!FOLDERS! "Default\Sessions"
    set FOLDERS=!FOLDERS! "Default\Shared Dictionary"
    set FOLDERS=!FOLDERS! "Default\shared_proto_db"
    set FOLDERS=!FOLDERS! "Default\Site Characteristics Database"
REM set FOLDERS=!FOLDERS! "Default\Storage"
REM set FOLDERS=!FOLDERS! "Default\Sync Data"
REM set FOLDERS=!FOLDERS! "Default\Web Applications"
REM set FOLDERS=!FOLDERS! "Default\WebStorage"

REM ========================================================
REM ============= Custom top folders to record =============
REM ========================================================
    set FOLDERS=!FOLDERS! "DeferredBrowserMetrics"
    set FOLDERS=!FOLDERS! "Notification Resources"
    set FOLDERS=!FOLDERS! "ThirdPartyModuleList64"
    set FOLDERS=!FOLDERS! "Webstore Downloads"

REM ========================================================
REM ============= Custom sub folders to record =============
REM ========================================================
    set FOLDERS=!FOLDERS! "Default\coupon_db"
    set FOLDERS=!FOLDERS! "Default\DawnCache"
    set FOLDERS=!FOLDERS! "Default\feedv2"
REM set FOLDERS=!FOLDERS! "Default\File System"
REM set FOLDERS=!FOLDERS! "Default\IndexedDB"
    set FOLDERS=!FOLDERS! "Default\JumpListIconsMostVisited"
    set FOLDERS=!FOLDERS! "Default\JumpListIconsRecentClosed"
REM set FOLDERS=!FOLDERS! "Default\Platform Notifications"
    set FOLDERS=!FOLDERS! "Default\Search Logos"
REM set FOLDERS=!FOLDERS! "Default\Sync App Settings"
REM set FOLDERS=!FOLDERS! "Default\Sync Extension Settings"
    set FOLDERS=!FOLDERS! "Default\VideoDecodeStats"
    set FOLDERS=!FOLDERS! "Default\WebrtcVideoStats"

echo Deleting Chrome cache and temporary folders...

for %%F in (!FOLDERS!) do (
    if exist %%~F (
        echo Deleting folder: %%~F
        rmdir /s /q "%%~F"
    ) else (
        echo Folder not found: %%~F
    )
)

echo All selected folders have been cleared.
pause
endlocal
