import { LightningElement,track, wire } from 'lwc';
import getuserlist from '@salesforce/apex/HerokuUsersCtrl.getUsers';
export default class Userslistlwc extends LightningElement {
    @track columns = [
        { label: 'FirstName', fieldName: 'firstName' },
        { label: 'lastName', fieldName: 'lastName'}
    ];

    @track userlist;
    @track errorMessage;

    @wire(getuserlist) userdata ({data,error}){
        if(data){
            this.userlist=data;
        }
        else if (error){
            this.errorMessage = JSON.stringify(error);
        }
    }


}