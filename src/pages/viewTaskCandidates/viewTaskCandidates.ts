import { FormBuilder } from '@angular/forms';
import {Component} from '@angular/core';
import { NavController,NavParams} from 'ionic-angular';

@Component({
  templateUrl: 'viewTaskCandidates.html',
  styles: ['./viewTaskCandidates.scss'],
})

export class ViewTaskCandidatesPage {
  
task;
constructor(public navCtrl: NavController, 
            public navParams: NavParams,
            public formBuilder: FormBuilder) {
                this.task=navParams.data.task;
            }

}
