import  './Register.modules.scss'
import {SignUpImage} from "../../../assets/images/index.js";
import {RegisterForm} from "../../../components/auth/register-form/RegisterForm.jsx";
export const Register = () => {
	return (
		<main className={"register"}>
			<img src={SignUpImage} alt={"register form"}/>
			<div className={"right-side"}>
				<RegisterForm/>
			</div>
		</main>
	)
}