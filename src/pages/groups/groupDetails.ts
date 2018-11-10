import {Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { FormBuilder } from '@angular/forms';
import { mockGroups } from '../../mockData/mockGroups';

@Component({
  templateUrl: 'groupDetails.html',
  styles: ['./groupDetails.scss']
})

export class GroupDetailsPage {

//@ViewChild(Content) content: Content;
group = mockGroups;
constructor(public navCtrl: NavController, 
            public navParams: NavParams,
            public formBuilder: FormBuilder) {
                this.group=navParams.data.group;
            }

   


}