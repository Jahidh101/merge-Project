import React from 'react';
import { useState, useEffect } from 'react';
import axios from 'axios';

const Login = () =>{
    const initialValues = {username:"", password:""};
    const [formValues, setFormValues] = useState(initialValues);
    const [isSubmitted, setIsSubmitted] = useState(false);
    const [successMsg, setSuccessMsg] = useState();
    const [errorMsg, setErrorMsg] = useState();


    const hStyle = { color: 'red' };
    const sStyle = { color: 'green' };


    const handleChange = (e) => {
        const {name, value} = e.target;
        setFormValues({...formValues, [name]:value});
    };

    const handleSubmit = (e) =>{
        e.preventDefault();
        setIsSubmitted(true);
    };

    useEffect(() => {
        //console.log(formErrors);
        if (isSubmitted){
            axios.post("http://127.0.0.1:8000/api/login/user", formValues).then((resp)=>{
            localStorage.setItem('authToken', resp.data.authToken); 
            localStorage.setItem('userType', resp.data.userType);  
            console.log(localStorage.getItem('authToken'));
            console.log(localStorage.getItem('userType'));
            setSuccessMsg(resp.data.successMsg);  
            setErrorMsg(resp.data.errorMsg);     
        },(err)=>{

        });
        }
    }, [isSubmitted]);

    return(
            
            <div>
                <div class="main">
                    <div class="container">
                        <div class="signup-content">
                            
                            <div class="signup-form">
                                <form onSubmit={handleSubmit}>
                                    <h2>Login</h2>
                                    <h3 style={sStyle}>{successMsg}</h3>
                                    <h3 style={hStyle}>{errorMsg}</h3>
                                    <div class="form-group">
                                        <label for="pincode">Username :</label>
                                        <input type="text" placeholder="Enter Username" name="username" value={formValues.username} onChange={handleChange}/><br/>
                                    </div>
                                    <div class="form-group">
                                        <label for="pincode">Password :</label>
                                        <input type="password" placeholder="Enter Password" name="password" value={formValues.password} onChange={handleChange}/><br/>
                                    </div>
                                    <div class="form-submit">
                                        <input type="submit" value="Login" class="submit" name="submit" id="submit" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
    );
}
export default Login;