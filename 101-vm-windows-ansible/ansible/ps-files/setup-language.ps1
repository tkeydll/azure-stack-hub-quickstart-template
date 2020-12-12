# Set language.
Set-WinUserLanguageList ja-JP, en-US -Force
Set-WinUILanguageOverride -Language ja-JP

# Set locale.
Set-WinHomeLocation -GeoId 0x7A
Set-WinSystemLocale -SystemLocale ja-JP

# Set timezone.
Set-TimeZone -Id "Tokyo Standard Time"
