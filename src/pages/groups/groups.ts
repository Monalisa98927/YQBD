import {Component} from '@angular/core';
import {IonicPage, NavController, NavParams} from 'ionic-angular';
import { mockGroups } from '../../mockData/mockGroups';
import { GroupDetailsPage } from './groupDetails';

@Component({
  selector: 'page-groups',
  templateUrl: 'groups.html',
})
export class GroupsPage {
  group = mockGroups;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad GroupsPage');
  }

  viewGroupDetails(group) {
    this.navCtrl.push(GroupDetailsPage,{ group : group });
  }

  deleteGroup(group){
     
  }

}