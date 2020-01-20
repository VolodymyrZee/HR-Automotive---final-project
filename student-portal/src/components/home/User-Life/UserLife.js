import React, { Component } from 'react';
import  Axios  from 'axios';

class UserLife extends Component {
    state = {
        users: []

        
    }

    componentDidMount() {
        Axios.get('http://localhost:8080/findAll')
        .then(response => {
            this.setState(
                {
                    users: response.data
                }
            )
        })
    }

    
    
    
    
    
    
    
    
    render() {
        
        
        
        
        return (


this.state.users.map((user, index) => {



     return (             
            <div className="card" style={ {width: '18rem'} }>
         
            <div className="card-body">
            <h4 className="card-title">{user.firstName} {user.lastName}</h4>
            
        </div>
        <ul className="list-group list-group-flush">
            <li className="list-group-item">{user.email}</li>
            <li className="list-group-item">{user.telephone}</li>
            <br/>
            <p className="card-text"><h5>Vehicle info</h5></p>
            <li className="list-group-item">Year: {user.carYear}</li>
          
            <li className="list-group-item">Make: {user.carMake}</li>
            <li className="list-group-item">Model: {user.carModel}</li>
            <li className="list-group-item">Color: {user.carColor}</li>
            <li className="list-group-item">License Plate: {user.carLicensePlate}</li>
        </ul>
        
        </div>
     )
     }
)
       
       );
    }
    }

export default UserLife;