import { library, dom, config } from '@fortawesome/fontawesome-svg-core';
import { faNewspaper } from '@fortawesome/free-solid-svg-icons';
import {faTipeee} from './icons'

config.searchPseudoElements = true;

library.add(faNewspaper,faTipeee); // Add icons that you need.

dom.watch();