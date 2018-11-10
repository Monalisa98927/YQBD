import { Component, Input } from '@angular/core';
import { NavController,NavParams, AlertController } from 'ionic-angular';
import { mockGroups } from '../../mockData/mockGroups';
import { TaskDetailPage } from '../chat/chat';

@Component({
  selector: 'page-entryForm',
  templateUrl: 'entryForm.html',
  styles: ['./entryForm.scss'],
})
export class EntryFormPage {

    task;
    groups=mockGroups;
    public isEntry : boolean = false;

  constructor(public navCtrl: NavController,
            public navParams: NavParams,
            public alertCtrl: AlertController,
             ) {
         this.task=navParams.data.task;
        
  }
  
  submitForm(task){
    this.isEntry = true;
    console.log(this.isEntry);
    this.navCtrl.push(TaskDetailPage,{ task:task })
  }
}
