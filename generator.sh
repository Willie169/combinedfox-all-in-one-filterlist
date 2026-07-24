#!/bin/bash
urls=(
"https://ublockorigin.github.io/uAssetsCDN/filters/filters.min.txt" # ublock-filters
"https://ublockorigin.pages.dev/filters/badware.min.txt" # ublock-badware
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/filters/privacy.min.txt" # ublock-privacy
"https://ublockorigin.github.io/uAssetsCDN/filters/quick-fixes.min.txt" # ublock-quick-fixes
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/filters/unbreak.min.txt" # ublock-unbreak
"https://ublockorigin.pages.dev/thirdparties/easylist.txt" # easylist
"https://filters.adtidy.org/extension/ublock/filters/2_without_easylist.txt" # adguard-generic
"https://filters.adtidy.org/extension/ublock/filters/11.txt" # adguard-mobile
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/thirdparties/easyprivacy.txt" # easyprivacy
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/filters/privacy-removeparam.txt" # adguard-spyware-url
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/filters/lan-block.txt" # block-lan
"https://malware-filter.pages.dev/urlhaus-filter-ag-online.txt" # urlhaus-1
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/filters/annoyances-cookies.txt" # fanboy-cookiemonster
"https://ublockorigin.github.io/uAssetsCDN/thirdparties/easylist-cookies.txt" # ublock-cookies-easylist
"https://filters.adtidy.org/extension/ublock/filters/18.txt" # adguard-cookies
"https://ublockorigin.github.io/uAssetsCDN/filters/annoyances-cookies.txt" # ublock-cookies-adguard
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/thirdparties/easylist-ai.txt" # fanboy-ai-suggestions
"https://ublockorigin.github.io/uAssetsCDN/thirdparties/easylist-chat.txt" # easylist-chat
"https://ublockorigin.github.io/uAssetsCDN/thirdparties/easylist-newsletters.txt" # easylist-newsletters
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/thirdparties/easylist-notifications.txt" # easylist-notifications
"https://ublockorigin.github.io/uAssetsCDN/thirdparties/easylist-annoyances.txt" # easylist-annoyances
"https://filters.adtidy.org/extension/ublock/filters/20.txt" # adguard-mobile-app-banners
"https://filters.adtidy.org/extension/ublock/filters/21.txt" # adguard-other-annoyances
"https://filters.adtidy.org/extension/ublock/filters/19.txt" # adguard-popup-overlays
"https://filters.adtidy.org/extension/ublock/filters/22.txt" # adguard-widgets
"https://cdn.jsdelivr.net/gh/uBlockOrigin/uAssetsCDN@main/filters/annoyances.min.txt" # ublock-annoyances
"https://raw.githubusercontent.com/AnXh3L0/blocklist/master/albanian-easylist-addition/Albania.txt" # ALB-0
"https://stanev.org/abp/adblock_bg.txt" # BGR-0
"https://filters.adtidy.org/extension/ublock/filters/224.txt" # CHN-0
"https://raw.githubusercontent.com/tomasko126/easylistczechandslovak/master/filters.txt" # CZE-0
"https://easylist.to/easylistgermany/easylistgermany.txt" # DEU-0
"https://ubo-et.lepik.io/list.txt" # EST-0
"https://easylist-downloads.adblockplus.org/liste_ar.txt" # ara-0
"https://filters.adtidy.org/extension/ublock/filters/9.txt" # spa-1
"https://easylist-downloads.adblockplus.org/easylistspanish.txt" # spa-0
"https://raw.githubusercontent.com/finnish-easylist-addition/finnish-easylist-addition/gh-pages/Finland_adb.txt" # FIN-0
"https://filters.adtidy.org/extension/ublock/filters/16.txt" # FRA-0
"https://www.void.gr/kargig/void-gr-filters.txt" # GRC-0
"https://cdn.jsdelivr.net/gh/DandelionSprout/adfilt@master/SerboCroatianList.txt" # HRV-0
"https://cdn.jsdelivr.net/gh/hufilter/hufilter@gh-pages/hufilter-ublock.txt" # HUN-0
"https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/subscriptions/abpindo.txt" # IDN-0
"https://raw.githubusercontent.com/easylist/EasyListHebrew/master/EasyListHebrew.txt" # ISR-0
"https://easylist-downloads.adblockplus.org/indianlist.txt" # IND-0
"https://cdn.jsdelivr.net/gh/MasterKia/PersianBlocker@main/PersianBlocker.txt" # IRN-0
"https://raw.githubusercontent.com/brave/adblock-lists/master/custom/is.txt" # ISL-0
"https://easylist-downloads.adblockplus.org/easylistitaly.txt" # ITA-0
"https://filters.adtidy.org/extension/ublock/filters/7.txt" # JPN-1
"https://cdn.jsdelivr.net/npm/@list-kr/filterslists@latest/dist/filterslist-uBlockOrigin-classic.txt" # KOR-1
"https://raw.githubusercontent.com/EasyList-Lithuania/easylist_lithuania/master/easylistlithuania.txt" # LTU-0
"https://raw.githubusercontent.com/Latvian-List/adblock-latvian/master/lists/latvian-list.txt" # LVA-0
"https://raw.githubusercontent.com/DeepSpaceHarbor/Macedonian-adBlock-Filters/master/Filters" # MKD-0
"https://filters.adtidy.org/extension/ublock/filters/8.txt" # NLD-0
"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/NorwegianList.txt" # NOR-0
"https://hole.cert.pl/domains/v2/domains_ublock.txt" # POL-3
"https://raw.githubusercontent.com/MajkiIT/polish-ads-filter/master/polish-adblock-filters/adblock.txt" # POL-0
"https://raw.githubusercontent.com/tcptomato/ROad-Block/master/road-block-filters-light.txt" # ROU-1
"https://raw.githubusercontent.com/dimisa-RUAdList/RUAdListCDN/main/lists/ruadlist.ubo.min.txt" # RUS-0
"https://cdn.jsdelivr.net/gh/easylist/ruadlist@master/cntblock.txt" # RUS-1
"https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/swefilter/swefilter.min.txt" # SWE-1
"https://raw.githubusercontent.com/betterwebleon/slovenian-list/master/filters.txt" # SVN-0
"https://raw.githubusercontent.com/easylist-thailand/easylist-thailand/master/subscription/easylist-thailand.txt" # THA-0
"https://filters.adtidy.org/extension/ublock/filters/13.txt" # TUR-0
"https://filters.adtidy.org/extension/ublock/filters/23.txt" # UKR-0
"https://raw.githubusercontent.com/abpvn/abpvn/master/filter/abpvn_ublock.txt" # VIE-1
"https://assets.celenity.dev/ublock/phoenix/quick-fixes.txt"
"https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/doh.txt"
"https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/dyndns.txt"
"https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/pro.txt"
"https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/tif.medium.txt"
"https://gitflic.ru/project/magnolia1234/bypass-paywalls-clean-filters/blob/raw?file=bpc-paywall-filter.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/AdRemovalListForUnusualAds.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/Anti%C2%ABGooglePreferredSource%C2%BBList.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/AntiFunctionalityRemovalList.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/BrowseWebsitesWithoutLoggingIn.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/Dandelion%20Sprout's%20Anti-Malware%20List.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/EmptyPaddingRemover.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/I%20Don't%20Want%20to%20Download%20Your%20Browser.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/LegitimateURLShortener.txt"
"https://gitlab.com/DandelionSprout/adfilt/-/raw/master/stayingonbrowser/Staying%20On%20The%20Phone%20Browser"
"https://gitlab.com/celenityy/BadBlock/-/raw/pages/abp/click-tracking.txt"
"https://gitlab.com/celenityy/BadBlock/-/raw/pages/hardened/block-page-visibility.txt"
"https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt"
"https://raw.githubusercontent.com/liamengland1/miscfilters/refs/heads/master/antipaywall.txt"
"https://raw.githubusercontent.com/wiki/Willie169/combinedfox/filterlists/social-media.txt"
"https://raw.githubusercontent.com/yokoffing/filterlists/main/click2load.txt"
)
cat > filterlist.txt <<'EOF'
! Title: combinedfox filters - all in one
! Version: 18July2026v1
! Expires: 1 days
! Homepage: https://github.com/Willie169/combinedfox-all-in-one-filterlist
! Description: all-in-one filterlist combining all lists used in https://github.com/Willie169/combinedfox/wiki/my-ublock-backup.txt designed for Content Filtering of Brave for Android to not add lists one by one manually

EOF
for url in ${urls[@]}; do
    echo "$url"
    curl -fsSL "$url" >> filterlist.txt
done
