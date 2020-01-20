import React, { Component } from 'react';
import pic5 from '../../images/pic5.jpg';

class ThankYou extends Component {
    render() {
        return (
           
            <div class="thx">
                <h3>Thank You For Signing Up!</h3>
                <h3>We appreciate Your Buisiness!</h3>
                
            <img src={pic5} style ={{ width:'105%' }}/>
           
            </div>
            
            
        );
    }
}

export default ThankYou;