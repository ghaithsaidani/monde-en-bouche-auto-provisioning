import './Login.modules.scss'
import {LoginForm} from "../../../components/auth/login-form/LoginForm.jsx";
import {LoginImage} from "../../../assets/images/index.js";
import {Typography} from "@mui/material";
import { RiArrowGoBackLine } from 'react-icons/ri';

const Login = () => (
    <main className={"login"}>
        <div className={"left-side"}>
            <div className={"go-back-home"}>
                <RiArrowGoBackLine/>
                <a href={"/"}><Typography variant={"body1"}>Acceuil</Typography></a>
            </div>
            <LoginForm/>
        </div>
        <img src={LoginImage} alt={"login"}/>
    </main>
);

export default Login;
