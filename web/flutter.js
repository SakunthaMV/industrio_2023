// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyA6GoeCI1emxEBL2UME3qCKCepD5FSBYcQ",
  authDomain: "industrio-2023-a0149.firebaseapp.com",
  projectId: "industrio-2023-a0149",
  storageBucket: "industrio-2023-a0149.appspot.com",
  messagingSenderId: "244375074954",
  appId: "1:244375074954:web:c9969c9cda07856521d573",
  measurementId: "G-3GY2MGMVR9"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);