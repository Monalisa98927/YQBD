import {Component, Input } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { mockTasks } from '../../mockData/mockTasks';
import { FormBuilder } from '@angular/forms';
import { mockTypes } from '../../mockData/mockTypes';
import { EntryFormPage } from '../entryForm/entryForm';
import { ViewTaskCandidatesPage } from '../viewTaskCandidates/viewTaskCandidates';

@Component({
  templateUrl: 'TaskDetail.html',
  styles: ['./chat.scss']
})

export class TaskDetailPage {

//@ViewChild(Content) content: Content;
task;
types = mockTypes;
isReleasedMyself : boolean = true;

constructor(public navCtrl: NavController, 
            public navParams: NavParams,
            public formBuilder: FormBuilder) {
                this.task=navParams.data.task;
            }

    openEntryForm(task){
      this.navCtrl.push(EntryFormPage,{ task : task });

    }

    viewCandidates(task){
      this.navCtrl.push(ViewTaskCandidatesPage,{task:task});
    }

}

@Component({
  template: `<ion-header>

  <ion-navbar>
    <ion-title>任务</ion-title>
  </ion-navbar>

</ion-header>

<ion-content padding>
    <ion-searchbar style="padding: 0 8px;
    min-height: 55px;
    border-top: 0.55px solid transparent;
    border-bottom: 0.55px solid rgba(0, 0, 0, 0.05);
    background: rgba(243, 245, 248, 0.863);
    margin-left: -28px;
    width: 110%;
    margin-top: -28px;
    margin-bottom: -18px;
    left: 10px; 
    top: 13px; 
    height: 4rem; 
    font-size: 1.8rem;" 
         (ionInput)="getItems($event)" placeholder="搜索"></ion-searchbar>
    <ion-list>
      <ion-item *ngFor="let item of items">
        {{ item }}
      </ion-item>
    </ion-list>
  <ion-list>
    <!-- <ion-list-header>Today</ion-list-header> -->
    <!-- 点击的时候跳转界面 -->
    <ion-item *ngFor="let task of tasks" (click)="openTaskDetailPage(task)">
      <ion-thumbnail style="width: 80px; height: 80px;" item-start>
        <img style="width: 80px; height: 80px;" [src]="task.imageUrl">
      </ion-thumbnail>
      <h2  style="color: black;">{{task.title}}</h2>
      <p>{{task.location}}</p>
      <p>{{task.ddl}}</p>
      <ion-note  style="color: #f70a0a;">{{task.pay}}</ion-note>
      <ion-badge style="margin-left: 120px; color: #fff;" item-end>{{task.state}}</ion-badge>
    </ion-item>

  </ion-list>

</ion-content>`,
   styles: ['./chat.scss']
})
export class ChatPage {
  tasks = [];
  types = mockTypes;
  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public nav: NavController) {
                this.tasks = mockTasks;
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ChatPage');
  }

  openTaskDetailPage(task) {
    this.nav.push(TaskDetailPage, { task: task });
  }

}
