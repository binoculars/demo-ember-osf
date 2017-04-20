import { Controller, inject, computed } from 'ember';

export default Controller.extend({
    session: inject.service(),
    index: computed.alias('model'),
});
