// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyA50MvN9UizyjpNzhXsSBuV__-ANQ_EIrY",
  authDomain: "industrio-2023.firebaseapp.com",
  projectId: "industrio-2023",
  storageBucket: "industrio-2023.appspot.com",
  messagingSenderId: "719376501367",
  appId: "1:719376501367:web:019ed3f28250c51cdcd472",
  measurementId: "G-JCFQSFRCL9"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);