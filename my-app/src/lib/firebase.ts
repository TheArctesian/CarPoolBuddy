// Import the functions you need from the SDKs you need
import { initializeApp } from 'firebase/app';
import { getAnalytics } from 'firebase/analytics';
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
	apiKey: 'AIzaSyBKGwPYS3V0DNaZldAuVkqaIPAKMD89kCU',
	authDomain: 'pset-3-8d414.firebaseapp.com',
	projectId: 'pset-3-8d414',
	storageBucket: 'pset-3-8d414.appspot.com',
	messagingSenderId: '201454011758',
	appId: '1:201454011758:web:1d77929b14973276056d7f',
	measurementId: 'G-L9RTFPS19T'
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
