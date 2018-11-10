import { Component } from '@angular/core';

import { ContactPage } from '../contact/contact';
import { HomePage } from '../home/home';
import { GroupsPage } from '../groups/groups';
@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab1Root = HomePage;
  tab2Root = GroupsPage;
  tab3Root = ContactPage;

  constructor() {

  }
}
