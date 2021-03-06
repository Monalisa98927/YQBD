import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { TabsPage } from '../tabs/tabs';
import { RegisterPage } from './register';

@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
  styles: ['./login.scss'],
})
export class LoginPage {


  constructor(public navCtrl: NavController) {

  }

  enterHome(){
    this.navCtrl.push(TabsPage);
  }

  register(){
    this.navCtrl.push(RegisterPage);
  }
}
