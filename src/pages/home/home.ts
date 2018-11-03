import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { mockTasks } from '../../mockData/mockTasks';
import { TaskDetailPage } from '../chat/chat';

@Component({
  templateUrl: 'home.html'
})
export class HomePage {

  public AboutTask : string = '任务分类';

  myInfos = {
    "imageUrl": 'assets/imgs/1.jpg',
    "nickName": "lxy",
    "ID": "10165101110",
    "gender": "男",
    "number": 17701689978,
    "job": "学生"
  }

  myTask=mockTasks;

  slides = [
    {
      "title": "欢迎来到有求必达任务交互平台!",
      "description": "The <b>Ionic Component Documentation</b> showcases a number of useful components that are included out of the box with Ionic.",
      "image": "assets/imgs/3.jpg",
    },
    {
      "title": "在这里，你将邂逅成千上百种人生体验...",
      "description": "<b>Ionic Framework</b> is an open source SDK that enables developers to build high quality mobile apps with web technologies like HTML, CSS, and JavaScript.",
      "image": "assets/imgs/3.jpg",
    },
    {
      "title": "还在等什么，赶快加入我们~",
      "description": "The <b>Ionic Cloud</b> is a cloud platform for managing and scaling Ionic apps with integrated services like push notifications, native builds, user auth, and live updating.",
      "image": "assets/imgs/3.jpg",
    }
  ];

  constructor(public navCtrl: NavController, 
    public navParams: NavParams) {
        
    }

  openTaskDetailPage(task) {
    this.navCtrl.push(TaskDetailPage, { task: task });
  }

}