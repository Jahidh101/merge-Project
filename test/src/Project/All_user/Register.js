import React from 'react';
import { useState } from 'react';
import axios from 'axios';

const Test = () =>{
    const initialValues = {name:'', gender:"", userTypes_id:"", email:"", address:"", username:"", password:"", confirmPassword:""};
    const [formValues, setFormValues] = useState(initialValues);
    const [successMsg, setSuccessMsg] = useState("");
    const [errorMsg, setErrorMsg] = useState("");
    const [apiError, setApiError] = useState("");

    const hStyle = { color: 'red' };
    const sStyle = { color: 'green' };


    const handleChange = (e) => {
        const {name, value} = e.target;
        setFormValues({...formValues, [name]:value});
    };

    const handleSubmit = (e) =>{
        e.preventDefault();
        axios.post("http://127.0.0.1:8000/api/register", formValues).then((resp)=>{ 
            //debugger;  
        setSuccessMsg(resp.data.successMsg);  
        setErrorMsg(resp.data.errorMsg);  
        setApiError(resp.data);
        },(err)=>{

        });
        
    };

    
    return(
                <div class="main">
                    <div class="container">
                        <div class="signup-content">
                            
                            <div class="signup-form">
                                <form onSubmit={handleSubmit} class="register-form" id="register-form">
                                    <h2>Registration</h2>
                                    <h3 style={hStyle}>{apiError}</h3>
                                    <div class="form-group">
                                        <label for="address">Name :</label>
                                        <input type="text" placeholder="Enter name" name="name" value={formValues.name} onChange={handleChange}/><br/> 
                                    </div>
                                    <div class="form-group" value={formValues.gender} onClick={handleChange}>
                                        <label for="gender" class="radio-label">Gender :</label><br/>
                                        <div class="form-radio-item">
                                            <input type="radio" name="gender" id="male"/>
                                            <label for="male">Male</label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="gender" id="female"/>
                                            <label for="female">Female</label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="gender" id="other"/>
                                            <label for="other">Other</label>
                                            <span class="check"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                    <label for="userTypes_id">User type :</label>
                                        <div class="form-select">
                                            <select name="userTypes_id" id="userTypes_id" value={formValues.userTypes_id} onChange={handleChange}>
                                                <option value=""></option>
                                                <option value="3">patient</option>
                                            </select>
                                        <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="birth_date">Email :</label>
                                        <input type="text" placeholder="Enter Email" name="email" value={formValues.email} onChange={handleChange}/><br/>
                                    </div>
                                    <div class="form-group">
                                        <label for="pincode">Address :</label>
                                        <input type="text" placeholder="Enter address" name="address" value={formValues.address} onChange={handleChange}/><br/>
                                    </div>
                                    <div class="form-group">
                                        <label for="pincode">Username :</label>
                                        <input type="text" placeholder="Enter Username" name="username" value={formValues.username} onChange={handleChange}/><br/>
                                    </div>
                                    <div class="form-group">
                                        <label for="pincode">Password :</label>
                                        <input type="password" placeholder="Enter Password" name="password" value={formValues.password} onChange={handleChange}/><br/>
                                    </div>
                                    <div class="form-group">
                                        <label for="pincode">Confirm password :</label>
                                        <input type="password" placeholder="Confirm Password" name="confirmPassword" value={formValues.confirmPassword} onChange={handleChange}/><br/>
                                    </div>
                                    <h3 style={sStyle}>{successMsg}</h3>
                                    <h3 style={hStyle}>{errorMsg}</h3>
                                    <div class="form-submit">
                                        <input type="submit" value="Submit" class="submit" name="submit" id="submit" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
    );
}
export default Test;