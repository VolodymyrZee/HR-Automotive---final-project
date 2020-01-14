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
            <h5 className="card-title">{user.firstName} {user.lastName}</h5>
            <p className="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul className="list-group list-group-flush">
            <li className="list-group-item">{user.email}</li>
            
            <li className="list-group-item">{user.telephone}</li>
        </ul>
        <div className="card-body">
            <a href="www.linkedin.com" className="card-link">LinkedIn</a>
            <a href="www.facebook.com" className="card-link">Facebook</a>
        </div>
        </div>
     )
     }
)
       
       );
    }
    }

export default UserLife;