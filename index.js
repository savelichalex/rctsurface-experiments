/**
 * @format
 */

import {AppRegistry} from 'react-native';
import App, { App2, App3 } from './App';
import {name as appName} from './app.json';

AppRegistry.registerComponent(appName, () => App);
AppRegistry.registerComponent('App2', () => App2);
AppRegistry.registerComponent('App3', () => App3);
