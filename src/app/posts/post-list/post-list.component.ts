import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-post-list',
  templateUrl: './post-list.component.html',
  styleUrls: ['./post-list.component.css']
})
export class PostListComponent  {

  @Input() posts = [];
  // posts = [
  //   { title: 'A post', content: 'this is a post\'s content' },
  //   { title: 'Another post', content: 'this is a post\'s content' },
  //   { title: 'Another post', content: 'this is a post\'s content' },
  //   { title: 'Another post', content: 'this is a post\'s content' }
  // ]
}
