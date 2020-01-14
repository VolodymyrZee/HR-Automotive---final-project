import React, { Component } from 'react';
import pic1 from '../../images/pic1.jpg';
import pic2 from '../../images/pic2.jpg';
class AboutUs extends Component {
    render() {
        return (
            <div className="w3-content" style={{'max-width':'1200px'}}>
                <div className="w3-panel">
                   <i className="w3-xlarge fa fa-bars"></i> 
                </div>
                {/* First Grid:Logo & About */}
                <div className="w3-row">
                    <div className="w3-half w3-container">
                        <h1 className="w3-xxlarge w3 text-light-grey">Hello</h1>
                        <h1 className="w3-xxlarge w3 text-grey">We are</h1>
                        <h1 className="w3-jumbo">HR Automotive</h1>
                    </div>
                    <div className="w3-half w3-container w3-xlarge w3-text-grey">
                        <p className="">We specialize in European vehicles and we can guarantee an exceptional experience while providing quality car maintenance and repairs.</p>
                        <p>Your experience with HR Automotive Services will be unlike any other because of our quick, reliant, and efficient work.</p>
                    </div>
                </div>
                {/* Second Grid: Resent*/}
                <div className="w3-panel w3-text-grey">
                    <h4>MOST RECENT WORK:</h4>
                </div>
                <div className="w3-row">
                    <div className="w3-half w3-contsainer">
                        <img src={pic2} style ={{ width:'100%'}}/>
                    </div>
                    <div className="w3-half w3-contsainer">
                        <img src={pic1} style ={{ width:'100%'}}/>
                        <p className="w3-xlarge w3-text-grey">
                            Egnine, Transmission, Suspension, Brakes, Perfomance and much more. We can do it all!
                        </p>
                    </div>
                </div>
            </div>
        );
    }
}

export default AboutUs;