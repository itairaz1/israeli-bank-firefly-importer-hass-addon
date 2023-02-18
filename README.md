# Israeli Bank Firefly Importer HASS Addon
Home assistant addon for [Israeli Bank Firefly Importer](https://github.com/itairaz1/israeli-bank-firefly-importer)

## Installation
1. Add this add-ons repository to your home assistant instance by (One of):
    1. Automatic: [![Add repository on my Home Assistant][repository-badge]][repository-url]
    2. Manually: Settings -> Add-ons -> Add-on Store -> top right button (⫶) -> Repositories -> Add this repo.
2. In the Add-ons Store: click on `israeli-bank-firefly-importer` add-on and Install.
3. Create directory named `israeli-bank-firefly-importer` in home assistant `config` directory and add `config.yaml` file inside, you can use the [basic template](https://github.com/itairaz1/israeli-bank-firefly-importer-hass-addon/blob/main/israeli-bank-firefly-importer/basic.template.config.yaml).
4. In home assistant israeli-bank-firefly-importer add-on move to Configuration tab set the config as following:
    1. firefly-base-url - Set the URL of filefly
    2. firefly-token-api - Set the Toke API, if you don't own, please follow:
        1. Go to your hosted Firefly iii user interface.
        2. Click on 'Options' on the left.
        3. Click on 'Profile' in the sub menu.
        4. Click on 'OAuth' tab.
        5. Under 'Personal Access Tokens' click on 'Create new token'.
        6. Give a name and click create.
        7. Use the value as `firefly-token-api`
    3. cron - Set [CRON](https://crontab.guru/) to schedule a scrap and import (for example `0 6 * * *` every day at 6am).
5. Hit start at `israeli-bank-firefly-importer` add-on main page and then watch the logs and Log tab.

[repository-badge]: https://img.shields.io/badge/Add%20repository%20to%20my-Home%20Assistant-41BDF5?logo=home-assistant&style=for-the-badge
[repository-url]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fitairaz1%2Fisraeli-bank-firefly-importer-hass-addon
