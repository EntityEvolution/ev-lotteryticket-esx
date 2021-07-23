i18n = setmetatable({}, i18n)
i18n.__index = i18n

local store = {}
local lang = {}
availableLang = {}

function i18n.setup(l)
    if (language ~= nil) then
        lang = language
    end
end

function i18n.exportData()
    local result = store
    return result
end

function i18n.importData(language, saying)
    table.insert(availableLang, language)
    store[language] = saying
end

function i18n.setLang(language) -- Sets the lang (Ex. EN, FR, ES, ETC)
    lang = language
end

function i18n.translate(key)
    local result = ""
    if (store == nil) then
        result = "Error[Locale]: No translation available!"
    else
        result = store[lang][key]
        if (result == nil) then
          result = "Error[Key]: No key was found!"
        end
    end
    return result
end
