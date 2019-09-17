/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Fragment } from 'react';
import {
	SafeAreaView,
	StyleSheet,
	ScrollView,
	View,
	Text,
	StatusBar,
	TouchableOpacity,
	NativeModules,
	requireNativeComponent,
} from 'react-native';
import {
	Header,
	LearnMoreLinks,
	Colors,
	DebugInstructions,
	ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';

const App = () => {
	return (
		<Fragment>
			<StatusBar barStyle="dark-content" />
			<SafeAreaView>
				<ScrollView contentInsetAdjustmentBehavior="automatic" style={styles.scrollView}>
					<Header />
					{global.HermesInternal == null ? null : (
						<View style={styles.engine}>
							<Text style={styles.footer}>Engine: Hermes</Text>
						</View>
					)}
					<View style={styles.body}>
						<View style={styles.sectionContainer}>
							<Text style={styles.sectionTitle}>Step One</Text>
							<Text style={styles.sectionDescription}>
								Edit <Text style={styles.highlight}>App.js</Text> to change this screen and then
								come back to see your edits.
							</Text>
						</View>
						<View style={styles.sectionContainer}>
							<Text style={styles.sectionTitle}>See Your Changes</Text>
							<Text style={styles.sectionDescription}>
								<ReloadInstructions />
							</Text>
						</View>
						<View style={styles.sectionContainer}>
							<Text style={styles.sectionTitle}>Debug</Text>
							<Text style={styles.sectionDescription}>
								<DebugInstructions />
							</Text>
						</View>
						<View style={styles.sectionContainer}>
							<Text style={styles.sectionTitle}>Learn More</Text>
							<Text style={styles.sectionDescription}>
								Read the docs to discover what to do next:
							</Text>
						</View>
						<LearnMoreLinks />
					</View>
				</ScrollView>
			</SafeAreaView>
		</Fragment>
	);
};

const FunTextField = requireNativeComponent('FunTextField');
// I must have patched ScrollView from RN and require it there
//const FunScrollView = requireNativeComponent('FunScrollView');

export const App2 = () => (
	<ScrollView style={{ flex: 1, backgroundColor: 'white' }} contentContainerStyle={{ flexDirection: 'column' }}>
		<View>
			<Text>Hello from JS!</Text>
			<TouchableOpacity
				onPress={() => NativeModules.NavCoordinator.presentVC({ id: 'App3', title: 'app3' })}>
				<Text>Go forward</Text>
			</TouchableOpacity>
			<FunTextField placeholder="Tap me, i'm a TextField" style={{ marginVertical: 10 }} />
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
      <Text>---</Text>
		</View>
	</ScrollView>
);

export const App3 = () => (
	<View style={{ flex: 1, backgroundColor: 'yellow' }}>
		<Text>Hello from JS in inputAccessoryView!</Text>
	</View>
);

const styles = StyleSheet.create({
	scrollView: {
		backgroundColor: Colors.lighter,
	},
	engine: {
		position: 'absolute',
		right: 0,
	},
	body: {
		backgroundColor: Colors.white,
	},
	sectionContainer: {
		marginTop: 32,
		paddingHorizontal: 24,
	},
	sectionTitle: {
		fontSize: 24,
		fontWeight: '600',
		color: Colors.black,
	},
	sectionDescription: {
		marginTop: 8,
		fontSize: 18,
		fontWeight: '400',
		color: Colors.dark,
	},
	highlight: {
		fontWeight: '700',
	},
	footer: {
		color: Colors.dark,
		fontSize: 12,
		fontWeight: '600',
		padding: 4,
		paddingRight: 12,
		textAlign: 'right',
	},
});

export default App;
