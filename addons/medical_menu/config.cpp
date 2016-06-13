#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_medical_treatment"};
        author = ECSTRING(common,ACETeam);
        authors[] = {"Glowbal"};
        url = ECSTRING(main,URL);
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "ui\menu.hpp"
#include "ACE_Settings.hpp"
#include "CfgVehicles.hpp"

class ACE_newEvents {
    Medical_onMenuOpen = "ace_medicalMenuOpened";
};
