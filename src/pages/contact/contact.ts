import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { ItemDetailsPage } from '../item-details/item-details';
import { mockTasks } from '../../mockData/mockTasks';
@Component({
  selector: 'page-contact',
  templateUrl: 'Contact.html',
  styles: ['./contact.scss'],
})
export class ContactPage {
  private myTask = mockTasks;
  public AboutMe : string = '我的信息';

  constructor(public navCtrl: NavController) {
 
  }
  myInfos = {
    "imageUrl": 'assets/imgs/1.jpg',
    "nickName": "lxy",
    "ID": "10165101110",
    "gender": "男",
    "number": 17701689978,
    "job": "学生"
  }

  itemSelected(item: string) {
    console.log("Selected Item", item);
  }

  itemTapped(event, item) {
    this.navCtrl.push(ItemDetailsPage, {
      item: item
    });
  }
}

