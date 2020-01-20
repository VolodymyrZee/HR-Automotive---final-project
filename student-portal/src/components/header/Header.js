import React, { Component } from 'react';
import {Link} from "react-router-dom"
import Axios from 'axios';
class Header extends Component {

state ={
    user: {
        email: '',
        password: ''
    }
}

signOut =()=> {
    localStorage.removeItem("loggedInUser");
    this.props.history.push("/");
}



handleChange = (event) =>{
    const value = event.target.value;
    const name = event.target.name;
    const tempUser = {...this.state.user};
    tempUser[name] = value;
    this.setState(
        {
            user: tempUser
        }

    )
}

submitHandler = (event) => {
    event.preventDefault();
   
   Axios.post('http://localhost:8080/login', this.state.user)  // <=takes data that we try to send
    .then(response =>{    //we are expecting a response
       
        // need to update app that whi this loggedin user is 
        
         //navigate to a ----home page--- 
        
         localStorage.setItem("loggedInUser", response.data.email);

          
        this.props.history.push('/home');
    }).catch(error => {;
        //display some error messages
    })
}

    render() {
        let links = (
            <li className="nav-item active">
                                <Link className="nav-link" to="/sign-up">Sign up <span className="sr-only">(current)</span></Link>
                            </li>

        )
           let signInSignOutForm = (
            <form onSubmit ={this.submitHandler} className="form-inline mt-2 mt-md-0">
            <input onChange ={this.handleChange} value={this.state.email} name="email" className="form-control mr-sm-2" type="email" placeholder="Email" aria-label="Search" />
            <input onChange ={this.handleChange} value={this.state.password}name="password" className="form-control mr-sm-2" type="password" placeholder="Password" aria-label="Search" />
            <button className="btn btn-outline-success my-2 my-sm-0" type="submit"><span class="signIn">Sign In</span></button>
        </form>
           );

           if(localStorage.getItem("loggedInUser")){
               links = (
            <li className="nav-item active">
            <Link className="nav-link" to="/settings">Settings<span className="sr-only">(current)</span></Link>
        </li>
        )

               signInSignOutForm =  <button onClick ={this.signOut} className="btn btn-outline-success my-2 my-sm-0" type="submit">Sign Out</button>
           }


        return (
            
                <div className="margin-bottom-80">
                <nav className="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                    <Link className="navbar-brand" to="/">User Info</Link>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarCollapse">
                        <ul className="navbar-nav mr-auto">
                            
                            {links}
                            <li class="aboutUS" className="nav-item">
                                <Link  className="nav-link" to="about-us">Abous Us</Link>
                            </li>
                            
                        </ul>
                        <a class="active" href="tel:+1-314-426-2020" data-tracking-element-type="2" jslog="56037; track:impression,click" itemprop="telephone" data-enable-ga="true" data-ga-prefix="action-list"><span class="active1">•Call now</span></a>
                   

                        <a class="active" href="https://www.google.com/maps/dir//HR+Automotive+Service/data=!4m8!4m7!1m0!1m5!1m1!1s0x87df33d1f9382f83:0xf4e691658e23f97c!2m2!1d-90.3832698!2d38.6879243" data-tracking-element-type="5" jslog="56039; track:impression,click" itemprop="hasMap" data-enable-ga="true" data-ga-prefix="action-list"><span class="active2">•Get directions</span></a>
                        
                        
                 
                 {signInSignOutForm}
                        
                    </div>
                </nav>
            </div>

        
        );
    }
}

export default Header;