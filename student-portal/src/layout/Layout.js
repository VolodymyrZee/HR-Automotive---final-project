import React, { Component } from 'react';
import ThankYou from '../components/thankyou/ThankYou';
import Header from '../components/header/Header';
import Signup from '../components/sign-up/Signup';
import AboutUs from '../components/aboutUs/AboutUs';
import { Route, withRouter } from 'react-router-dom';
import Home from '../components/home/Home';

class Layout extends Component {
    render() {
        let routes = (
            <React.Fragment>
<Route path="/sign-up" component={Signup}/>
     <Route path="/about-us" component={AboutUs}/>
     <Route path="/home" component={Home}/>

            </React.Fragment>
        );
        if(localStorage.getItem("loggedInUser")){
            routes = (
                <React.Fragment>
<Route exact path="/" component={Home}/>
<Route path="/home" component={Home}/>
<Route path="/about-us" component={AboutUs}/>


                </React.Fragment>
            )
        }
        return (
            <div>
      <Header {...this.props}/>  
      {routes}
      {/* always keep Header like, not routed this  */}
     
     <Route exact path="/" component={Signup} />
     
    
     {/* <Route path="/about-us" component={AboutUs}/> */}
     <Route path="/thankyou" component={ThankYou}/>
     
     
     
      

    </div>
        );
    }
}

export default withRouter(Layout);