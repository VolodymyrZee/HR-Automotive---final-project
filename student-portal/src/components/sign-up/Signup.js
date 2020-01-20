import React, { Component } from 'react';
import Axios from 'axios';

class Signup extends Component {
    state={
        user: {
            firstName: '',
            lastName: '',
            email: '',
            telephone: '',
            password: ''
        }
    }

submitHandler = (event) => {
    event.preventDefault();
    //console.log(this.state.student);
   
    //We will add logic to call our spring backend app here
    
    Axios.post('http://localhost:8080/submitUserDetails', this.state.user)
    .then(response =>{
        //navigate to a ----thank you--- component

        this.props.history.push('/thankyou');
    }).catch(error => {;
        //display some error messages
    })
}

handleChange = (event) => {
const value = event.target.value;
const name = event.target.name;
const tempUser = {...this.state.user};
tempUser[name] = value;
this.setState (
    {
    user: tempUser
    }
)
}

    render() {
        return (
                            <div class="signUp">
                                
                               
                                <form onSubmit ={this.submitHandler} className="sign-up-form container">
                                    <h3 className="blockquote text-center">Sign up below</h3>
              
                    <div className="row mb-1">
                    <div className="col">
                    <input className="row" type="text" onChange={this.handleChange} value={this.state.user.firstName} name="firstName" className="form-control" placeholder="First Name"/>
                    </div>
                    <div className="col">
                    <input className="row" type="text" onChange={this.handleChange} value={this.state.user.lastName} name="lastName" className="form-control" placeholder="Last Name"/>
                    </div>
                    </div>
                    <div class="row mb-1">
                    <div className="col">
                    
                    <input className="row" type="text" onChange={this.handleChange} value={this.state.user.telephone} name="telephone" className="form-control" placeholder="Telephone"/>
                    </div>
                    </div>
                    <div class="row mb-3">
                    <div className="col">
                    <input className="row" type="email" onChange={this.handleChange} value={this.state.user.email} name="email" className="form-control" placeholder="Email"/>
                    </div>
                    <div className="col">
                    <input className="row" type="tpassword" onChange={this.handleChange} value={this.state.user.password} name="password" className="form-control" placeholder="Password"/>
                    </div>
                    </div>
                   
               <button type="submit" class="btn btn-success btn btn-primary btn-lg btn-block">Sign Up</button>
                </form>
                            </div>
            );
    }
}

export default Signup;