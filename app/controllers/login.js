import { Controller, computed } from 'ember';

import OsfTokenLoginControllerMixin from 'ember-osf/mixins/osf-token-login-controller';

export default Controller.extend(OsfTokenLoginControllerMixin, {
    login: computed.alias('model'),
});
